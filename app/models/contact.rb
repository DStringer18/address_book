class Contact < ApplicationRecord
  has_many :addresses, dependent: :destroy
  has_many :phone_numbers, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
end
