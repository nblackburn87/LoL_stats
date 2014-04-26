class ChangeKdaToDecimal < ActiveRecord::Migration
  def change
    change_column :games, :kills, :decimal
    change_column :games, :deaths, :decimal
    change_column :games, :assists, :decimal

  end
end
