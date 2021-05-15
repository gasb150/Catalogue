module ProductsHelper
 def showImage(product)
  el = "<img src='https://source.unsplash.com/800x600/?{#{product.name}}' alt=#{product.name} >"
  el.html_safe
end
end
