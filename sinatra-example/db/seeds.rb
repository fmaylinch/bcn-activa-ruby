users = [
    {name: 'Jon', age: 25},
    {name: 'Jane', age: 20}
]

# User.destroy_all

users.each do |u|
  User.create(u)
end
