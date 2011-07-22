class JobYearsController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]

  # GET /job_years
  # GET /job_years.xml
  def index
    if !params[:job_id].nil?
        @job_years = JobYear.find_all_by_job_id(params[:job_id])
    elsif !params[:year_id].nil?
        @job_years = JobYear.find_all_by_year_id(params[:year_id])
    else
        @job_years = JobYear.find(:all)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_years }
    end
  end

  # GET /job_years/1
  # GET /job_years/1.xml
  def show
    @job_year = JobYear.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_year }
    end
  end

  # GET /job_years/new
  # GET /job_years/new.xml
  def new
    @job_year = JobYear.new
    if !params[:job_id].nil?
        @years = Year.find(:all, :order => "value DESC")
        @job = Job.find(params[:job_id])
    elsif !params[:year_id].nil?
        @jobs = Job.find(:all, :order => "title ASC")
        @year = Year.find(params[:year_id])
    else
        @jobs = Job.find(:all, :order => "title DESC")
        @years = Year.find(:all, :order => "value DESC")
    end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_year }
    end
  end

  # GET /job_years/1/edit
  def edit
    @job_year = JobYear.find(params[:id])
    @jobs = Job.find(:all, :order => "title ASC")
    @job = @jobs.select { |job| job.id == @job_year.job_id}[0]
    @years = Year.find(:all, :order => "value ASC")
    @year = @years.select { |year| year.id == @job_year.year_id}[0]
  end

  # POST /job_years
  # POST /job_years.xml
  def create
    @job_year = JobYear.new(params[:job_year])

    respond_to do |format|
      if @job_year.save
        format.html { redirect_to(@job_year, :notice => 'Job year was successfully created.') }
        format.xml  { render :xml => @job_year, :status => :created, :location => @job_year }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job_year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /job_years/1
  # PUT /job_years/1.xml
  def update
    @job_year = JobYear.find(params[:id])

    respond_to do |format|
      if @job_year.update_attributes(params[:job_year])
        format.html { redirect_to(@job_year, :notice => 'Job year was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job_year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /job_years/1
  # DELETE /job_years/1.xml
  def destroy
    @job_year = JobYear.find(params[:id])
    @job_year.destroy

    respond_to do |format|
      format.html { redirect_to(job_years_url) }
      format.xml  { head :ok }
    end
  end
end
