class EmailAddressesController < ApplicationController
  # GET /email_addresses/new
  # GET /email_addresses/new.json
  def new
    p "inside new..."
    @email_address = EmailAddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @email_address }
    end
  end
  
  # POST /email_addresses
  # POST /email_addresses.json
  def create
    p "inside create..."
    pp root_url
    @email_address = EmailAddress.new(params[:email_address])

    respond_to do |format|
      if @email_address.save
        format.html { redirect_to "/signup", notice: 'Thanks for signing up!' }
        #format.html { redirect_to @email_address, notice: 'Email address was successfully created.' }
        format.json { render json: @email_address, status: :created, location: @email_address }
      else
        format.html { render action: "new" }
        format.json { render json: @email_address.errors, status: :unprocessable_entity }
      end
    end
  end
end
