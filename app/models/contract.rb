class Contract < ApplicationRecord
  has_many :cars
  validates :date_of_registration, presence: true
  validates :price, presence: true, : { greater_than_or_equal_to: 0}
end
