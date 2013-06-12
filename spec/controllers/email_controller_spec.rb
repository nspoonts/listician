require 'spec_helper'

describe EmailController do

  describe "GET 'signup'" do
    it "returns http success" do
      get 'signup'
      response.should be_success
    end
  end

end
