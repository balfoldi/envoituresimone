FactoryBot.define do
  factory :rally do
    title { Faker::Games::Zelda.game }
    presentation { Faker::Hipster.paragraph(sentence_count: rand(1..5)) }
  end
end
