class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.boolean :clear
      t.integer :rotation
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
