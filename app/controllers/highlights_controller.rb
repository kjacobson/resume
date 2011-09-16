class HighlightsController < ApplicationController
  before_filter :require_known_user, :only => [:new, :create, :edit, :update, :destroy]
  before_filter { |c| c.get_user_and_cv params[:user_id], params[:cv_id]}

  # GET /highlights
  # GET /highlights.xml
  def index
    @order_by = !params[:order_by].nil? ? params[:order_by] : "id"
    @direction = !params[:direction].nil? ? params[:direction] : "ASC"
    @highlights = Highlight.find(:all, :order => @order_by + " " + @direction)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @highlights }
    end
  end

  # GET /highlights/1
  # GET /highlights/1.xml
  def show
    @highlight = Highlight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @highlight }
    end
  end

  # GET /highlights/new
  # GET /highlights/new.xml
  def new
    @highlight = Highlight.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @highlight }
    end
  end

  # GET /highlights/1/edit
  def edit
    @highlight = Highlight.find(params[:id])
  end

  # POST /highlights
  # POST /highlights.xml
  def create
    @highlight = Highlight.new(params[:highlight])
    @highlight.cv_id = @cv.id

    respond_to do |format|
      if @highlight.save
        format.html { redirect_to(user_cv_highlight_path, :notice => 'Highlight was successfully created.') }
        format.xml  { render :xml => @highlight, :status => :created, :location => @highlight }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @highlight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /highlights/1
  # PUT /highlights/1.xml
  def update
    @highlight = Highlight.find(params[:id])

    respond_to do |format|
      if @highlight.update_attributes(params[:highlight])
        format.html { redirect_to(user_cv_highlight_path, :notice => 'Highlight was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @highlight.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /highlights/1
  # DELETE /highlights/1.xml
  def destroy
    @highlight = Highlight.find(params[:id])
    @highlight.destroy

    respond_to do |format|
      format.html { redirect_to(user_cv_highlights_path) }
      format.xml  { head :ok }
    end
  end
end
