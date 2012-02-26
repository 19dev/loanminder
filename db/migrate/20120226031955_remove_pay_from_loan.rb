class RemovePayFromLoan < ActiveRecord::Migration
  def up
    remove_column :loans, :pay
  end

  def down
    add_column :loans, :pay, :boolean
  end
end
