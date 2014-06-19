care_arrangements_fields = [
  Field.new({"name" => "child_caregiver_status",
             "type" => "select_box",
             "display_name_all" => "Is this a same caregiver as was previously entered for the child?",
             "option_strings_text_all" => "Yes\nNo",
           }),
  Field.new({"name" => "child_caregiver_reason_change",
             "type" => "select_box",
             "display_name_all" => "If this is a new caregiver, give the reason for the change",
             "option_strings_text_all" =>
                                  ["Abuse & Exploitation",
                                    "Death of Caregiver",
                                    "Education",
                                    "Ill health of caregiver",
                                    "Other",
                                    "Poverty",
                                    "Relationship Breakdown"].join("\n"),
            }),
  Field.new({"name" => "care_arrangements_type",
             "type" => "select_box",
             "display_name_all" => "What are the child's current care arrangements?",
             "option_strings_text_all" =>
                                  ["Stays with related caregiver", 
                                   "Stays with unrelated caregiver",
                                   "Residential Care Center",
                                   "Child Headed Household", 
                                   "Lives with peers/other children",
                                   "Independent Living Other (Please specify):"].join("\n"),
            }),
  Field.new({"name" => "care_arrangements_type_notes",
             "type" => "textarea",
             "display_name_all" => "Care Arrangement Notes"
            }),
  Field.new({"name" => "care_agency_name",
             "type" => "text_field",
             "display_name_all" => "Name of Agency Providing Care Arrangements"
            }),
  Field.new({"name" => "name_caregiver",
             "type" => "text_field",
             "display_name_all" => "Name of Current Caregiver"
            }),
  Field.new({"name" => "relationship_caregiver",
             "type" => "select_box",
             "display_name_all" => "Relationship of the Caregiver to the Child",
             "option_strings_text_all" =>
                                  ["Mother", 
                                   "Father", 
                                   "Aunt", 
                                   "Uncle",
                                   "Grandmother",
                                   "Grandfather",
                                   "Brother", 
                                   "Sister",
                                   "Husband", 
                                   "Wife",
                                   "Partner", 
                                   "Other Family", 
                                   "Other Nonfamily"].join("\n"),
            }),
  Field.new({"name" => "caregiver_id_type_and_no",
             "type" => "text_field",
             "display_name_all" => "Caregiver's Identification - Type and Number"
            }),
  Field.new({"name" => "caregiver_age",
             "type" => "numeric_field",
             "display_name_all" => "Caregiver's Age"
            }),
  Field.new({"name" => "address_caregiver",
             "type" => "textarea",
             "display_name_all" => "Address where the child is currently living?"
            }),
  Field.new({"name" => "location_caregiver",
             "type" => "text_field",
             "display_name_all" => "Caregiver's Location"
            }),
  Field.new({"name" => "telephone_caregiver",
             "type" => "text_field",
             "display_name_all" => "Caregiver's Telephone"
            }),
  Field.new({"name" => "care_arrangement_started_date",
             "type" => "date_field",
             "display_name_all" => "When did this care arrangement start?"
            }),
  Field.new({"name" => "caregiver_location_status",
             "type" => "select_box",
             "display_name_all" => "Is the caregiver's current location temporary",
             "option_strings_text_all" => "Yes\nNo",
           }),
  Field.new({"name" => "address_caregiver_future",
             "type" => "textarea",
             "display_name_all" => "If yes, what is the future address?"
            }),
  Field.new({"name" => "location_caregiver_future",
             "type" => "text_field",
             "display_name_all" => "What is the future location?"
            }),
  Field.new({"name" => "telephone_caregiver_future",
             "type" => "text_field",
             "display_name_all" => "What is the future telephone?"
            }),
  Field.new({"name" => "caregiver_willing_to_continue",
             "type" => "select_box",
             "display_name_all" => "Is caregiver willing to continue taking care of the child?",
             "option_strings_text_all" => "Yes\nNo",
           }),
  Field.new({"name" => "caregiver_willing_to_continue_for_how_long",
             "type" => "text_field",
             "display_name_all" => "If yes, for how long?"
            }),
  Field.new({"name" => "caregiver_know_family",
             "type" => "select_box",
             "display_name_all" => "Does the caregiver know the family of the child?",
             "option_strings_text_all" => "Yes\nNo",
           }),
  Field.new({"name" => "other_information_from_caregiver",
             "type" => "textarea",
             "display_name_all" => "Other information from the caregiver about the child and his/her family"
            })
]

FormSection.create_or_update_form_section({
  :unique_id => "care_arrangements",
  "visible" => true,
  :order => 8,
  "editable" => true,
  :fields => care_arrangements_fields,
  :perm_enabled => true,
  "name_all" => "Care Arrangements",
  "description_all" => "Care Arrangements"
})