class Email < ApplicationRecord
  validates :email_address, presence: true
  validates :email_address, uniqueness: true
  belongs_to :contact
end