class Lab < ApplicationRecord
  # Direct associations

  has_many   :lab_entries,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
