module GroupsHelper
  def group_admin(group, user)
    g = Membership.find_by_user_id_and_group_id(user, group)
    if g
      g.admin 
    else
      false
    end
  end
  
  def group_member(group, user)
    Membership.find_by_user_id_and_group_id(user, group)
  end
end
