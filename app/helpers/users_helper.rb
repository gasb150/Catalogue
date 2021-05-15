module UsersHelper
  def username
    el = if current_user.nil?
           ''
         else
           current_user.username
         end
    el.html_safe
  end
end
