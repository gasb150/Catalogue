class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :category_id
      t.float :iva
      t.integer :price

      t.timestamps
    end
  end
end
