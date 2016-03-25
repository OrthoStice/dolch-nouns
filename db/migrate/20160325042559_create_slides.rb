class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :pic
      t.string :word

      t.timestamps null: false
    end
  end
end
