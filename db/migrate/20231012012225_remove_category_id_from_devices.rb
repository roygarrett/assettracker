class RemoveCategoryIdFromDevices < ActiveRecord::Migration[7.0]
  def change
    remove_column :devices, :category_id, :string
  end
end
