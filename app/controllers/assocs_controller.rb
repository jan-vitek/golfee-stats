class AssocsController < ApplicationController
  # GET /assocs
  # GET /assocs.json
  def index
    @assocs = Assoc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assocs }
    end
  end

  # GET /assocs/1
  # GET /assocs/1.json
  def show
    @assoc = Assoc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assoc }
    end
  end

  # GET /assocs/new
  # GET /assocs/new.json
  def new
    @assoc = Assoc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assoc }
    end
  end

  # GET /assocs/1/edit
  def edit
    @assoc = Assoc.find(params[:id])
  end

  # POST /assocs
  # POST /assocs.json
  def create
    @assoc = Assoc.new(params[:assoc])

    respond_to do |format|
      if @assoc.save
        format.html { redirect_to @assoc, notice: 'Assoc was successfully created.' }
        format.json { render json: @assoc, status: :created, location: @assoc }
      else
        format.html { render action: "new" }
        format.json { render json: @assoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assocs/1
  # PUT /assocs/1.json
  def update
    @assoc = Assoc.find(params[:id])

    respond_to do |format|
      if @assoc.update_attributes(params[:assoc])
        format.html { redirect_to @assoc, notice: 'Assoc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assocs/1
  # DELETE /assocs/1.json
  def destroy
    @assoc = Assoc.find(params[:id])
    @assoc.destroy

    respond_to do |format|
      format.html { redirect_to assocs_url }
      format.json { head :no_content }
    end
  end
end
