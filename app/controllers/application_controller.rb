class ApplicationController < ActionController::Base
  before_action :set_current_user
  def set_current_user
    @current_user = User.find_by(name: session[:name])
  end
end
