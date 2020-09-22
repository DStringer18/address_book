class PhoneNumber < ApplicationRecord
  validates :number, presence: true
  validates :number, uniqueness: true
  belongs_to :contact
end
