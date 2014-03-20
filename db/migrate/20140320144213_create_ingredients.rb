class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :vegan
      t.boolean :vegetarian
      t.boolean :gluten_free

      t.timestamps
    end
  end
end
