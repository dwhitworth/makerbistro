class CreateIngredientsItems < ActiveRecord::Migration
  def change
    create_table :ingredients_items do |t|
      t.references :ingredient, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
