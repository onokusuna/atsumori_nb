class Design < ApplicationRecord
  validates :title,    presence: true, length: { maximum: 14 }
  validates :name,     presence: true, length: { maximum: 10 }
  validates :id_image, presence: true
  validates :genre,    presence: true
  validates :theme,    presence: true

  has_many :likes
end
