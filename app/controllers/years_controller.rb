class YearsController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]

  # GET /years
  # GET /years.xml
  def index
    if !params[:job_id].nil?
        @job = Job.find_by_id(params[:job_id])
        @years = @job.years.order("value DESC")
    elsif !params[:skill_id].nil?
        @skill = Skill.find_by_id(params[:skill_id])
        @years = @skill.years
        @years.sort! { |a,b| b.value <=> a.value }
    else
        @years = Year.order("value DESC")
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @years }
    end
  end

  # GET /years/1
  # GET /years/1.xml
  def show
    @year = Year.find_by_value(params[:id])
    @jobs = @year.jobs.order("end_year DESC")
    @disciplines = Discipline.all
    @skills = @year.skills
    @skills.sort! { |a,b| a.title <=> b.title }

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @year }
    end
  end

  # GET /years/new
  # GET /years/new.xml
  def new
    @year = Year.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @year }
    end
  end

  # GET /years/1/edit
  def edit
    @year = Year.find(params[:id])
  end

  # POST /years
  # POST /years.xml
  def create
    @year = Year.new(params[:year])

    respond_to do |format|
      if @year.save
        format.html { redirect_to("/years/#{@year.value}", :notice => 'Year was successfully created.') }
        format.xml  { render :xml => @year, :status => :created, :location => @year }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /years/1
  # PUT /years/1.xml
  def update
    @year = Year.find(params[:id])

    respond_to do |format|
      if @year.update_attributes(params[:year])
        format.html { redirect_to("/years/#{@year.value}", :notice => 'Year was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /years/1
  # DELETE /years/1.xml
  def destroy
    @year = Year.find(params[:id])
    @year.destroy

    respond_to do |format|
      format.html { redirect_to(years_url) }
      format.xml  { head :ok }
    end
  end
end
