class ExperimentProposalsController < ApplicationController
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # GET /experiment_proposals
  # GET /experiment_proposals.json
  def index
    @experiment_proposals = ExperimentProposal.all
    respond_with(@experiment_proposals) do |format|
      format.json { render :json => @experiment_proposals.as_json }
    end
  end

  # POST /experiment_proposals
  # POST /experiments.json
  def create
    @experiment_proposal = ExperimentProposal.new(experiment_proposal_params)

    respond_to do |format|
      if @experiment_proposal.save
        format.json { render :show, status: :created, location: @experiment_proposal }
      else
        format.json { render json: @experiment_proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /experiment_proposals/1
  # GET /experiment_proposals/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experiment_proposal
      @experiment_proposal = ExperimentProposal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experiment_proposal_params
      params.require(:experiment_proposal).permit(:experiment_proposal_category_id,:reward_category_id,:user_id,:proposal_text)
    end
end
