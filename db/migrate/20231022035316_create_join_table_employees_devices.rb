class CreateJoinTableEmployeesDevices < ActiveRecord::Migration[7.0]
  def change
    create_join_table :employees, :devices do |t|
      # t.index [:employee_id, :device_id]
      # t.index [:device_id, :employee_id]
    end
  end
end
