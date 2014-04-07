module ProfilesHelper

  def current_profile(user_id)
    @current_profile ||= Profile.find_by_user_id(user_id)
  end
end
