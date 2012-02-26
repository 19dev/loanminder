class LoanMailer < ActionMailer::Base
  default from: "loanminder@gmail.com"
  
  def remind_loan(loan)
    mail(:to => current_user.email, :subject => "#{loan.payer} should pay #{loan.amount} TL until #{loan.payed_deadline}")
  end
end
