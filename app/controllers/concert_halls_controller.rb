class ConcertHallsController < ApplicationController
  before_action :set_concert_hall, only: [:show, :edit, :update, :destroy]

  # GET /concert_halls
  # GET /concert_halls.json
  def index
    @concert_halls = ConcertHall.all
  end

  # GET /concert_halls/1
  # GET /concert_halls/1.json
  def show
    @event = Event.new
  end

  # GET /concert_halls/new
  def new
    @concert_hall = ConcertHall.new
  end

  # GET /concert_halls/1/edit
  def edit
  end

  # POST /concert_halls
  # POST /concert_halls.json
  def create
    @concert_hall = ConcertHall.new(concert_hall_params)

    respond_to do |format|
      if @concert_hall.save
        format.html { redirect_to @concert_hall, notice: 'Concert hall was successfully created.' }
        format.json { render :show, status: :created, location: @concert_hall }
      else
        format.html { render :new }
        format.json { render json: @concert_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concert_halls/1
  # PATCH/PUT /concert_halls/1.json
  def update
    respond_to do |format|
      if @concert_hall.update(concert_hall_params)
        format.html { redirect_to @concert_hall, notice: 'Concert hall was successfully updated.' }
        format.json { render :show, status: :ok, location: @concert_hall }
      else
        format.html { render :edit }
        format.json { render json: @concert_hall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concert_halls/1
  # DELETE /concert_halls/1.json
  def destroy
    @concert_hall.destroy
    respond_to do |format|
      format.html { redirect_to concert_halls_url, notice: 'Concert hall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concert_hall
      @concert_hall = ConcertHall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concert_hall_params
      params.require(:concert_hall).permit(:name, :city, :state, :family_friendly)
    end
end
