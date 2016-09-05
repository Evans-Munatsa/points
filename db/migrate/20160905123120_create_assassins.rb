class CreateAssassins < ActiveRecord::Migration
  def change
    create_table :assassins do |t|
      t.integer :points, default: 0, null: false
      t.references :player, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
