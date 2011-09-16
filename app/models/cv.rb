class Cv < ActiveRecord::Base
    belongs_to :user

    has_many :jobs
    has_many :skills
    has_many :softwares
    has_many :years
    has_many :highlights
    has_many :disciplines
    has_many :job_skills
    has_many :job_softwares
    has_many :job_years
end
