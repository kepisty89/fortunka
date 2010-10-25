class FortunesController < ApplicationController
  # GET /fortunes
  # GET /fortunes.xml
  def index
    @fortunes = Fortune.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fortunes }
    end
  end

  # GET /fortunes/1
  # GET /fortunes/1.xml
  def show
    @fortune = Fortune.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fortune }
    end
  end

  # GET /fortunes/new
  # GET /fortunes/new.xml
  def new
    @fortune = Fortune.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fortune }
    end
  end

  # GET /fortunes/1/edit
  def edit
    @fortune = Fortune.find(params[:id])
  end

  # POST /fortunes
  # POST /fortunes.xml
  def create
    @fortune = Fortune.new(params[:fortune])

    respond_to do |format|
      if @fortune.save
        format.html { redirect_to(@fortune, :notice => 'Fortune was successfully created.') }
        format.xml  { render :xml => @fortune, :status => :created, :location => @fortune }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fortune.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fortunes/1
  # PUT /fortunes/1.xml
  def update
    @fortune = Fortune.find(params[:id])

    respond_to do |format|
      if @fortune.update_attributes(params[:fortune])
        format.html { redirect_to(@fortune, :notice => 'Fortune was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fortune.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fortunes/1
  # DELETE /fortunes/1.xml
  def destroy
    @fortune = Fortune.find(params[:id])
    @fortune.destroy

    respond_to do |format|
      format.html { redirect_to(fortunes_url) }
      format.xml  { head :ok }
    end
  end
end
