class CreatePhonecallbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :phonecallbacks do |t|

      t.string :name
      t.string :phonenumber
      t.integer :state
      t.text :comment


      t.timestamps
    end
  end
end
