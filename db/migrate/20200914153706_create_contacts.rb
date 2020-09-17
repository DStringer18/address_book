class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :salutation
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :ssn, precision: 8
      t.string :dob
      t.text :comment

      t.timestamps
    end
  end
end
