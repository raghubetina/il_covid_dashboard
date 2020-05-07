class CenterType < ApplicationRecord
  # Direct associations

  has_many   :testing_centers,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
