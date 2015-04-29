class RewardCategoriesController < ApplicationController
  respond_to :json
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  before_action :set_reward_category, only: [:show, :edit, :update, :destroy]

  # GET /reward_categories
  # GET /reward_categories.json
  def index
    @reward_categories = RewardCategory.all
    respond_with(@reward_categories) do |format|
      format.json { render :json => @reward_categories.as_json }
    end
  end

  # GET /reward_categories/1
  # GET /reward_categories/1.json
  def show
  end

  # GET /reward_categories/new
  def new
    @reward_category = RewardCategory.new
  end

  # GET /reward_categories/1/edit
  def edit
  end

  # POST /reward_categories
  # POST /reward_categories.json
  def create
    @reward_category = RewardCategory.new(reward_category_params)

    respond_to do |format|
      if @reward_category.save
        format.html { redirect_to @reward_category, notice: 'Reward category was successfully created.' }
        format.json { render :show, status: :created, location: @reward_category }
      else
        format.html { render :new }
        format.json { render json: @reward_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reward_categories/1
  # PATCH/PUT /reward_categories/1.json
  def update
    respond_to do |format|
      if @reward_category.update(reward_category_params)
        format.html { redirect_to @reward_category, notice: 'Reward category was successfully updated.' }
        format.json { render :show, status: :ok, location: @reward_category }
      else
        format.html { render :edit }
        format.json { render json: @reward_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reward_categories/1
  # DELETE /reward_categories/1.json
  def destroy
    @reward_category.destroy
    respond_to do |format|
      format.html { redirect_to reward_categories_url, notice: 'Reward category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward_category
      @reward_category = RewardCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reward_category_params
      params.require(:reward_category).permit(:name)
    end
end
