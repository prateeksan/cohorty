class CreateCohortIncomes < ActiveRecord::Migration
  def change
    create_table :cohort_incomes do |t|
      t.integer :value
      t.string :month
      t.references :cohort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
