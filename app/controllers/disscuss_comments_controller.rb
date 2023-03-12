class DisscussCommentsController < ApplicationController
  before_action :set_disscuss_comment, only: %i[ show edit update destroy ]

  # GET /disscuss_comments or /disscuss_comments.json
  def index
    @disscuss_comments = DisscussComment.all
  end

  # GET /disscuss_comments/1 or /disscuss_comments/1.json
  def show
  end

  # GET /disscuss_comments/new
  def new
    @disscuss_comment = DisscussComment.new
  end

  # GET /disscuss_comments/1/edit
  def edit
  end

  # POST /disscuss_comments or /disscuss_comments.json
  def create
    @disscuss_comment = DisscussComment.new(disscuss_comment_params)

    respond_to do |format|
      if @disscuss_comment.save
        format.html { redirect_to disscuss_comment_url(@disscuss_comment), notice: "Disscuss comment was successfully created." }
        format.json { render :show, status: :created, location: @disscuss_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @disscuss_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disscuss_comments/1 or /disscuss_comments/1.json
  def update
    respond_to do |format|
      if @disscuss_comment.update(disscuss_comment_params)
        format.html { redirect_to disscuss_comment_url(@disscuss_comment), notice: "Disscuss comment was successfully updated." }
        format.json { render :show, status: :ok, location: @disscuss_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @disscuss_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disscuss_comments/1 or /disscuss_comments/1.json
  def destroy
    @disscuss_comment.destroy

    respond_to do |format|
      format.html { redirect_to disscuss_comments_url, notice: "Disscuss comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disscuss_comment
      @disscuss_comment = DisscussComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def disscuss_comment_params
      params.require(:disscuss_comment).permit(:discuss_id, :discuss_comment, :user_id)
    end
end
