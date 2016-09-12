care_arrangements_fields = [
  Field.new({"name" => "care_arrangements_type",
             "type" => "select_box",
             "multi_select" => false,
             "disabled" => true,
             "display_name_all" => "Child is currently living",
             "option_strings_text_all" =>
                                  ["Stays with related caregiver",
                                   "Stays with unrelated caregiver",
                                   "Residential Care Center",
                                   "Child Headed Household",
                                   "Lives with peers/other children",
                                   "Independent Living",
                                   "Other (Please specify):"].join("\n"),
            }),
  Field.new({"name" => "care_arrangement_started_date",
             "type" => "date_field",
             "display_name_all" => "Date this care / living arrangement started",
             "disabled" => true,
            }),
  Field.new({"name" => "care_arrangement_siblings",
             "type" => "radio_button",
             "option_strings_text_all" => "Yes\r\nNo",
             "display_name_all" => "Are there siblings in the same care arrangement?",
             "disabled" => true
            }),
  Field.new({"name" => "name_caregiver",
             "type" => "text_field",
             "display_name_all" => "Caregiver's Name",
             "disabled" => true
            }),
  Field.new({"name" => "caregiver_nationality",
             "type" => "select_box",
             "multi_select" => true,
             "option_strings_source" => "lookup Country",
             "display_name_all" => "Citizenship",
             "disabled" => true
            }),
  Field.new({"name" => "caregiver_country_of_origin",
             "type" => "select_box",
             "multi_select" => false,
             "option_strings_source" => "lookup Country",
             "display_name_all" => "Country of Origin",
             "disabled" => true
            }),
  Field.new({"name" => "caregiver_sex",
             "type" => "select_box",
             "multi_select" => false,
             "option_strings_text_all" => "Male\r\nFemale",
             "display_name_all" => "Sex  ",
             "disabled" => true
            }),
  Field.new({"name" => "caregiver_age",
             "type" => "numeric_field",
             "display_name_all" => "Age  ",
             "disabled" => true
            }),
  Field.new({"name" => "caregiver_unhcr_id_no",
             "type" => "text_field",
             "display_name_all" => "UN ID Number",
             "disabled" => true
            }),
  Field.new({"name" => "caregiver_national_id_no",
             "type" => "text_field",
             "display_name_all" => "National ID number",
             "disabled" => true
            }),
  Field.new({"name" => "caregiver_ration_card_no",
             "type" => "text_field", 
             "display_name_all" => "Ration Card / Service ID Number",
             "disabled" => true
            }),
  Field.new({"name" => "caregiver_other_id_no",
             "type" => "text_field", 
             "display_name_all" => "Other ID Number",
             "disabled" => true
            }),
  Field.new({"name" => "telephone_caregiver",
             "type" => "text_field",
             "display_name_all" => "Telephone",
             "disabled" => true
            }),
  Field.new({"name" => "relationship_caregiver",
             "type" => "select_box",
             "multi_select" => false,
             "option_strings_source" => "lookup Country",
             "display_name_all" => "Relationship to child",
             "option_strings_text_all" => "Mother\nFather\nAunt\nUncle\nGrandmother\nGrandfather\nBrother\nSister\nHusband\nWife\nPartner\nOther Family\nOther Nonfamily",
             "disabled" => true
            }),
  Field.new({"name" => "name_other_caregiver",
             "type" => "text_field",
             "display_name_all" => "Caregiver's Name  ",
             "disabled" => true
            }),
  Field.new({"name" => "other_caregiver_nationality",
             "type" => "select_box",
             "multi_select" => true,
             "option_strings_source" => "lookup Country",
             "display_name_all" => "Citizenship  ",
             "disabled" => true
            }),
  Field.new({"name" => "other_caregiver_country_of_origin",
             "type" => "select_box",
             "multi_select" => false,
             "option_strings_source" => "lookup Country",
             "display_name_all" => "Country of Origin ",
             "disabled" => true
            }),
  Field.new({"name" => "other_caregiver_sex",
             "type" => "select_box",
             "multi_select" => false,
             "option_strings_text_all" => "Male\r\nFemale",
             "display_name_all" => "Sex   ",
             "disabled" => true
            }),
  Field.new({"name" => "other_caregiver_age",
             "type" => "numeric_field",
             "display_name_all" => "Age   ",
             "disabled" => true
            }),
  Field.new({"name" => "other_caregiver_unhcr_id_no",
             "type" => "text_field",
             "display_name_all" => "UN ID Number ",
             "disabled" => true
            }),
  Field.new({"name" => "other_caregiver_national_id_no",
             "type" => "text_field",
             "display_name_all" => "National ID number ",
             "disabled" => true
            }),
  Field.new({"name" => "other_caregiver_ration_card_no",
             "type" => "text_field", 
             "display_name_all" => "Ration Card / Service ID Number  ",
             "disabled" => true
            }),
  Field.new({"name" => "other_caregiver_other_id_no",
             "type" => "text_field", 
             "display_name_all" => "Other ID Number  ",
             "disabled" => true
            }),
  Field.new({"name" => "telephone_other_caregiver",
             "type" => "text_field",
             "display_name_all" => "Telephone  ",
             "disabled" => true
            }),
  Field.new({"name" => "relationship_other_caregiver",
             "type" => "select_box",
             "multi_select" => false,
             "option_strings_source" => "lookup Country",
             "display_name_all" => "Relationship to child ",
             "option_strings_text_all" => "Mother\nFather\nAunt\nUncle\nGrandmother\nGrandfather\nBrother\nSister\nHusband\nWife\nPartner\nOther Family\nOther Nonfamily",
             "disabled" => true
            }),
  Field.new({"name" => "child_caregiver_know_each_other",
             "type" => "radio_button",
             "display_name_all" => "Did the child and caregiver know each other before?",
             "option_strings_text_all" => "Yes\r\nNo",
             "disabled" => true
            }),
  Field.new({"name" => "child_caregiver_know_how_long",
             "type" => "textarea",
             "display_name_all" => "If yes, how and for how long?",
             "disabled" => true
            }),
  Field.new({"name" => "address_caregiver_future",
             "type" => "textarea",
             "display_name_all" => "If the current address is temporary, what future address do the child / caregiver plan to move to?",
             "disabled" => true
            }),
  Field.new({"name" => "location_caregiver_future",
             "type" => "select_box",
             "multi_select" => false,
             "option_strings_source" => "Location",
             "display_name_all" => "If the current address is temporary, what future location do the child / caregiver plan to move to?",
             "disabled" => true
            })          
]

current_care_arrangements = FormSection.create_or_update_form_section({
    :unique_id => "bia_current_care_arrangements_subform",
    "visible" => false,
    "is_nested" => true,
    :parent_form => "case",
    "editable" => false,
    :fields => care_arrangements_fields,
    :initial_subforms => 1,
    "name_all" => "Current Care Arrangement",
    "description_all" => "Current Care Arrangement"
})