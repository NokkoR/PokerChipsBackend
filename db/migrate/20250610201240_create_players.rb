class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :start_name
      t.integer :order_number
      t.references :room, null: false
      t.integer :money
      t.integer :current_bet
      t.boolean :is_folded
      t.boolean :is_eliminated

      t.timestamps
    end
    
    add_foreign_key :players, :rooms
  end
end
