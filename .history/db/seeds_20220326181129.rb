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
    irb(main):111:1*   count += 1
    irb(main):112:0> end