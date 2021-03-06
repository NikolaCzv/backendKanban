class User < ApplicationRecord
    has_secure_password

    has_many :notes, dependent: :destroy

    validates :email, presence: true,  uniqueness: { case_sensitive: false }
    validates :username, presence: true, uniqueness: { case_sensitive: false }
end
