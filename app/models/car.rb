class Car < ApplicationRecord
  belongs_to :client
  belongs_to :contract
  
  validates :brand, presence: true
  validates :client, presence: true
  validates :model, presence: true
  validates :contents, presence: true
  validates :vin, presence: true, length: {maximum: 20}, uniqueness: true
  validates :color, presence: true, :experience_in_days, numericality: {only_integer: true, less_than_or_equal_to: 16777216}
end
