# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
csv.each do |line|
  unless line[2]
    next
  end
  
  DateTime.parse(line[1])
end


csv.each_with_index do |line, index|
    unless line[2]
    irb(main):118:2*     next
    irb(main):119:1*   end
    irb(main):120:2*   begin
    irb(main):121:2*     DateTime.parse(line[1])
    irb(main):122:2*   rescue
    irb(main):123:2*     puts line
    irb(main):124:1*   end
    irb(main):125:0> end