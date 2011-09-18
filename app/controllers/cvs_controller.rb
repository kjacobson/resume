class CvsController < ApplicationController
  # GET /cvs
  # GET /cvs.xml
  def index
    @user = User.find(params[:user_id])
    @cvs = @user.cvs

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cvs }
    end
  end

  # GET /cvs/1
  # GET /cvs/1.xml
  def show
    @user = User.find(params[:user_id])
    @cv = @user.cvs.find(params[:id])
    @jobs = @cv.jobs.order("end_year DESC")[0..6]
    if params[:printable].nil? || params[:printable] != "true"
        @disciplines = @cv.disciplines
        @skills = @cv.skills.order("title ASC")
        @softwares = @cv.softwares.order("rank DESC")[0..4]
        respond_to do |format|
          format.html # show.html.erb
          format.xml  { render :xml => @cv }
        end
    else
        respond_to do |format|
          format.html { render :template => "cvs/birdseye" }
        end
    end
  end

  # GET /cvs/new
  # GET /cvs/new.xml
  def new
    @user = User.find(params[:user_id])
    @cv = Cv.new(:user_id => @user.id)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cv }
    end
  end

  # GET /cvs/1/edit
  def edit
    @user = User.find(params[:user_id])
    @cv = @user.cvs.find(params[:id])
  end

  # POST /cvs
  # POST /cvs.xml
  def create    
    @cv = Cv.new(params[:cv])
    @cv.user_id = current_user.id

    respond_to do |format|
      if @cv.save
        format.html { redirect_to(user_cv_path, :notice => 'Resume was successfully created.') }
        format.xml  { render :xml => @cv, :status => :created, :location => @cv }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cvs/1
  # PUT /cvs/1.xml
  def update
    @user = User.find(params[:user_id])
    @cv = @user.cvs.find(params[:id])

    respond_to do |format|
      if @cv.update_attributes(params[:cv])
        format.html { redirect_to(user_cv_path, :notice => 'Resume was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cvs/1
  # DELETE /cvs/1.xml
  def destroy
    @user = User.find(params[:user_id])
    @cv = @user.cvs.find(params[:id])
    @cv.destroy

    respond_to do |format|
      format.html { redirect_to(user_cvs_path) }
      format.xml  { head :ok }
    end
  end
end
