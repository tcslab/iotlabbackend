class ResourcesController < ApplicationController
  respond_to :json
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  # GET /resources
  # GET /resources.json
  def index
    @resources = Resource.all
    respond_with(@resources) do |format|
      format.json { render :json => @resources.as_json }
    end
  end

  # GET /resources/get_resources_by_type.json
  def get_resources_by_type
    @resources = Resource.resources_by_type(params[:provider_id])
    respond_with(@resources) do |format|
      format.json { render :json => @resources.as_json }
    end
  end

  # GET /resources/resources_by_name.json
  def resources_by_name
    @resources = Resource.resources_by_name(params[:name])
    respond_with(@resources) do |format|
      format.json { render :json => @resources.as_json }
    end
  end


  # GET /resources/resources_by_name.json
  def resources_by_path
    @resources = Resource.resources_by_path(params[:path])
    respond_with(@resources) do |format|
      format.json { render :json => @resources.as_json }
    end
  end


  # GET /resources/1.json
  def show
  end

  # GET /resources/new
  def new
    @resource = Resource.new
  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources
  # POST /resources.json
  def create
    @resource = Resource.new(resource_params)

    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resources/1
  # PATCH/PUT /resources/1.json
  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url, notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params
      params.require(:resource).permit(:name, :ipso_index, :function_set_id, :node_id, :resource_type_id)
    end
end
