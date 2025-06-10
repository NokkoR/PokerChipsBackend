class AddFieldsToRoom < ActiveRecord::Migration[8.0]
  def change

    add_reference :rooms, :current_player, foreign_key: { to_table: :players }
    add_column :rooms, :small_blind_amount, :integer
    add_reference :rooms, :small_blind_player, foreign_key: { to_table: :players }
    add_reference :rooms, :admin_player, foreign_key: { to_table: :players }
    
  end
end
