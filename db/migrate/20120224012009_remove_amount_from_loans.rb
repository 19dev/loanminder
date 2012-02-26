class RemoveAmountFromLoans < ActiveRecord::Migration
  def up
    remove_column :loans, :amount
  end

  def down
    add_column :loans, :amount, :integer
  end
end
