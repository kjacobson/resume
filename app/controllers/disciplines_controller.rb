class DisciplinesController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]
  before_filter { |c| c.get_user_and_cv params[:user_id], params[:cv_id]}

  # GET /disciplines
  # GET /disciplines.xml
  def index
    @order_by = !params[:order_by].nil? ? params[:order_by] : "title"
    @direction = !params[:direction].nil? ? params[:direction] : "ASC"
    if !params[:job_id].nil?
        @disciplines = Job.find(params[:job_id]).disciplines.order(@order_by + " " + @direction)
    else
        @disciplines = Discipline.find(:all, :order => @order_by + " " + @direction)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @disciplines }
    end
  end

  # GET /disciplines/1
  # GET /disciplines/1.xml
  def show
    @discipline = Discipline.find(params[:id])
    @skills = @discipline.skills

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @discipline }
    end
  end

  # GET /disciplines/new
  # GET /disciplines/new.xml
  def new
    @discipline = Discipline.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @discipline }
    end
  end

  # GET /disciplines/1/edit
  def edit
    @discipline = Discipline.find(params[:id])
  end

  # POST /disciplines
  # POST /disciplines.xml
  def create
    @discipline = Discipline.new(params[:discipline])
    @discipline.cv_id = @cv.id

    respond_to do |format|
      if @discipline.save
        format.html { redirect_to(user_cv_discipline_path, :notice => 'Discipline was successfully created.') }
        format.xml  { render :xml => @discipline, :status => :created, :location => @discipline }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /disciplines/1
  # PUT /disciplines/1.xml
  def update
    @discipline = Discipline.find(params[:id])

    respond_to do |format|
      if @discipline.update_attributes(params[:discipline])
        format.html { redirect_to(user_cv_discipline_path, :notice => 'Discipline was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /disciplines/1
  # DELETE /disciplines/1.xml
  def destroy
    @discipline = Discipline.find(params[:id])
    @discipline.destroy

    respond_to do |format|
      format.html { redirect_to(user_cv_disciplines_path) }
      format.xml  { head :ok }
    end
  end
end
