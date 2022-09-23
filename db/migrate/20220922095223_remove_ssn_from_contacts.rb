class RemoveSsnFromContacts < ActiveRecord::Migration[6.0]
  def change
    remove_column :contacts, :ssn
  end
end
