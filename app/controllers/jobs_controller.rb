class JobsController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]
  before_filter { |c| c.get_user_and_cv params[:user_id], params[:cv_id]}

  # GET /jobs
  # GET /jobs.xml
  def index
    @order_by = !params[:order_by].nil? ? params[:order_by] : "end_year"
    @direction = !params[:direction].nil? ? params[:direction] : "DESC"
    if !params[:skill_id].nil?
        @skill = Skill.find_by_id(params[:skill_id]).order(@order_by + " " + @direction)
        @jobs = @skill.jobs
    elsif !params[:software_id].nil?
        @software = Software.find_by_id(params[:software_id]).order(@order_by + " " + @direction)
        @jobs = @software.jobs
    elsif !params[:year_id].nil?
        @year = Year.find_by_value(params[:year_id]).order(@order_by + " " + @direction)
        @jobs = @year.jobs
    else
        @jobs = Job.find(:all, :order => @order_by + " " + @direction)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jobs }
    end
  end

  # GET /jobs/1
  # GET /jobs/1.xml
  def show
    @job = Job.find(params[:id])
    @skills = @job.skills.order("rank DESC")
    @softwares = @job.softwares.order("title ASC")
    @years = @job.years.order("value DESC")
    @highlights = @job.highlights.order("skill_id")
    @disciplines = @job.disciplines

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job }
    end
  end

  # GET /jobs/new
  # GET /jobs/new.xml
  def new
    @job = Job.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job }
    end
  end

  # GET /jobs/1/edit
  def edit
    @job = Job.find(params[:id])
  end

  # POST /jobs
  # POST /jobs.xml
  def create
    @job = Job.new(params[:job])
    @job.cv_id = @cv.id

    respond_to do |format|
      if @job.save
        format.html { redirect_to(user_cv_job_path, :notice => 'Job was successfully created.') }
        format.xml  { render :xml => @job, :status => :created, :location => @job }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /jobs/1
  # PUT /jobs/1.xml
  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.html { redirect_to(user_cv_job_path, :notice => 'Job was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.xml
  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    respond_to do |format|
      format.html { redirect_to(user_cv_jobs_path) }
      format.xml  { head :ok }
    end
  end
end
