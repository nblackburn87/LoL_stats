class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :champion
      t.string :role
      t.integer :kills
      t.integer :deaths
      t.integer :assists
      t.integer :creep_score
      t.integer :gold
      t.boolean :result
      
      t.timestamps
    end
  end
end
