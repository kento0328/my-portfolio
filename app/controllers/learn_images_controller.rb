class LearnImagesController < ApplicationController
  before_action :set_learn_image, only: %i[ show edit update destroy ]

  # GET /learn_images or /learn_images.json
  def index
    @learn_images = LearnImage.all
  end

  # GET /learn_images/1 or /learn_images/1.json
  def show
  end

  # GET /learn_images/new
  def new
    @learn_image = LearnImage.new
  end

  # GET /learn_images/1/edit
  def edit
  end

  # POST /learn_images or /learn_images.json
  def create
    @learn_image = LearnImage.new(learn_image_params)

    respond_to do |format|
      if @learn_image.save
        format.html { redirect_to learn_image_url(@learn_image), notice: "Learn image was successfully created." }
        format.json { render :show, status: :created, location: @learn_image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @learn_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learn_images/1 or /learn_images/1.json
  def update
    respond_to do |format|
      if @learn_image.update(learn_image_params)
        format.html { redirect_to learn_image_url(@learn_image), notice: "Learn image was successfully updated." }
        format.json { render :show, status: :ok, location: @learn_image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @learn_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learn_images/1 or /learn_images/1.json
  def destroy
    @learn_image.destroy

    respond_to do |format|
      format.html { redirect_to learn_images_url, notice: "Learn image was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learn_image
      @learn_image = LearnImage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def learn_image_params
      params.require(:learn_image).permit(:learn_id, :learn_image)
    end
end
