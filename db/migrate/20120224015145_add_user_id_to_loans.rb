class AddUserIdToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :user_id, :integer
  end
end
