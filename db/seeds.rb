[User, Rally, Article, Thank, Partner].each(&:delete_all)

rallies = FactoryBot.create_list(:rally, 3)

rallies.each do |rally|
  FactoryBot.create_list(:article, rand(5..20), rally: rally)
end

FactoryBot.create(:user, email: "admin@yopmail.com")

FactoryBot.create_list(:partner, 4)

FactoryBot.create_list(:thank, 2)
