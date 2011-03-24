require 'spec_helper'

describe AdminController do

  describe "GET 'dashboard'" do
    it "should be successful" do
      get 'dashboard'
      response.should be_success
    end
  end

end
