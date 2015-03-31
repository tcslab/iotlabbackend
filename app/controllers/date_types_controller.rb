class DateTypesController < ApplicationController
  before_action :set_date_type, only: [:show, :edit, :update, :destroy]

  # GET /date_types
  # GET /date_types.json
  def index
    @date_types = DateType.all
  end

  # GET /date_types/1
  # GET /date_types/1.json
  def show
  end

  # GET /date_types/new
  def new
    @date_type = DateType.new
  end

  # GET /date_types/1/edit
  def edit
  end

  # POST /date_types
  # POST /date_types.json
  def create
    @date_type = DateType.new(date_type_params)

    respond_to do |format|
      if @date_type.save
        format.html { redirect_to @date_type, notice: 'Date type was successfully created.' }
        format.json { render :show, status: :created, location: @date_type }
      else
        format.html { render :new }
        format.json { render json: @date_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_types/1
  # PATCH/PUT /date_types/1.json
  def update
    respond_to do |format|
      if @date_type.update(date_type_params)
        format.html { redirect_to @date_type, notice: 'Date type was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_type }
      else
        format.html { render :edit }
        format.json { render json: @date_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_types/1
  # DELETE /date_types/1.json
  def destroy
    @date_type.destroy
    respond_to do |format|
      format.html { redirect_to date_types_url, notice: 'Date type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_type
      @date_type = DateType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_type_params
      params.require(:date_type).permit(:name, :plainformat, :senml)
    end
end
