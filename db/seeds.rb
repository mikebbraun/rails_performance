# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
CodeSchool.destroy_all

cs = CodeSchool.create(name: 'Wyncode')
cs2 = CodeSchool.create(name: 'Wyncode2')

100.times do |i|
  [cs, cs2].sample.users.create(name: i)
end

puts "#{CodeSchool.count} code schools created"
puts "#{User.count} users created"
