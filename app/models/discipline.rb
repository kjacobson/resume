class Discipline < ActiveRecord::Base
	validates_presence_of :title
	validates_uniqueness_of :title

	has_many :skills
	has_many :jobs, :through => :skills
	belongs_to :job
	has_many :jobs, :finder_sql => 'SELECT jobs.* FROM jobs
		LEFT JOIN job_skills ON jobs.id = job_skills.job_id
		LEFT JOIN skills ON job_skills.skill_id = skills.id
		LEFT JOIN disciplines ON skills.discipline_id = disciplines.id
		WHERE disciplines.id = #{self.id}', :uniq => true

	def jobs_using_count
		jobs = self.jobs.reject {|job| job.nil?}
		return jobs.count
	end
end
