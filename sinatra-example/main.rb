# See: https://webapps-for-beginners.rubymonstas.org/sinatra.html
# JSON: https://devblast.com/b/return-json-in-sinatra

require "sinatra"
require "erb"

get "/" do
  # displays the welcome.erb template inside the layout.erb
  erb :welcome, { :locals => params }
end

get "/help" do
  "Help information"
end

get "/products" do
  "List of products"
end

get "/products/:id" do
  # displays the product_detail.erb template inside the layout.erb
  erb :product_detail, { :locals => params }
end
