class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :emp_id
      t.string :name
      t.string :gender
      t.string :email
      t.date :dob

      t.timestamps
    end
  end
end
