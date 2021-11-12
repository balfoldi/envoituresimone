class Article < ApplicationRecord
  belongs_to :rally
  
  default_scope { order(created_at: :desc) }
end
