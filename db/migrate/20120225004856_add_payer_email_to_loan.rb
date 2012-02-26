class AddPayerEmailToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :payer_email, :string
  end
end
