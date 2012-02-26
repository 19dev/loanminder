class LoanMailer < ActionMailer::Base
  default from: "loanminder@gmail.com"
  
  def remind_loan(loan)
    mail(:to => current_user.email, :subject => "Borcun var ode!")
  end
end
