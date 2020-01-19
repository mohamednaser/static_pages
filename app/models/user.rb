class User < ApplicationRecord
  
  # attr_accessor :name , :email
  
  validates :name , presence: true , length: {maximum: 20} 
  
  MAIL_VALIDATION_RULES = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  
  validates :email , presence: true , format: {with: MAIL_VALIDATION_RULES }, uniqueness: true
  
  
  has_secure_password
  
end
