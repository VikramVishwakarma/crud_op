class Student < ApplicationRecord
    validate :unique_email
  
    validates :phone, format: { with: /\A\d+\z/, message: "only allows numerical values" }
    validates :name, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and spaces" }, allow_blank: true
  
    private
  
    def unique_email
      existing_student = Student.where.not(id: self.id).find_by(email: email)
      if existing_student
        errors.add(:email, "has already been taken")
      end
    end
  end
  