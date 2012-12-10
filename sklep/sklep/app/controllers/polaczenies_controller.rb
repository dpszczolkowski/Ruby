class PolaczeniesController < ApplicationController
  # GET /polaczenies
  # GET /polaczenies.json
  def index
    @polaczenies = Polaczenie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @polaczenies }
    end
  end

  # GET /polaczenies/1
  # GET /polaczenies/1.json
  def show
    @polaczeny = Polaczenie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @polaczeny }
    end
  end

  # GET /polaczenies/new
  # GET /polaczenies/new.json
  def new
    @polaczeny = Polaczenie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @polaczeny }
    end
  end

  # GET /polaczenies/1/edit
  def edit
    @polaczeny = Polaczenie.find(params[:id])
  end

  # POST /polaczenies
  # POST /polaczenies.json
  def create
    @koszyk = aktualny_koszyk
    produkt = Produkt.find(params[:produkt_id])
    @polaczenie = @koszyk.polaczenies.build( :produkt => produkt)
    #@polaczeny = Polaczenie.new(params[:polaczeny])

    respond_to do |format|
      if @polaczenie.save
        format.html { redirect_to @polaczeny, notice: 'Polaczenie was successfully created.' }
        format.json { render json: @polaczeny, status: :created, location: @polaczeny }
      else
        format.html { render action: "new" }
        format.json { render json: @polaczeny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /polaczenies/1
  # PUT /polaczenies/1.json
  def update
    @polaczeny = Polaczenie.find(params[:id])

    respond_to do |format|
      if @polaczeny.update_attributes(params[:polaczeny])
        format.html { redirect_to @polaczeny, notice: 'Polaczenie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @polaczeny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polaczenies/1
  # DELETE /polaczenies/1.json
  def destroy
    @polaczeny = Polaczenie.find(params[:id])
    @polaczeny.destroy

    respond_to do |format|
      format.html { redirect_to polaczenies_url }
      format.json { head :no_content }
    end
  end
end
