class CreatePinnings < ActiveRecord::Migration
  def change
    create_table :pinnings do |t|
      t.references :pin
      t.references :board
    end
  end
end
