# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.destroy_all

data = [{subject: "ip", title: "Do this week's reading", priority: "High"}]

data.each do |task_info|
	t = Task.new
	t.subject = task_info[:subject]
	t.title = task_info[:title]
	t.priority = task_info[:priority]
	t.duedate = task_info[:duedate]
	t.notes = task_info[:notes]
end

puts "There are now #{Task.count} tasks in the database"