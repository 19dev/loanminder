class AddPayedDeadlineToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :payed_deadline, :date
  end
end
