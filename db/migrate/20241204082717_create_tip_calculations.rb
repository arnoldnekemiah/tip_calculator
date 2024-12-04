class CreateTipCalculations < ActiveRecord::Migration[7.1]
  def change
    create_table :tip_calculations do |t|
      t.decimal :bill_amount, precision: 10, scale: 2, null: false
      t.decimal :tip_percentage, precision: 5, scale: 2, null: false
      t.decimal :tip_amount, precision: 10, scale: 2, null: false
      t.decimal :total_bill, precision: 10, scale: 2, null: false
      t.integer :number_of_people, null: false
      t.decimal :amount_per_person, precision: 10, scale: 2, null: false

      t.timestamps
    end
  end
end
