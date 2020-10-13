# See: https://webapps-for-beginners.rubymonstas.org/sinatra.html
# JSON: https://devblast.com/b/return-json-in-sinatra

require "sinatra"
require "erb"
require "json"
require "sinatra/activerecord"

require_relative "db/models"
require_relative "model/user"
require_relative "model/article"
require_relative "fake_sinatra"


# http://sinatrarb.com/configuration.html
# If you want to test from other computers in your local network.
# You can also use the command line option: -o "0.0.0.0"
#set :bind, '0.0.0.0'


# --- routes ---


# Simple route

get "/" do
  # displays the welcome.erb template inside the layout.erb
  erb :welcome
end


# Articles

article_store = ArticleStore.new

get "/articles" do
  # https://www.rubyguides.com/2015/12/ruby-time/
  now = Time.now.strftime("%d-%m-%Y")
  title = "Articles at #{now}"
  articles = article_store.load    # Loading from file with ArticleStore
  # articles = Article.all         # Loading from database with ActiveRecord
  erb :articles, { :locals => {
      "title" => title,
      "articles" => articles
  } }
end


# Users

user_service = UserService.new

get "/users/:id" do
  # user = User.find_by(id: params[:id])
  users = user_service.find_by_id(params[:id].to_i)
  users.map { |u|
    "#{u.id}, #{u.name}, #{u.age}, #{u.created_at.strftime(UserService::DATE_FORMAT)}, #{u.updated_at.strftime(UserService::DATE_FORMAT)}"
  }.join(", ")
end

get "/users" do
  # users = User.all
  users = user_service.all
  users.map { |u| "#{u.id} #{u.name} #{u.age}" }.join(", ")
end



# FakeSinatra

fake_sinatra = FakeSinatra.new

fake_sinatra.get "/welcome_fake" do
  fake_sinatra.erb :welcome, { }
end

# simulate that the browser opens this path
#puts fake_sinatra.simulate_http_get_request "/welcome_fake"
