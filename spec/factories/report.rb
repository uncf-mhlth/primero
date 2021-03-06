FactoryGirl.define do
  factory :report, :traits => [ :model ] do
    name_en "test_age_location_report"
    record_type "case"
    aggregate_by ["location_current1"]
    disaggregate_by ["age"]
    group_dates_by "date"
    group_ages true
    is_graph true
    module_ids ["primeromodule-cp"]
    filters [
      {
        "attribute" => "child_status",
        "value" => ["open"]
      },
      {
        "attribute" => "record_state",
        "value" => ["true"]
      }
    ]
  end
end