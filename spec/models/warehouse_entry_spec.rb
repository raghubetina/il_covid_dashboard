require 'rails_helper'

RSpec.describe WarehouseEntry, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:warehouse) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
