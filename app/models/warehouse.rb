class Warehouse < ApplicationRecord
  # Direct associations

  has_many   :warehouse_entries,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
