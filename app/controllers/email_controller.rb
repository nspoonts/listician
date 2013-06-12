class EmailController < ApplicationController 
  def show
    @email_address = EmailAddress.find(params[:id])
    @email_address = EmailAddress.find(params[:id])
  end
  
  def signup
    @message = "Please sign up for updates from Listician!"
  end
  
  def new
    @email_address = EmailAddress.new
  end
end
