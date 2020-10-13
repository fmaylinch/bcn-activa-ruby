##
# This class was named Article2 to avoid conflict with Article in db/models.rb
#
class Article2
  attr_reader :title, :text, :image, :likes
  def initialize(title, text, image, likes)
    @title = title
    @text = text
    @image = image
    @likes = likes
  end
end

##
# Loads articles from a "database"
#
class ArticleStore

  def load

    lines = File.readlines("db/articles.csv")

    # This code does the same as the commented block below
    lines.map do |line|
      # https://ruby-doc.org/core-2.7.2/doc/syntax/assignment_rdoc.html#label-Array+Decomposition
      (title, text, likes, image) = line.split(",")
      Article2.new(title, text, image, likes.to_i)
    end

=begin
    result = []

    for line in lines
      article_data = line.split(",")
      title = article_data[0]
      text = article_data[1]
      image = article_data[2]
      article = Article2.new(title, text, image)
      result << article
    end

    result
=end
  end
end