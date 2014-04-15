require "rulers/version"

module Rulers
  class Application
    def call(env)
      `echo debug > debug.txt;`
      binding.pry!

      [200, {'Content-Type' => 'text/html'},
        ["Hello from Ruby on Rulers version: #{Rulers::VERSION}"]]
    end
  end
end
