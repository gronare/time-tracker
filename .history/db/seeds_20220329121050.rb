# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "csv"

csv = CSV.parse(File.read("scedule.csv"), headers: false)

lines = []

csv.each do |line|
  lines << line unless line[2]
end

lines.each do |line|
  Therapist.create(id: (line[0] + 1) )
end



csv.each do |line|
  unless line[2]
    next
  end
  
  Appointment.create(start: DateTime.parse(line[1]), duration: line[2], therapist_id: line[0])
end


csv.each_with_index do |line, index|
    unless line[2]
        next
    end

    begin
        DateTime.parse(line[1])
    rescue
        puts line
    end
end

Appointment.where(therapist_id: 0).order('start ASC').group_by{ |t| t.start.month }