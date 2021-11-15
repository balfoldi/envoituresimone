FactoryBot.define do
  factory :partner do
    name { Faker::Games::Zelda.item  }
    description { Faker::Hipster.paragraph(sentence_count: rand(6..20)) }
  end
end
