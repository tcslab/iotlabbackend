class FunctionSetsController < ApplicationController
  before_action :set_function_set, only: [:show, :edit, :update, :destroy]

  # GET /function_sets
  # GET /function_sets.json
  def index
    @function_sets = FunctionSet.all
  end

  # GET /function_sets/1
  # GET /function_sets/1.json
  def show
  end

  # GET /function_sets/new
  def new
    @function_set = FunctionSet.new
  end

  # GET /function_sets/1/edit
  def edit
  end

  # POST /function_sets
  # POST /function_sets.json
  def create
    @function_set = FunctionSet.new(function_set_params)

    respond_to do |format|
      if @function_set.save
        format.html { redirect_to @function_set, notice: 'Function set was successfully created.' }
        format.json { render :show, status: :created, location: @function_set }
      else
        format.html { render :new }
        format.json { render json: @function_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /function_sets/1
  # PATCH/PUT /function_sets/1.json
  def update
    respond_to do |format|
      if @function_set.update(function_set_params)
        format.html { redirect_to @function_set, notice: 'Function set was successfully updated.' }
        format.json { render :show, status: :ok, location: @function_set }
      else
        format.html { render :edit }
        format.json { render json: @function_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /function_sets/1
  # DELETE /function_sets/1.json
  def destroy
    @function_set.destroy
    respond_to do |format|
      format.html { redirect_to function_sets_url, notice: 'Function set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_function_set
      @function_set = FunctionSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def function_set_params
      params.require(:function_set).permit(:name, :restype, :description, :root_path)
    end
end
