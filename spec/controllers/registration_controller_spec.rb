require 'spec_helper'

describe "Registration" do
	describe "Sign up" do
		post :new_user_session#, :user => [:first_name="matt",:last_name="x",:email="g@f.com",:password="dummypwd1",:password_confirmation="dummypwd1"]
		flash[:confirm].should =~ /Please check your email for confirmation/i

	end
end
