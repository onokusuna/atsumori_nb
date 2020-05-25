class Design < ApplicationRecord
  validates :title,    presence: true, length: { maximum: 14 }
  validates :name,     presence: true, length: { maximum: 10 }
  validates :id_image, presence: true
  validates :category, presence: true

  has_many :likes, dependent: :destroy
  # gem'refile'用
  attachment :id_image
  attachment :sample_image
  # セレクトボックス用データ
  enum category: { clothes: 0, road: 1, wallpaper: 2, floor: 3, other: 4 }
end
