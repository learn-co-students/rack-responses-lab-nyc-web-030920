class Application
    def call(env)
      return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
    end
   
    def pretty_response
      Time.now.hour >= 12 ?  ["<em>Good Afternoon!</em>"] : ["<em>Good Morning!</em>"]
    end
end