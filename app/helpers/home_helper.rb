module HomeHelper

  def link_dashboard_title(record)
    model = model_name(record)
    send("#{model}_link_dashboard_title", record)
  end

  def link_dashboard_path(record)
    model = model_name(record)
    send("#{model}_path", record)
  end

  def index_link_dashboard_path(model)
    model = model_name_class(model).pluralize
    send("#{model}_path") + "?scope[flag]=single||flag"
  end

  private

  def case_link_dashboard_title(child)
    text = [child.short_id, child.name, field_format_date(child.created_at)]
    "#{text.compact.join(" - ")}"
  end

  def incident_link_dashboard_title(incident)
    text = [incident.short_id, incident.incident_location, field_format_date(incident.date_of_first_report)]
    "#{text.compact.join(" - ")}"
  end

  def model_name(record)
    model = record.class.name.underscore
    model = "case" if model == "child"
    model
  end

  def model_name_class(model_class)
    model = model_class.name.underscore
    model = "case" if model == "child"
    model
  end

end