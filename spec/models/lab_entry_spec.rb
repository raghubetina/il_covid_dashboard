require 'rails_helper'

RSpec.describe LabEntry, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:lab) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
