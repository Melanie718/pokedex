class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
