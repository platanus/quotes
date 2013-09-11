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

  describe "#add_tag" do
    before do
      @quote = create(:quote)
      @quote.add_tag("joke")
    end

    it "adds a tag" do
      expect(@quote.tags.first.name).to eq("joke")
    end

    it "ignores same tag" do
      @quote.add_tag("joke")
      expect(@quote.tags.count).to eq(1)
    end
  end

end
