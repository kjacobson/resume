class Software < ActiveRecord::Base
    validates_presence_of :title
    validates_uniqueness_of :title

    has_many :job_softwares, :dependent => :destroy
    has_many :jobs, :through => :job_softwares
end
