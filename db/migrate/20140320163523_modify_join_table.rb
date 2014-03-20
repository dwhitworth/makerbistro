class ModifyJoinTable < ActiveRecord::Migration
  def change
    rename_table :ingredients_items, :ingredient_items
  end
end
