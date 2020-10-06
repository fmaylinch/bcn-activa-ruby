
##
# Simulates a very simple Sinatra application.
# You can register routes with +get+, load templates with +erb+
# and simulate HTTP calls with +simulate_http_get_request+.
#
class FakeSinatra

  def initialize
    @routes = {}  # map of { path => block }
  end

  ##
  # Registers +path+, so when +simulate_http_request+ is called
  # with that +path+, the +block+ will be called.
  #
  def get(path, &block)
    # https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/
    @routes[path] = block
  end

  ##
  # Returns the views/+file+.erb file content, inside the views/layout.erb.
  #
  def erb(file, options)
    # https://www.rubyguides.com/2015/05/working-with-files-ruby/
    result = File.read("views/layout.erb")
    template = File.read("views/#{file}.erb")
    # https://www.rubyguides.com/2019/07/ruby-gsub-method/
    result.gsub! "<%= yield %>", template
    result
  end

  def simulate_http_get_request(path)
    # puts "Calling path: #{path}"
    @routes[path].call
  end
end

