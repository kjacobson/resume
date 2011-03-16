class JobSoftware < ActiveRecord::Base
    validates_presence_of :job_id
    validates_presence_of :software_id

    belongs_to :job
    belongs_to :software
end
