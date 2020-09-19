class Address < ApplicationRecord
  validates :street, :town, :zip, :country, presence: true
  belongs_to :contact
end
