class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :student
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :sessions, [:user_id, :created_at]
  end
end
