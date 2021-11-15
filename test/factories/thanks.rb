FactoryBot.define do
  factory :thank do
    content { Faker::Hipster.paragraph(sentence_count: rand(20..40)) }
  end
end
