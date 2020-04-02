class User < ApplicationRecord
    has_secure_password

    has_many :notes, dependent: :destroy

    validates :email, uniqueness: { case_sensitive: false }
    validates :username, uniqueness: { case_sensitive: false }
end
