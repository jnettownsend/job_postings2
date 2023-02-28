class User < ApplicationRecord
    validates :email, :password_digest, presence: true
    has_secure_password
    password_requirements = /\A 
        (?=.{6,}) # At least 8 characters long
        (?=.*\d) # Contain at least one number
        (?=.*[a-z]) # Contain at least one lowercase letter
        (?=.*[A-Z]) # Contain at least one uppercase letter
        (?=.*[[:^alnum:]])
    /x
    validates :password, format: password_requirements 

    has_many :jobs

end