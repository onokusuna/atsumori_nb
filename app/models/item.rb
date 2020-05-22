class Item < ApplicationRecord
  validates :name,   presence: true, length: { maximum: 10 }
  validates :want,   presence: true, length: { in: 3..100 }
  validates :reward, presence: true, length: { in: 3..100 }

  has_many :comments
end
