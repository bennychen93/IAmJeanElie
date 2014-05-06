FactoryGirl.define do
  factory :user do
    first_name 'Edward'
    last_name  'Mansfield'
    email 'default_email@test.com'
    encrypted_password 'a'
  end
end