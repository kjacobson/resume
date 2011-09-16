class JobYearsController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]
  before_filter { |c| c.get_user_and_cv params[:user_id], params[:cv_id]}

  # GET /job_years
  # GET /job_years.xml
  def index
    if !params[:job_id].nil?
        @job_years = @user.job_years.find_all_by_job_id(params[:job_id])
    elsif !params[:year_id].nil?
        @job_years = @user.job_years.find_all_by_year_id(params[:year_id])
    else
        @job_years = @user.job_years.find(:all)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_years }
    end
  end

  # GET /job_years/1
  # GET /job_years/1.xml
  def show
    @job_year = @user.job_years.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_year }
    end
  end

  # GET /job_years/new
  # GET /job_years/new.xml
  def new
    @job_year = @user.job_years.new

    if !params[:job_id].nil?
        @years = @user.years.find(:all, :order => "value DESC")
        @job = @user.jobs.find(params[:job_id])
    elsif !params[:year_id].nil?
        @jobs = @user.jobs.find(:all, :order => "title ASC")
        @year = @user.years.find(params[:year_id])
    else
        @jobs = @user.jobs.find(:all, :order => "title DESC")
        @years = @user.years.find(:all, :order => "value DESC")
    end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_year }
    end
  end

  # GET /job_years/1/edit
  def edit
    @job_year = @user.job_years.find(params[:id])

    @jobs = @user.jobs.find(:all, :order => "title ASC")
    @job = @jobs.select { |job| job.id == @job_year.job_id}[0]
    @years = user.years.find(:all, :order => "value ASC")
    @year = @years.select { |year| year.id == @job_year.year_id}[0]
  end

  # POST /job_years
  # POST /job_years.xml
  def create
    @job_year = @user.job_years.new(params[:job_year])
    @job_year.cv_id = @cv.id

    respond_to do |format|
      if @job_year.save
        format.html { redirect_to(user_cv_job_year_path, :notice => 'Job year was successfully created.') }
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
    @job_year = @user.job_years.find(params[:id])

    respond_to do |format|
      if @job_year.update_attributes(params[:job_year])
        format.html { redirect_to(user_cv_job_year_path, :notice => 'Job year was successfully updated.') }
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
    @job_year = @user.job_years.find(params[:id])
    @job_year.destroy

    respond_to do |format|
      format.html { redirect_to(user_cv_job_years_path) }
      format.xml  { head :ok }
    end
  end
end