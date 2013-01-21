class LunchplansController < ApplicationController
  # GET /lunchplans
  # GET /lunchplans.json
  def index
    @lunchplans = Lunchplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @lunchplans }
    end
  end

  # GET /lunchplans/1
  # GET /lunchplans/1.json
  def show
    @lunchplan = Lunchplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @lunchplan }
    end
  end

  # GET /lunchplans/new
  # GET /lunchplans/new.json
  def new
    @lunchplan = Lunchplan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @lunchplan }
    end
  end

  # GET /lunchplans/1/edit
  def edit
    @lunchplan = Lunchplan.find(params[:id])
  end

  # POST /lunchplans
  # POST /lunchplans.json
  def create
    @lunchplan = Lunchplan.new(params[:lunchplan])

    respond_to do |format|
      if @lunchplan.save
        format.html { redirect_to @lunchplan, :notice => 'Lunchplan was successfully created.' }
        format.json { render :json => @lunchplan, :status => :created, :location => @lunchplan }
      else
        format.html { render :action => "new" }
        format.json { render :json => @lunchplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lunchplans/1
  # PUT /lunchplans/1.json
  def update
    @lunchplan = Lunchplan.find(params[:id])

    respond_to do |format|
      if @lunchplan.update_attributes(params[:lunchplan])
        format.html { redirect_to @lunchplan, :notice => 'Lunchplan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @lunchplan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lunchplans/1
  # DELETE /lunchplans/1.json
  def destroy
    @lunchplan = Lunchplan.find(params[:id])
    @lunchplan.destroy

    respond_to do |format|
      format.html { redirect_to lunchplans_url }
      format.json { head :no_content }
    end
  end
end
