class AddCompanyToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :company, :string
  end

  def self.down
    remove_column :products, :company
  end
end
