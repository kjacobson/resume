class Job < ActiveRecord::Base
    validates_presence_of :title
    validates_presence_of :employer
    validates_presence_of :short_desc
    validates_presence_of :status

    has_many :job_skills, :dependent => :destroy
    has_many :skills, :through => :job_skills
    has_many :job_softwares, :dependent => :destroy
    has_many :softwares, :through => :job_softwares
    has_many :job_years, :dependent => :destroy
    has_many :years, :through => :job_years
    belongs_to :discipline
    has_many :disciplines, :finder_sql => 'SELECT disciplines.* FROM disciplines
        LEFT JOIN skills ON disciplines.id = skills.discipline_id
        LEFT JOIN job_skills ON skills.id = job_skills.skill_id
        LEFT JOIN jobs ON job_skills.job_id = jobs.id
        WHERE jobs.id = #{self.id}', :uniq => true
    has_many :highlights, :dependent => :destroy

    def get_years # should be in DESC order
        years.reverse
        start_year = years.first.value
        end_year = years.last.value
        y = start_year
        years.each do |year|
            if y = year.value
                y + 1
            else
                end_year = y - 1
                # clearly, we're only handling the first timespan at this job
            end
        end
        return [start_year,end_year]
    end

    def get_start_year
        return get_years[0]
    end

    def get_end_year
        return get_years[1]
    end
end