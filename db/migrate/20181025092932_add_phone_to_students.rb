class AddPhoneToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :phone, :telephone_field
  end
end
