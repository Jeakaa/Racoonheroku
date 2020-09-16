class AddSocketAndGenerationToCpu < ActiveRecord::Migration[5.2]
  def change
    add_column :cpus, :generation_id, :integer
    add_column :cpus, :cpusocket_id, :integer
  end

  def self.down
    remove_column :cpus, :generation_id
    remove_column :cpus, :cpusocket_id
  end

end
