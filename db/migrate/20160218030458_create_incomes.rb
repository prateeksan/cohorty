class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.integer :value
      t.string :month
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
