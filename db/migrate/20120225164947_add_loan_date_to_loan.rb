class AddLoanDateToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :loan_date, :date
  end
end
