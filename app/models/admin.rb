class Admin < ActiveRecord::Base
  
  before_save { self.email = email.downcase }

  validates :name, 	presence: true, 	length: { maximum: 50 }
  validates :password, 					length: { minimum: 6 }
  validates :email, presence: true, 	format: { with: VALID_EMAIL_REGEX }
  					uniqueness: 				{ case_sensitive: false }

  has_secure_password

  # Regular expressions for email-address validation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i



end