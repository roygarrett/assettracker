class RemoveDeviceIdFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :device_id, :string
  end
end
