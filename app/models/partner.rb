class Partner < ApplicationRecord
  default_scope { order(created_at: :desc) }

  has_one_attached :logo

  def to_react
    self.attributes.merge(
      logo_url: self.logo.attached? && Rails.application.routes.url_helpers.rails_blob_path(self.logo, only_path: true),
      )
  end
end
