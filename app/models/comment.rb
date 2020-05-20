class Comment < ApplicationRecord
  validates :name,    presence: true, length: { maximum: 10 }
  validates :want,    length: { maximum: 100 }
  validates :reward,  length: { maximum: 100 }
  validates :contact, length: { maximum: 200 }

  belongs_to :item
end
