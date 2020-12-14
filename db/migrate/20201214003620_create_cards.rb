class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.references :position, null: false, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
