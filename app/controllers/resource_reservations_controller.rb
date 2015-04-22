class ResourceReservationsController < ApplicationController
  before_action :set_resource_reservation, only: [:show, :edit, :update, :destroy]

  # GET /resource_reservations
  # GET /resource_reservations.json
  def index
    @resource_reservations = ResourceReservation.all
  end

  # GET /resource_reservations/1
  # GET /resource_reservations/1.json
  def show
  end

  # GET /resource_reservations/new
  def new
    @resource_reservation = ResourceReservation.new
  end

  # GET /resource_reservations/1/edit
  def edit
  end

  # POST /resource_reservations
  # POST /resource_reservations.json
  def create
    @resource_reservation = ResourceReservation.new(resource_reservation_params)

    respond_to do |format|
      if @resource_reservation.save
        format.html { redirect_to @resource_reservation, notice: 'Resource reservation was successfully created.' }
        format.json { render :show, status: :created, location: @resource_reservation }
      else
        format.html { render :new }
        format.json { render json: @resource_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_reservations/1
  # PATCH/PUT /resource_reservations/1.json
  def update
    respond_to do |format|
      if @resource_reservation.update(resource_reservation_params)
        format.html { redirect_to @resource_reservation, notice: 'Resource reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource_reservation }
      else
        format.html { render :edit }
        format.json { render json: @resource_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_reservations/1
  # DELETE /resource_reservations/1.json
  def destroy
    @resource_reservation.destroy
    respond_to do |format|
      format.html { redirect_to resource_reservations_url, notice: 'Resource reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_reservation
      @resource_reservation = ResourceReservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_reservation_params
      params.require(:resource_reservation).permit(:reservation_id, :resource_id)
    end
end
