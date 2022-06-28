class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30}
  validates :content, presence: true
  validates :deadline, presence: true
  validates :status, presence: true
  validates :priority, presence: true
  enum status:{ not_started_yet: 0, in_progress: 1, completed: 2 }
  enum priority: { high: 0, middle: 1, low: 2 }
end
