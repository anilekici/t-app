class CreateIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :incomes do |t|
      t.string :frequency
      t.string :currency, default: "€"
      t.integer :hours, default: 8, null: false
      t.integer :days, default: 5, null: false
      t.integer :value, null: false

      t.timestamps
    end
  end
end
