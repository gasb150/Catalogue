module ApplicationHelper
  def current_authorize
el = "<span class='icon'><i class='fa fa-user'></i></span>"
  if current_user
  el += link_to 'Sign out', destroy_user_session_path, method: :delete, class: "navbar-item" 
  else
  el += link_to 'Sign in', user_session_path, class: "navbar-item" 
  el += link_to 'Register', new_user_registration_path, class: "navbar-item" 
  end
el.html_safe
  end


  def user_alter_element(element)
    el = ''
    if current_user
      el_class = element.class.to_s
      if el_class == 'Product'
       edit_path = edit_product_path(element)
      elsif el_class == 'Category'
        edit_path = edit_category_path(element)
      end
      el += link_to 'Edit', edit_category_path(element), class: "card-footer-item has-text-info	"
      el += link_to 'Destroy', element, method: :delete, data: { confirm: 'Are you sure?' }, class: "card-footer-item has-text-danger"
    end
    el.html_safe
   
    end

    def showImage(product)
      el = "<img src='https://source.unsplash.com/800x600/?{#{product.name}}' alt=#{product.name} >"
      el.html_safe
   end

end
