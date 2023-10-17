class AddCategoriesToDevices < ActiveRecord::Migration[7.0]
  def change
    add_column :devices, :category_id, :string
  end
end
