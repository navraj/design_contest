class DymmmiesController < ApplicationController
  # GET /dymmmies
  # GET /dymmmies.json
  def index
    @dymmmies = Dymmmy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dymmmies }
    end
  end

  # GET /dymmmies/1
  # GET /dymmmies/1.json
  def show
    @dymmmy = Dymmmy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dymmmy }
    end
  end

  # GET /dymmmies/new
  # GET /dymmmies/new.json
  def new
    @dymmmy = Dymmmy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dymmmy }
    end
  end

  # GET /dymmmies/1/edit
  def edit
    @dymmmy = Dymmmy.find(params[:id])
  end

  # POST /dymmmies
  # POST /dymmmies.json
  def create
    @dymmmy = Dymmmy.new(params[:dymmmy])

    respond_to do |format|
      if @dymmmy.save
        format.html { redirect_to @dymmmy, notice: 'Dymmmy was successfully created.' }
        format.json { render json: @dymmmy, status: :created, location: @dymmmy }
      else
        format.html { render action: "new" }
        format.json { render json: @dymmmy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dymmmies/1
  # PUT /dymmmies/1.json
  def update
    @dymmmy = Dymmmy.find(params[:id])

    respond_to do |format|
      if @dymmmy.update_attributes(params[:dymmmy])
        format.html { redirect_to @dymmmy, notice: 'Dymmmy was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dymmmy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dymmmies/1
  # DELETE /dymmmies/1.json
  def destroy
    @dymmmy = Dymmmy.find(params[:id])
    @dymmmy.destroy

    respond_to do |format|
      format.html { redirect_to dymmmies_url }
      format.json { head :ok }
    end
  end
end
