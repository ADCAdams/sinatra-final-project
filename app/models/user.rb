class User < ActiveRecord::Base
    has_many :albums
    has_many :songs, through: :albums
    validates_presence_of :name
end
