require 'spec_helper'

describe List do
  before(:each) do
    @list = List.new(:name => "Mi lista", :user => mock_model("User"))
  end
  it "is valid with valid attributes" do
    @list.should be_valid
  end
  it "is not valid without a name" do
    @list.name = nil
    @list.should_not be_valid
  end
  it "is not valid without a user" do
    @list.user = nil
    @list.should_not be_valid
  end
end
