class Recipe < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "400x400>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
