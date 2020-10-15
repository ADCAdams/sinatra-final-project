class Album < ActiveRecord::Base
    belongs_to :user 
    has_many :songs
    validates_presence_of :name
end