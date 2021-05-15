module UsersHelper
def username
  if current_user.nil?
      el = ''
    else 
      el = current_user.username
    end
  el.html_safe
  end
end