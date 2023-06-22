require_relative File.join(__dir__, 'app')

require_relative './app'

def main
  app = App.new
  app.run
end

main