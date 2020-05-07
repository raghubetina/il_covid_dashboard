class TestingCenter < ApplicationRecord
  # Direct associations

  belongs_to :center_type

  has_many   :testing_center_entries,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
