class Turnip < ApplicationRecord
  validates :name,        presence: true, length: { maximum: 10 }
  validates :price,       presence: true, length: { in: 2..3 }
  validates :islandpass,  presence: true, length: { is: 5 }
  validates :want,        presence: true, length: { in: 3..100 }
  validates :started_at,  presence: true
  validates :finished_at, presence: true
end
