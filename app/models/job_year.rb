class JobYear < ActiveRecord::Base
    validates_presence_of :job_id
    validates_presence_of :year_id

    belongs_to :job
    belongs_to :year

    after_save :recalculate_endpoints
    after_update :recalculate_endpoints
    after_destroy :recalculate_endpoints

    private
        def recalculate_endpoints
            Job.update(job.id, :start_year => job.get_start_year)
            Job.update(job.id, :end_year => job.get_end_year)
        end
end
