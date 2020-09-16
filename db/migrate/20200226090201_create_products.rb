class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.string :name
      t.integer :price
      t.string :description
      t.integer :quantity
      t.integer :category_id
      t.string :avatar

      t.timestamps
    end
  end
end
