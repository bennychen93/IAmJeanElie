valid_email = 'mhems1@binghamton.edu'
invalid_email = '.edu'
dumb_password = 'dummypwd'
short_password = 'jk'

When /^(?:|I )try to register with "(.+)", "(.+)", "(.+)"$/ do |email,pwd,confirm|
 step %{fill in "user_email" with "#{email}"}
 step %{fill in "user_password" with "#{pwd}"}
 step %{fill in "user_password_confirmation" with "#{confirm}"}
end


Then /^(?:|I )should be on the IamJeanElie homepage$/i do
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == 'http://iamjeanelie.com/'
  else
    assert_equal 'http://iamjeanelie.com/', current_path
  end
end

Given /the following users exist/ do |users_table|
  #debugger
  user = FactoryGirl.create(:user)
  #debugger
  User.find(0)
end

Then /^(?:|I )should see \/([^\/]*)\/(i?)$/ do |regexp, i|
  if i == 'i'
	regexp = Regexp.new(regexp, Regexp::IGNORECASE)
  else
	regexp = Regexp.new(regexp)
  end
  if page.respond_to? :should
    page.should have_xpath('//*', :text => regexp)
  else
    assert page.has_xpath?('//*', :text => regexp)
  end
end

Given /^I am logged in as user ([0-9]+)/ do | user_id |
  debugger
  user = User.find(user_id)
  visit '/users/sign_in'
  fill_in "user_email", :with => user[:email]
  fill_in "user_password", :with => user[:password]
  click_button "Sign in"
end
