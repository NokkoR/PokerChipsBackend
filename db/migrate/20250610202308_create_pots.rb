class CreatePots < ActiveRecord::Migration[8.0]
  def change
    create_table :pots do |t|
      t.integer :money

      t.timestamps
    end
  end
end
