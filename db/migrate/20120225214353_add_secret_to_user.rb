class AddSecretToUser < ActiveRecord::Migration
  def change
    add_column :users, :secret, :string
  end
end
