class SkillsController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]

  # GET /skills
  # GET /skills.xml
  def index
	if !params[:job_id].nil?
		@job = Job.find(params[:job_id])
		@disciplines = @job.disciplines
		@skills = @job.skills.order("title ASC")
	elsif !params[:year_id].nil?
		@disciplines = Discipline.all
		@skills = Year.find_by_value(params[:year_id]).skills
		@skills.sort! { |a,b| a.title <=> b.title }
	elsif !params[:discipline_id].nil?
		@skills = Discipline.find(params[:discipline_id]).skills.order("title ASC")
	else
		@disciplines = Discipline.all
    	@skills = Skill.order("rank DESC")
	end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skills }
    end
  end

  # GET /skills/1
  # GET /skills/1.xml
  def show
    @skill = Skill.find_by_slug(params[:id])
	@jobs = @skill.jobs.order("end_year DESC")
	@years = @skill.years

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skill }
    end
  end

  # GET /skills/new
  # GET /skills/new.xml
  def new
    @skill = Skill.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @skill }
    end
  end

  # GET /skills/1/edit
  def edit
    @skill = Skill.find_by_slug(params[:id])
  end

  # POST /skills
  # POST /skills.xml
  def create
    @skill = Skill.new(params[:skill])

    respond_to do |format|
      if @skill.save
        format.html { redirect_to("/skills/#{@skill.slug}", :notice => 'Skill was successfully created.') }
        format.xml  { render :xml => @skill, :status => :created, :location => @skill }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skills/1
  # PUT /skills/1.xml
  def update
    @skill = Skill.find(params[:id])

    respond_to do |format|
      if @skill.update_attributes(params[:skill])
        format.html { redirect_to("/skills/#{@skill.slug}", :notice => 'Skill was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.xml
  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy

    respond_to do |format|
      format.html { redirect_to(skills_url) }
      format.xml  { head :ok }
    end
  end
end
