class User
  attr_accessor :id, :name, :age
  def initialize(id, name, age)
    @id = id
    @name = name
    @age = age
  end

  # Static methods, so simulate ActiveRecord
=begin
  @@users = [
      User.new(1, "Jon", 25),
      User.new(2, "Jane", 20)
  ]

  def self.all
    @@users
  end

  def self.find_by_id(id)
    @@users.select { |u| u.id == id }
  end
=end
end

class UserService

  def initialize
    @users = [
        User.new(1, "Jon", 25),
        User.new(2, "Jane", 20)
    ]
  end

  def all
    @users
  end

  def find_by_id(id)
    @users.select { |u| u.id == id }
  end
end