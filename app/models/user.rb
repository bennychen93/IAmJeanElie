class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :remember_me

  validates_presence_of :first_name, :last_name

  # attr_accessible :title, :body
  # after_create :send_admin_mail

  # def send_admin_mail
  #       AdminMailer.new_user(self)
  # end
end
