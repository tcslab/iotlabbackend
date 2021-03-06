class NodesController < ApplicationController
  respond_to :json
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  before_action :set_node, only: [:show, :edit, :update, :destroy]

  # GET /nodes
  # GET /nodes.json
  def index
    @nodes = Node.all
    respond_with(@nodes) do |format|
      format.json { render :json => @nodes.as_json }
    end
  end

  # GET # /nodes/get_nodes_by_location.json?latitude=46.176388&longitude=6.139959
  def get_nodes_by_location
    @nodes = Node.all
    lat_input = BigDecimal.new(params[:myLocationLat])
    lon_input = BigDecimal.new(params[:myLocationLon])
    distance = 100

    distance = params[:distance] if(params.has_key?(:distance))
    @close_nodes = Array.new
    @nodes.each do |n|
      @close_nodes << n if Harvesine.haversine_distance( lat_input, lon_input, n.latitude, n.longitude ) < distance.to_f
    end

    respond_with(@close_nodes) do |format|
      format.json { render :json => @close_nodes.as_json }
    end
  end

  # GET /nodes/nodes_by_provider.json
  def nodes_by_provider
    @nodes = Node.get_nodes_by_provider(params[:provider_id])
    respond_with(@nodes) do |format|
      format.json { render :json => @nodes.as_json }
    end
  end

  # GET /nodes/1
  # GET /nodes/1.json
  def show
  end

  # GET /nodes/new
  def new
    @node = Node.new
  end

  # GET /nodes/1/edit
  def edit
  end

  # POST /nodes
  # POST /nodes.json
  def create
    @node = Node.new(node_params)

    respond_to do |format|
      if @node.save
        format.html { redirect_to @node, notice: 'Node was successfully created.' }
        format.json { render :show, status: :created, location: @node }
      else
        format.html { render :new }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nodes/1
  # PATCH/PUT /nodes/1.json
  def update
    respond_to do |format|
      if @node.update(node_params)
        format.html { redirect_to @node, notice: 'Node was successfully updated.' }
        format.json { render :show, status: :ok, location: @node }
      else
        format.html { render :edit }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nodes/1
  # DELETE /nodes/1.json
  def destroy
    @node.destroy
    respond_to do |format|
      format.html { redirect_to nodes_url, notice: 'Node was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node
      @node = Node.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_params
      params.require(:node).permit(:name, :latitude, :longitude, :provider_id, :phone_flag, :urn)
    end
end
