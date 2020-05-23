class Design < ApplicationRecord
  validates :title,    presence: true, length: { maximum: 14 }
  validates :name,     presence: true, length: { maximum: 10 }
  validates :id_image, presence: true
  validates :genre,    presence: true
  validates :theme,    presence: true

  has_many :likes
  # gem'refile'用
  attachment :id_image
  attachment :sample_image
  # セレクトボックス用データ
  enum genre: { clothes: 0, road: 1, wallpaper: 2, floor: 3, other: 4 }
  enum theme: { natural: 0, fancy: 1, sporty: 2, cool: 3, country: 4, pop: 5, oriental: 6, gorgeous: 7, modern: 8, old: 9, public: 10 }
end
