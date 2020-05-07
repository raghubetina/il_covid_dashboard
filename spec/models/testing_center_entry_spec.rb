require 'rails_helper'

RSpec.describe TestingCenterEntry, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:testing_center) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
