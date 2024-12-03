class CalculatorController < ApplicationController
  def index
  end

  def calculate
    bill_amount = params[:bill].to_f
    tip_percentage = params[:tip].to_f
    people = params[:people].to_i

    tip_amount = (bill_amount * tip_percentage / 100) / people
    total_per_person = (bill_amount / people) + tip_amount

    render json: {
      tip_amount: format('%.2f', tip_amount),
      total_per_person: format('%.2f', total_per_person)
    }
  end
end
