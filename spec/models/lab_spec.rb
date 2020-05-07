require 'rails_helper'

RSpec.describe Lab, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:lab_entries) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
