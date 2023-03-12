class LearnCommentsController < ApplicationController
  before_action :set_learn_comment, only: %i[ show edit update destroy ]

  # GET /learn_comments or /learn_comments.json
  def index
    @learn_comments = LearnComment.all
  end

  # GET /learn_comments/1 or /learn_comments/1.json
  def show
  end

  # GET /learn_comments/new
  def new
    @learn_comment = LearnComment.new
  end

  # GET /learn_comments/1/edit
  def edit
  end

  # POST /learn_comments or /learn_comments.json
  def create
    @learn_comment = LearnComment.new(learn_comment_params)

    respond_to do |format|
      if @learn_comment.save
        format.html { redirect_to learn_comment_url(@learn_comment), notice: "Learn comment was successfully created." }
        format.json { render :show, status: :created, location: @learn_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @learn_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learn_comments/1 or /learn_comments/1.json
  def update
    respond_to do |format|
      if @learn_comment.update(learn_comment_params)
        format.html { redirect_to learn_comment_url(@learn_comment), notice: "Learn comment was successfully updated." }
        format.json { render :show, status: :ok, location: @learn_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @learn_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learn_comments/1 or /learn_comments/1.json
  def destroy
    @learn_comment.destroy

    respond_to do |format|
      format.html { redirect_to learn_comments_url, notice: "Learn comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learn_comment
      @learn_comment = LearnComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def learn_comment_params
      params.require(:learn_comment).permit(:learn_id, :learn_comment, :user_id)
    end
end
