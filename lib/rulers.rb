require "rulers/version"

module Rulers
  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
        ["Hello from Ruby on Rulers version: #{Rulers::VERSION}"]]
    end
  end
end
