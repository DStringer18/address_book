class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :town
      t.string :zip, precision: 5
      t.string :state
      t.string :country
      t.references :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
