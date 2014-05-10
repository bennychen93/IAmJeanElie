require 'spec_helper'

describe "Registration" do
	describe "Sign up" do
		flash[:confirm].should =~ /Please check your email for confirmation/i

	end
end
