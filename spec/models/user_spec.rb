require 'spec_helper'

describe User do
  before(:each) do
    @user = List.new(:name => "User Cucumber", :email => "user@cukes.example.com")
  end
  it "is valid with valid attributes" do
    @user.should be_valid
  end
  it "is not valid without a name" do
    @user.name = nil
    @user.should_not be_valid
  end
  it "is not valid without a email" do
    @user.email = nil
    @user.should_not be_valid
  end
  it "is not valid without a proper email" do
    @user.email = "email"
    @user.should_not be_valid
  end
end
