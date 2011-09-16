class User < ActiveRecord::Base
    has_many :cvs
    has_many :job_skills, :through => :cvs
    has_many :job_softwares, :through => :cvs
    has_many :job_years, :through => :cvs
    
    acts_as_authentic
end
