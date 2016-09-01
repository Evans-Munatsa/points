class CreateNoobs < ActiveRecord::Migration
  def change
    create_table :noobs do |t|
      t.references :players, index: true, foreign_key: true
      t.integer :points

      t.timestamps null: false
    end
  end
end
