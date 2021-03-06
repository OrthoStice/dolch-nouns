class Quiz < ActiveRecord::Base
  belongs_to :user 
  has_one :quiz_score
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :student, presence: true, length: { maximum: 40 }
end
