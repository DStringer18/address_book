class CreatePhoneNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :phone_numbers do |t|
      t.string :kind
      t.string :number
      t.string :comment
      t.references :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
