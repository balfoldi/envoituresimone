class Rally < ApplicationRecord
  default_scope { order(created_at: :desc) }

  has_many :articles
end
