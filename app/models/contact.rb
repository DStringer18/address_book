class Contact < ApplicationRecord
  has_many :addresses, dependent: :destroy
  has_many :phone_numbers, dependent: :destroy
  has_many :emails, dependent: :destroy
  accepts_nested_attributes_for :addresses, :emails, :phone_numbers
  validates :first_name, :last_name, presence: true
end