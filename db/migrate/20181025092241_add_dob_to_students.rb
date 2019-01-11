class AddDobToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :dob, :date_field
  end
end
