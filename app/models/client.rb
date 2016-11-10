class Client < ApplicationRecord
  has_many :cars
  	validates :last_name, presence: true
	validates :first_name, presence: true
	validates :second_name, presence: true
	validates :telephone, presence: true, length: {maximum: 16}
	validates :passport_number, presence: true, length: {maximum: 16}
end
