class Skill < ActiveRecord::Base
    validates_uniqueness_of :title

    belongs_to :discipline
    has_many :job_skills, :dependent => :destroy
    has_many :jobs, :through => :job_skills, :uniq => true
    has_many :years, :finder_sql => 'SELECT years.* FROM years
        LEFT JOIN job_years ON years.id = job_years.year_id
        LEFT JOIN jobs ON job_years.job_id = jobs.id
        LEFT JOIN job_skills ON jobs.id = job_skills.job_id
        LEFT JOIN skills ON job_skills.skill_id = skills.id
        WHERE skills.id = #{self.id}
        ORDER BY years.value DESC', :uniq => true
    has_many :highlights, :dependent => :destroy
    
    def shortest_name
        if !abbreviation.nil? and abbreviation != ""
            return abbreviation
        else
            return title
        end
    end

    def self.rank_skills
        skills = self.all
        skills = skills.sort! { |a,b| b.job_skills.count <=> a.job_skills.count }
        rank = skills.size
        skills.each do |skill|
            skill.update_rank(rank)
            rank -= 1
        end
    end

    def update_rank(rank)
        self.rank = rank
        if self.save
             return true
        end
    end
end