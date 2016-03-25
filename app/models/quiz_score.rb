class QuizScore < ActiveRecord::Base
  has_many :slides
  belongs_to :quiz
end
