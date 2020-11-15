
require_relative '../lib/scrapper.rb'
require 'colorize'

def intro
  puts ' '
  puts '*' * 40
  puts 'Welcome User'.green
  puts 'Initiating Scrap'.red
  puts ' '
  puts '*' * 40
end

def results_display
  scrap = Scrapper.new
  final_hotels = scrap.store
  final_hotels.each do |x|
    puts 'Press any key or enter to continue'.green
    puts 'press t followed by enter to stop'.green
    response = gets.chomp
    break if response == 't'

    puts "Hotel Name: #{x[:name]}".red
    puts "Price per night: #{x[:price]}".yellow
    puts "Available amenities: #{x[:amenities]}".green
    puts "Booking URL: #{x[:book]}".blue
    puts '*' * 40
    puts ' '
    puts '*' * 40
  end
end

intro
results_display
