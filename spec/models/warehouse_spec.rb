require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:warehouse_entries) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
