class Song < ActiveRecord::Base
    belongs_to :album
    validates_presence_of :title, :album
    #has_secure_password
end
