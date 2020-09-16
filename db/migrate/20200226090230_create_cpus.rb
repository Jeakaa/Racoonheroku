class CreateCpus < ActiveRecord::Migration[5.2]
  def change
    create_table :cpus do |t|

      t.integer :core_count
      t.integer :performance
      t.integer :product_id

      t.timestamps
    end
  end
end
