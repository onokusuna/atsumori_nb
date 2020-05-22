class Turnip < ApplicationRecord
  validates :name,        presence: true, length: { maximum: 10 }
  validates :price,       presence: true, length: { in: 2..3 }
  validates :islandpass,  presence: true, length: { is: 5 }
  validates :want,        presence: true, length: { in: 3..100 }
  validates :started_at,  presence: true
  validates :finished_at, presence: true
  # 自作バリデーション 現在時間よりも早いものは登録できない
  validate  :time_not_before_now

  def time_not_before_now
    errors.add(:started_at, "現在時刻より後の時刻を選択してください") if started_at.nil? || started_at < Time.current.ago(30.minutes)
    errors.add(:finished_at, "現在時刻より後の時刻を選択してください") if finished_at.nil? || finished_at < Time.current
  end
end
