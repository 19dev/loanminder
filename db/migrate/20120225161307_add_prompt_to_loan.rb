class AddPromptToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :prompt, :decimal
  end
end
