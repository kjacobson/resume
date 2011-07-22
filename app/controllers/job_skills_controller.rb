class JobSkillsController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]

  # GET /job_skills
  # GET /job_skills.xml
  def index
    if !params[:job_id].nil?
        @job_skills = JobSkill.find_all_by_job_id(params[:job_id])
    elsif !params[:skill_id].nil?
        @job_skills = JobSkill.find_all_by_skill_id(params[:skill_id])
    else
        @job_skills = JobSkill.find(:all)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_skills }
    end
  end

  # GET /job_skills/1
  # GET /job_skills/1.xml
  def show
    @job_skill = JobSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_skill }
    end
  end

  # GET /job_skills/new
  # GET /job_skills/new.xml
  def new
    @job_skill = JobSkill.new
    if !params[:job_id].nil?
        @skills = Skill.find(:all, :order => "title ASC")
        @job = Job.find(params[:job_id])
    elsif !params[:skill_id].nil?
        @jobs = Job.find(:all, :order => "title ASC")
        @skill = Skill.find(params[:skill_id])
    else
        @jobs = Job.find(:all, :order => "title DESC")
        @skills = Skill.find(:all, :order => "title ASC")
    end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_skill }
    end
  end

  # GET /job_skills/1/edit
  def edit
    @job_skill = JobSkill.find(params[:id])
    @jobs = Job.find(:all, :order => "title ASC")
    @job = @jobs.select { |job| job.id == @job_skill.job_id}[0]
    @skills = Skill.find(:all, :order => "title ASC")
    @skill = @skills.select { | skill | skill.id == @job_skill.skill_id}[0]
  end

  # POST /job_skills
  # POST /job_skills.xml
  def create
    @job_skill = JobSkill.new(params[:job_skill])

    respond_to do |format|
      if @job_skill.save
        format.html { redirect_to(@job_skill, :notice => 'Job skill was successfully created.') }
        format.xml  { render :xml => @job_skill, :status => :created, :location => @job_skill }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job_skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /job_skills/1
  # PUT /job_skills/1.xml
  def update
    @job_skill = JobSkill.find(params[:id])

    respond_to do |format|
      if @job_skill.update_attributes(params[:job_skill])
        format.html { redirect_to(@job_skill, :notice => 'Job skill was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job_skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /job_skills/1
  # DELETE /job_skills/1.xml
  def destroy
    @job_skill = JobSkill.find(params[:id])
    @job_skill.destroy

    respond_to do |format|
      format.html { redirect_to(job_skills_url) }
      format.xml  { head :ok }
    end
  end
end
