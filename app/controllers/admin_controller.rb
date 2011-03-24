class AdminController < ApplicationController
  before_filter :login_required

  def dashboard
  end

end

