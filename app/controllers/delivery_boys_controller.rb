class DeliveryBoysController < ApplicationController
  before_action :set_delivery_boy, only: [:show, :edit, :update, :destroy]

  # GET /delivery_boys
  # GET /delivery_boys.json
  def index
    @delivery_boys = DeliveryBoy.all
  end

  # GET /delivery_boys/1
  # GET /delivery_boys/1.json
  def show
  end

  # GET /delivery_boys/new
  def new
    @delivery_boy = DeliveryBoy.new
  end

  # GET /delivery_boys/1/edit
  def edit
  end

  # POST /delivery_boys
  # POST /delivery_boys.json
  def create
    @delivery_boy = DeliveryBoy.new(delivery_boy_params)
    @locality = Locality.find_by_name(delivery_boy_params[:locality])
    @locality.delivery_boys << @delivery_boy
    @time = TimeSlot.find_by_name(delivery_boy_params[:time_slot])
    @delivery_boy.delivery_slots.create(time_slot_id: time.id.to_i)
    respond_to do |format|
      if @delivery_boy.save
        format.html { redirect_to @delivery_boy, notice: 'Delivery boy was successfully created.' }
        format.json { render :show, status: :created, location: @delivery_boy }
      else
        format.html { render :new }
        format.json { render json: @delivery_boy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_boys/1
  # PATCH/PUT /delivery_boys/1.json
  def update
    respond_to do |format|
      if @delivery_boy.update(delivery_boy_params)
        format.html { redirect_to @delivery_boy, notice: 'Delivery boy was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery_boy }
      else
        format.html { render :edit }
        format.json { render json: @delivery_boy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_boys/1
  # DELETE /delivery_boys/1.json
  def destroy
    @delivery_boy.destroy
    respond_to do |format|
      format.html { redirect_to delivery_boys_url, notice: 'Delivery boy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_boy
      @delivery_boy = DeliveryBoy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_boy_params
      params.require(:delivery_boy).permit(:name, :locality, :time_slot ,:rider_id, :rider_type)
    end
end
