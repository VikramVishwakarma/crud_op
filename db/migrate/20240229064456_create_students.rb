class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :address

      t.timestamps
    end
  end
end
