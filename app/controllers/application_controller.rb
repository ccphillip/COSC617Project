class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  include ProfilesHelper
  include GroupsHelper

   def handle_unverified_request
    sign_out
    super
  end
end
