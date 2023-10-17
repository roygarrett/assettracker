class RemoveCategoryFromDevices < ActiveRecord::Migration[7.0]
  def change
    remove_column :devices, :category, :string
  end
end
