class PhoneNumber < ApplicationRecord
  validates :kind, :number, presence: true
  belongs_to :contact
end
