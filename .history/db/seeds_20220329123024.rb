# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "csv"

csv = CSV.parse(File.read("schedules.csv"), headers: false)

csv.each_with_index do |line, index|
  next unless line[2]

  begin
    DateTime.parse(line[1])
  rescue
    puts "error on line #{index} unvalid #{line}"
    raise
  end
end; nil

lines = []

csv.each do |line|
  lines << line unless line[2]
end

lines.each do |line|
  Therapist.create(id: (line[0].to_i + 1), name: line[1])
end

csv.each do |line|
  next unless line[2]

  Appointment.create(start: DateTime.parse(line[1]), duration: line[2], therapist_id: line[0])
end
