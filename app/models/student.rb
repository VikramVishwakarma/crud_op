class Student < ApplicationRecord
    validates :name, :address, :phone, :email, presence: { message: "can't be blank" }
    validates :name, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and spaces" }, allow_blank: true
    validates :address, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and spaces" }, allow_blank: true
    validates :phone, presence: true, numericality: { only_integer: true, message: "only allows numerical values" }, allow_blank: true
  
    # Correcting email validation to include presence and uniqueness
    validates :email, presence: true, uniqueness: { case_sensitive: false, message: "has already been taken" },
     format: { with: URI::MailTo::EMAIL_REGEXP, message: "is not a valid email address" }, 
     allow_blank: true
  end
  