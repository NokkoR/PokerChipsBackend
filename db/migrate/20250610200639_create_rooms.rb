class CreateRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :rooms do |t|
      t.integer :start_money
      t.integer :round_index

      t.timestamps
    end
  end
end
