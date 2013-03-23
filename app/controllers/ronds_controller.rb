class RondsController < ApplicationController
  # GET /ronds
  # GET /ronds.json
  def index
    @ronds = Rond.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ronds }
    end
  end

  # GET /ronds/1
  # GET /ronds/1.json
  def show
    @rond = Rond.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rond }
    end
  end

  # GET /ronds/new
  # GET /ronds/new.json
  def new
    @rond = Rond.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rond }
    end
  end

  # GET /ronds/1/edit
  def edit
    @rond = Rond.find(params[:id])
  end

  # POST /ronds
  # POST /ronds.json
  def create
    @rond = Rond.new(params[:rond])

    respond_to do |format|
      if @rond.save
        format.html { redirect_to @rond, notice: 'Rond was successfully created.' }
        format.json { render json: @rond, status: :created, location: @rond }
      else
        format.html { render action: "new" }
        format.json { render json: @rond.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ronds/1
  # PUT /ronds/1.json
  def update
    @rond = Rond.find(params[:id])

    respond_to do |format|
      if @rond.update_attributes(params[:rond])
        format.html { redirect_to @rond, notice: 'Rond was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rond.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ronds/1
  # DELETE /ronds/1.json
  def destroy
    @rond = Rond.find(params[:id])
    @rond.destroy

    respond_to do |format|
      format.html { redirect_to ronds_url }
      format.json { head :no_content }
    end
  end
end
