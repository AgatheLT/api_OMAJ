class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.string :brand
      t.string :condition
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
