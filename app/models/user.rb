class User < ActiveRecord::Base
    has_many :albums
    validates :username, presence: true, uniqueness: true
    has_secure_password
end
