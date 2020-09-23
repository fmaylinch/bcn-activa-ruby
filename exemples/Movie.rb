class Movie

    # Constructor
    def initialize(name, rating)
      @name = name
      @rating = rating
      @view_count = 0
    end
  
    # Functions
  
    def get_movie_info
      "#{@name} : #{@rating}* (views: #{@view_count})"
    end
  
    def watch
      @view_count += 1
    end
  
    def update_rating(rating)
      @rating = rating
    end
  
  end
  