require 'rails_helper'

RSpec.describe TestingCenter, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:center_type) }

    it { should have_many(:testing_center_entries) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
