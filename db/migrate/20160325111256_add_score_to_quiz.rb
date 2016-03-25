class AddScoreToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :score, :integer
  end
end
