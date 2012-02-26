class AddPayToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :pay, :boolean
  end
end
