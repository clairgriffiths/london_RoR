require 'csv'

arr = []

puts "Company name: "
company = gets.chomp
p "Location: "
location = gets.chomp
p "Team size: "
size = gets.chomp
p "Company type (agency/ruby as internal service/ruby as product): "
type = gets.chomp
p "Rails? (Yes/No/Unsure) "
rails = gets.chomp
p "Recruitment webpage: "
recruit = gets.chomp
p "Notes: "
notes = gets.chomp

arr.push(company, location, size, type, rails, recruit, notes)

# Append the new company to CSV file
CSV.open("test.csv", "a+") do |csv|
  csv << arr
end