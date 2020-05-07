class TestingCenter < ApplicationRecord
  # Direct associations

  has_many   :testing_center_entries,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
