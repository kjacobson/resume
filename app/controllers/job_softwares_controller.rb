class JobSoftwaresController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]

  # GET /job_softwares
  # GET /job_softwares.xml
  def index
    @job_softwares = JobSoftware.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_softwares }
    end
  end

  # GET /job_softwares/1
  # GET /job_softwares/1.xml
  def show
    @job_software = JobSoftware.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_software }
    end
  end

  # GET /job_softwares/new
  # GET /job_softwares/new.xml
  def new
    @job_software = JobSoftware.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_software }
    end
  end

  # GET /job_softwares/1/edit
  def edit
    @job_software = JobSoftware.find(params[:id])
  end

  # POST /job_softwares
  # POST /job_softwares.xml
  def create
    @job_software = JobSoftware.new(params[:job_software])

    respond_to do |format|
      if @job_software.save
        format.html { redirect_to(@job_software, :notice => 'Job software was successfully created.') }
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
    @job_software = JobSoftware.find(params[:id])

    respond_to do |format|
      if @job_software.update_attributes(params[:job_software])
        format.html { redirect_to(@job_software, :notice => 'Job software was successfully updated.') }
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
    @job_software = JobSoftware.find(params[:id])
    @job_software.destroy

    respond_to do |format|
      format.html { redirect_to(job_softwares_url) }
      format.xml  { head :ok }
    end
  end
end
