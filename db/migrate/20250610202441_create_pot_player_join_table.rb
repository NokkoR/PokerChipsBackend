class CreatePotPlayerJoinTable < ActiveRecord::Migration[8.0]
  def change
    create_join_table :pots, :players do |t|
      # t.index [:pot_id, :player_id]
      # t.index [:player_id, :pot_id]
    end
    add_foreign_key :players_pots, :pots
    add_foreign_key :players_pots, :players
  end
end
