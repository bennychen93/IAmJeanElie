valid_email = 'mhems1@binghamton.edu'
invalid_email = '.edu'
dumb_password = 'dummypwd'
short_password = 'jk'

When /^(?:|I )try to register with "(.+)", "(.+)", "(.+)"$/ do |email,pwd,confirm|
 step %{fill in "email_field" with "#{email}"}
 step %{fill in "password_field" with "#{pwd}"}
 step %{fill in "password_confirmation" with "#{confirm}"}
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
  users_table.hashes.each do |user|
	User.create(:email=>user[:email], :password=>user[:password], :confirmation=>user[:confirmation])
  end
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
