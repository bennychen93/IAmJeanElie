class AdminMailer < ActionMailer::Base
    def new_user(user)
        @user = user
        mail(subject: 'A new user has signed up!!111')
    end
end