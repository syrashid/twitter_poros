require_relative 'twitter_services/user_lookup'

class Router
  def initialize
    @running = true
  end

  def run
    puts ""
    puts "Welcome to Twitter POROS!"
    puts "----------------------------"
    puts ""
    while @running
      print_options
      choice = gets.chomp.to_i
      print `clear`
      perform_action(choice)
      print `clear`
    end
  end

  private

  def print_options
    puts "--------------------"
    puts "----- SERVICES -----"
    puts "--------------------"
    puts "1. Post to your account"
    puts "2. Retrieve stream for a user"
    puts "3. Exit"
    print "> "
  end

  def perform_action(choice)
    case choice
    when 1 then user_lookup
    when 2 then puts "You chose option 2"
    when 3 then stop!
    else puts "Please provide a valid option..."
    end
  end

  def stop!
    @running = false
  end

  def user_lookup
    TwitterServices::UserLookup.new('ShyRadish').call
  end
end











