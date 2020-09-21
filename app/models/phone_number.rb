class PhoneNumber < ApplicationRecord
  validates :number, presence: true
  belongs_to :contact
end
