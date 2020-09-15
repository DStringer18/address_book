class Contact < ApplicationRecord
  has_many :addresses
  validates :first_name, presence: true
  validates :last_name, presence: true
end
