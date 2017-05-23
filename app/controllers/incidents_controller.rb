class IncidentsController < ApplicationController
  @model_class = Incident

  include IndexHelper
  include RecordFilteringPagination

  before_filter :normalize_violations, :only => [:create, :update]
  #TODO: Do we need to sanitize params?
  #TODO: Dp we need to filter_params_array_duplicates?

  include RecordActions

  def normalize_violations
    if params['incident'].present? && params['incident']['violations'].present?
      violations_subforms_control_keys = []
      # Save the keys for control inputs created when removing the last violation subform.
      params['incident']['violations'].each_key { |key| violations_subforms_control_keys << key if params['incident']['violations'][key].is_a? String }

      params['incident']['violations'].each do |k, v|
        if v.present?
          v.each do |sk, sv|
            has_values_present = sv.any? do |fk, fv|
              fk == 'unique_id' ? false : fv.present?
            end
            unless has_values_present
              params['incident']['violations'][k].delete(sk)
            end
          end
          params['incident']['violations'].delete(k) if !params['incident']['violations'][k].present?
        end
      end

      violations_subforms_control_keys.each {|key| params['incident']['violations'][key] = ""}
    end
  end

  def create_cp_case_from_individual_details
    authorize! :create, Child
    incident_id = params[:incident_id]
    individual_details_subform_section = params[:individual_details_subform_section]
    redirect_to new_case_path({module_id: PrimeroModule::CP, incident_id: incident_id, individual_details_subform_section: individual_details_subform_section })
  end

  private

  def extra_permitted_parameters
    super + ['violations']
  end

  def make_new_record
    Incident.new.tap do |incident|
      incident['module_id'] = params['module_id']

      if params['case_id'].present?
        case_record = Child.get(params['case_id'])
        if case_record.present?
          incident_map = Incident::DEFAULT_INCIDENT_MAPPING
          if params['from_module_id'].present?
            from_module = PrimeroModule.get(params['from_module_id'])
            if from_module.present?
              incident_map = from_module.field_map_fields
            end
          end
          incident.copy_survivor_information(case_record, incident_map, params['incident_detail_id'])
        end
      end
    end
  end

  def post_save_processing incident
    # This is for operation after saving the record.
    case_id = params["incident_case_id"]
    incident_details_id = params["incident_detail_id"]
    if case_id.present? && incident.valid?
      #The Incident is being created from a GBV Case.
      #track the incident in the GBV case (incident_links)
      case_record = Child.get(case_id)

      if incident_details_id.present?
        case_record.incident_links << {"incident_details" => incident_details_id, "incident_id" => incident.id, "incident_short_id" => incident.short_id }
      else
        case_record.incident_links << incident.id
      end
      #TODO what if fails to save at this point? should rollback the incident?
      case_record.save
    end
  end

  def initialize_created_record incident
    incident['status'] = Record::STATUS_OPEN if incident['status'].blank?
  end

  def redirect_after_update
    redirect_to incident_path(@incident, { follow: true })
  end

  def redirect_after_deletion
    redirect_to(incidents_url)
  end

  def record_filter filter
    #The 'Incident Recorder' should retrieve only GBV Incidents.
    filter["module_id"] = {:type => "single", :value => "#{PrimeroModule::GBV}"} if params["format"] == "incident_recorder_xls"
    filter
  end

  def update_record_with_attachments(incident)
    incident_params = filter_params(incident)
    incident.update_properties(incident_params, current_user_name)
    incident
  end

end
