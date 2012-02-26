class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :payer
      t.integer :amount
      t.date :borrow_date
      t.boolean :pay

      t.timestamps
    end
  end
end
