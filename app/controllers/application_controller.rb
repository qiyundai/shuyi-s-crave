class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_admin!
end
