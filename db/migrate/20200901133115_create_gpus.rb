class CreateGpus < ActiveRecord::Migration[5.2]
  def change
    create_table :gpus do |t|

      t.integer :memory
      t.integer :fan_quantity
      t.integer :performance
      t.integer :product_id

      t.timestamps
    end
  end
end
