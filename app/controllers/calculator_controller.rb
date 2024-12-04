class CalculatorController < ApplicationController
  def index
  end

  def calculate
    bill_amount = params[:bill].to_f
    tip_percentage = params[:tip].to_f
    people = params[:people].to_i

    tip_amount = (bill_amount * tip_percentage / 100)
    total_bill = bill_amount + tip_amount
    amount_per_person = total_bill / people

    TipCalculation.create!(
      bill_amount: bill_amount,
      tip_percentage: tip_percentage,
      tip_amount: tip_amount,
      total_bill: total_bill,
      number_of_people: people,
      amount_per_person: amount_per_person
    )

    render json: {
      tip_amount: format('%.2f', tip_amount / people),
      total_per_person: format('%.2f', amount_per_person)
    }
  end
end
