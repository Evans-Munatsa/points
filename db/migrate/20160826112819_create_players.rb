class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :assassin
      t.integer :noob

      t.timestamps null: false
    end
  end
end
