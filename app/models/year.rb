class Year < ActiveRecord::Base
    validates_presence_of :value
    validates_uniqueness_of :value

    has_many :job_years, :dependent => :destroy
    has_many :jobs, :through => :job_years, :uniq => true
    has_many :skills, :finder_sql => 'SELECT skills.* FROM skills
        LEFT JOIN job_skills ON skills.id = job_skills.skill_id
        LEFT JOIN jobs ON job_skills.job_id = jobs.id
        LEFT JOIN job_years ON jobs.id = job_years.job_id
        LEFT JOIN years ON job_years.year_id = years.id
        WHERE years.id = #{self.id}', :uniq => true

end
