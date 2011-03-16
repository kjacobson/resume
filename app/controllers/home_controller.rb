class HomeController < ApplicationController
    def index
        @jobs = Job.order("end_year DESC")[0..4]
        @disciplines = Discipline.all
        @skills = Skill.order("title ASC")
        @softwares = Software.order("title ASC")

        respond_to do |format|
          format.html # index.html.erb
          format.xml  { render :xml => @jobs }
        end
    end
end
