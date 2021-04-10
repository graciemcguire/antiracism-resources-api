class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :update, :destroy]

  # GET /votes
  def index
    @votes = Vote.all

    render json: @votes
  end

  # GET /votes/1
  def show
    render json: @vote
  end

  # POST /votes
  def create
    @vote = Vote.new(vote_params)

    if @vote.save
      render json: @vote, status: :created, location: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /votes/1
  def update
    if @vote.update(vote_params)
      render json: @vote
    else
      render json: @vote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /votes/1
  def destroy
    @vote.destroy
  end

  def upvotes
    @votes = Vote.all
    resource_all_votes = @votes.where(resource_id: params[:resource_id])
    @resources_all_upvotes = resource_all_votes.where(vote_type: 'upvote').count

    render json: @resources_all_upvotes
  end

  def downvotes
    @votes = Vote.all
    resource_all_votes = @votes.where(resource_id: params[:resource_id])
    @resources_all_downvotes = resource_all_votes.where(vote_type: 'downvote').count

    render json: @resources_all_downvotes
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vote_params
      params.require(:vote).permit(:user_id, :resource_id, :vote_type)
    end
end
