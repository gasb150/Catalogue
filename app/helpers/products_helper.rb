module ProductsHelper
  def user_alter_element(element)
  el = ''
  if current_user
    el_class = element.class.to_s
    if el_class == 'Product'
     edit_path = edit_product_path(element)
    elsif el_class == 'Category'
      edit_path = edit_category_path(element)
    end
    el += link_to 'Edit', edit_path
    el += link_to 'Destroy', element, method: :delete, data: { confirm: 'Are you sure?' }
  end
  el.html_safe
 
  end
end
