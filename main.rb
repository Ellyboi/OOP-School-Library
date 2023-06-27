require_relative 'app'
require_relative 'menu'

def main
  app = App.new

  loop do
    display_menu
    choice = gets.chomp.to_i

    break unless process_choice(choice, app)

    puts "\n"
  end
end

main
