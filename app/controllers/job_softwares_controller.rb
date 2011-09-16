class JobSoftwaresController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]
  before_filter { |c| c.get_user_and_cv params[:user_id], params[:cv_id]}

  # GET /job_softwares
  # GET /job_softwares.xml
  def index
    if !params[:job_id].nil?
        @job_softwares = @user.job_softwares.find_all_by_job_id(params[:job_id])
    elsif !params[:software_id].nil?
        @job_softwares = @user.job_softwares.find_all_by_software_id(params[:software_id])
    else
        @job_softwares = @user.job_softwares.find(:all)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_softwares }
    end
  end

  # GET /job_softwares/1
  # GET /job_softwares/1.xml
  def show
    @job_software = @user.job_softwares.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_software }
    end
  end

  # GET /job_softwares/new
  # GET /job_softwares/new.xml
  def new
    @job_software = JobSoftware.new
    if !params[:job_id].nil?
        @softwares = @user.softwares.find(:all, :order => "title ASC")
        @job = @user.jobs.find(params[:job_id])
    elsif !params[:software_id].nil?
        @jobs = @user.jobs.find(:all, :order => "title ASC")
        @software = @user.softwares.find(params[:software_id])
    else
        @softwares = @user.softwares.find(:all, :order => "title ASC")
        @jobs = @user.jobs.find(:all, :order => "title ASC")
    end
  end

  # GET /job_softwares/1/edit
  def edit
    @job_software = @user.job_softwares.find(params[:id])

    @jobs = @user.jobs.find(:all, :order => "title ASC")
    @job = @jobs.select { |job| job.id == @job_software.job_id}[0]
    @softwares = @user.softwares.find(:all, :order => "title ASC")
    @software = @softwares.select { |software| software.id == @job_software.software_id}[0]
  end

  # POST /job_softwares
  # POST /job_softwares.xml
  def create
    @job_software = @user.job_softwares.new(params[:job_software])
    @job_software.cv_id = @cv.id

    respond_to do |format|
      if @job_software.save
        format.html { redirect_to(user_cv_job_software_path, :notice => 'Job software was successfully created.') }
        format.xml  { render :xml => @job_software, :status => :created, :location => @job_software }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job_software.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /job_softwares/1
  # PUT /job_softwares/1.xml
  def update
    @job_software = @user.job_softwares.find(params[:id])

    respond_to do |format|
      if @job_software.update_attributes(params[:job_software])
        format.html { redirect_to(user_cv_job_software_path, :notice => 'Job software was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job_software.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /job_softwares/1
  # DELETE /job_softwares/1.xml
  def destroy
    @job_software = @user.job_softwares.find(params[:id])
    @job_software.destroy

    respond_to do |format|
      format.html { redirect_to(user_cv_job_softwares_path) }
      format.xml  { head :ok }
    end
  end
end