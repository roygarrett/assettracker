class RemoveNullConstraintFromEmployeeId < ActiveRecord::Migration[7.0]
  def change
    change_column :devices_employees, :employee_id, :integer, null: true
  end
end
