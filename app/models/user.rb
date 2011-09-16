class User < ActiveRecord::Base
    has_many :cvs
    
    acts_as_authentic
end
