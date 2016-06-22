class LikesController < ApplicationController
  before_action :set_like, only: [:show, :update, :destroy]

  # GET /likes
  # GET /likes.json
  def index
    @likes = Like.all

    render json: @likes
  end

  # GET /likes/1
  # GET /likes/1.json
  def show
    render json: @like
  end

  # POST /likes
  # POST /likes.json
  def create
    @like = Like.new(like_params)

    if @like.save
      render json: @like, status: :created, location: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /likes/1
  # PATCH/PUT /likes/1.json
  def update
    @like = Like.find(params[:id])

    if @like.update(like_params)
      head :no_content
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # DELETE /likes/1
  # DELETE /likes/1.json
  def destroy
    @like.destroy

    head :no_content
  end

  private

    def set_like
      @like = Like.find(params[:id])
    end

    def like_params
      params.require(:like).permit(:comment_id)
    end
end
