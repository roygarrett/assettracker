class CreateJoinTableSoftwaresEmployees < ActiveRecord::Migration[7.0]
  def change
    create_join_table :softwares, :employees do |t|
      # t.index [:software_id, :employee_id]
      # t.index [:employee_id, :software_id]
    end
  end
end
