class Loan < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :payer, :on => :create, :message => "this friend has still debt to you!!!"
end
