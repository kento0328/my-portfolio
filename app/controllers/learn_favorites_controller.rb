class LearnFavoritesController < ApplicationController
  before_action :set_learn_favorite, only: %i[ show edit update destroy ]

  # GET /learn_favorites or /learn_favorites.json
  def index
    @learn_favorites = LearnFavorite.all
  end

  # GET /learn_favorites/1 or /learn_favorites/1.json
  def show
  end

  # GET /learn_favorites/new
  def new
    @learn_favorite = LearnFavorite.new
  end

  # GET /learn_favorites/1/edit
  def edit
  end

  # POST /learn_favorites or /learn_favorites.json
  def create
    @learn_favorite = LearnFavorite.new(learn_favorite_params)

    respond_to do |format|
      if @learn_favorite.save
        format.html { redirect_to learn_favorite_url(@learn_favorite), notice: "Learn favorite was successfully created." }
        format.json { render :show, status: :created, location: @learn_favorite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @learn_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learn_favorites/1 or /learn_favorites/1.json
  def update
    respond_to do |format|
      if @learn_favorite.update(learn_favorite_params)
        format.html { redirect_to learn_favorite_url(@learn_favorite), notice: "Learn favorite was successfully updated." }
        format.json { render :show, status: :ok, location: @learn_favorite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @learn_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learn_favorites/1 or /learn_favorites/1.json
  def destroy
    @learn_favorite.destroy

    respond_to do |format|
      format.html { redirect_to learn_favorites_url, notice: "Learn favorite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learn_favorite
      @learn_favorite = LearnFavorite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def learn_favorite_params
      params.require(:learn_favorite).permit(:user_id, :learn_id)
    end
end
