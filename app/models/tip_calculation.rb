class TipCalculation < ApplicationRecord
  validates :bill_amount, presence: true, numericality: { greater_than: 0 }
  validates :tip_percentage, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :number_of_people, presence: true, numericality: { greater_than: 0 }
end
