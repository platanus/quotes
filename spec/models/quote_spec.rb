require 'spec_helper'

describe Quote do
  it "has a valid factory" do
    expect(build(:quote)).to be_valid
  end

  describe "Validations" do
    it { should validate_presence_of(:phrase)}
  end

  describe "Relations" do
    it { should have_and_belong_to_many(:tags)}
  end
end
