class Patient < ApplicationRecord
  has_many :appointments
  validates :name, presence: true
  validates :phone_no, uniqueness: true
end
