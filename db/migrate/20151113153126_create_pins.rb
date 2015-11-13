class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title, null: false
      t.string :image
      t.timestamps null: false
      t.references :user, index: true, foreign_key: true
    end
  end
end
