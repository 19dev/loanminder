ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "loanminder.com",
  :user_name            => "loanminder",
  :password             => "secretpasswords",
  :authentication       => "plain",
  :enable_starttls_auto => true
}