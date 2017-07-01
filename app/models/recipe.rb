class Recipe < ApplicationRecord

  has_many :ingredients
  has_many :directions

  accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
  accepts_nested_attributes_for :directions, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true

  validates :title, :description, :avatar, presence: true

  has_attached_file :avatar, styles: { medium: "400x400>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
