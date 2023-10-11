class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :manufacturer
      t.string :category

      t.timestamps
    end
  end
end
