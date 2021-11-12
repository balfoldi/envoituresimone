FactoryBot.define do
  factory :article do
    title { Faker::Games::Zelda.item }
    content { Faker::Hipster.paragraph(sentence_count: rand(6..20)) }
    rally
  end
end
