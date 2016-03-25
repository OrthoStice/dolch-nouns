class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :student
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :quizzes, [:user_id, :created_at]
  end
end
