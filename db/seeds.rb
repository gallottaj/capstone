# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do
  user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone)
  user.save! 
end

goal1 = Goal.new(goal_name: "Promotion", due_date: "5/1/19", status: "in-progress")
goal1.save!

sub_goal1 = SubGoal.new(sg_name: "perfect attendance", sg_due_date: "12/31/18", sg_status: "started")
sub_goal1.save!





