class CreateQuizScores < ActiveRecord::Migration
  def change
    create_table :quiz_scores do |t|
      t.boolean :correct
      t.references :slide, index: true, foreign_key: true
      t.references :quiz, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
