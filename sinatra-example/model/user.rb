##
# This class was named User2 to avoid conflict with User in db/models.rb
#
class User2
  attr_accessor :id, :name, :age, :created_at, :updated_at
  def initialize(id, name, age, created_at = Time.now, updated_at = Time.now)
    @id = id
    @name = name
    @age = age
    @created_at = created_at
    @updated_at = updated_at
  end

  # Static methods, to simulate ActiveRecord
=begin
  @@users = UserService.new.all

  def self.all
    @@users
  end

  def self.find_by_id(id)
    @@users.select { |u| u.id == id }
  end
=end
end

class UserService

  attr_reader :date_format

  # https://www.rubyguides.com/2017/07/ruby-constants/
  DATE_FORMAT = "%Y-%m-%d %H:%M:%S"

  def initialize
    @users = read_users_from_file
  end

  def all
    @users
  end

  def find_by_id(id)
    @users.select { |u| u.id == id }
  end

  private

  def create_hardcoded_users
    [ User2.new(1, "Jon", 25), User2.new(2, "Jane", 20) ]
  end

  def read_users_from_file
    # https://www.rubyguides.com/2015/05/working-with-files-ruby/
    lines = File.readlines("db/users.csv").map(&:chomp)
    lines.map do |line|
      # https://ruby-doc.org/core-2.7.2/doc/syntax/assignment_rdoc.html#label-Array+Decomposition
      (id, name, age, created_str, updated_str) = line.split(",")
      # https://www.rubyguides.com/2015/12/ruby-time/
      created_at = Time.strptime(created_str, DATE_FORMAT)
      updated_at = Time.strptime(updated_str, DATE_FORMAT)
      User2.new(id.to_i, name, age.to_i, created_at, updated_at)
    end
  end
end