class Email < ApplicationRecord
  validates :email_address, presence: true
  belongs_to :contact
end