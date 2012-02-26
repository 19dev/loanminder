class LoansController < ApplicationController
  before_filter :authenticate
  
  def index
    @loans = current_user.loans.all
  end
  
  def new
    @loan = Loan.new
  end
  
  def create
    @loan = Loan.new(params[:loan])
    @loan.user_id = current_user.id
    if @loan.save
      redirect_to loans_path
    else
      render :action => 'new'
    end
  end
  
  def show
    @loan = Loan.find(params[:id])
     if @loan.payed_deadline < Date.parse('2012.03.01') && !@loan.pay #TODO change with Date.today
       @loan.amount = @loan.amount + (@loan.amount * 0.1)
       @loan.payed_deadline = Date.today
       @loan.save
       provider = User.find_by_provider_and_name('twitter', current_user.name)
       @twitter = Twitter::Client.new(:oauth_token => provider.token, :oauth_token_secret => provider.secret)
       @twitter.update("PAY IT!!! #{@loan.payer} until #{@loan.payed_deadline}, it is just #{@loan.amount} TL")
       #TODO add flash message
       redirect_to loans_path
     else
       @loan = Loan.find(params[:id])
     end
  end
  
  def edit
    @loan = Loan.find(params[:id])
  end
  
  def update
    @loan = Loan.find(params[:id])
    if @loan.update_attributes(params[:loan])
      redirect_to loans_path
    else
      render :action => 'edit'
    end
 end
 
  def destroy
    @laon = Loan.find(params[:id]).destroy
    redirect_to loans_path
  end
  
  
  def authenticate
    unless current_user
      redirect_to root_url
    end
  end
end
