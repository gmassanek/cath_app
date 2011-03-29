require 'spec_helper'

describe Gallery do
  it "should prevent duplicate gallery titles" do
    Factory(:gallery, :title=>'gallery1')
    Factory.build(:gallery, :title=>'gallery1').should_not be_valid
  end
  it "should allow multiple galleries" do
    Factory(:gallery)
    Factory.build(:gallery).should be_valid
  end
end

