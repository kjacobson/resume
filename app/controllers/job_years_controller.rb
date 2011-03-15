class JobYearsController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]

  # GET /job_years
  # GET /job_years.xml
  def index
    @job_years = JobYear.all

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

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_year }
    end
  end

  # GET /job_years/1/edit
  def edit
    @job_year = JobYear.find(params[:id])
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
