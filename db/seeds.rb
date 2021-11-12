# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[User, Rally, Article].each(&:delete_all)

rallies = FactoryBot.create_list(:rally, 3)

rallies.each do |rally|
  FactoryBot.create_list(:article, rand(5..20), rally: rally)
end

FactoryBot.create(:user, email: "admin@yopmail.com")
