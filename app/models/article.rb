class Article < ApplicationRecord
  belongs_to :rally
  has_one_attached :image

  default_scope { order(created_at: :desc) }

  def to_react
    self.attributes.merge(
      image_url: self.image.attached? && Rails.application.routes.url_helpers.rails_blob_path(self.image, only_path: true),
      date: self.created_at.strftime("Publié le %d/%m/%Y"),
      )
  end
end
