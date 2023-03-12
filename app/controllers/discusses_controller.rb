class DiscussesController < ApplicationController
  before_action :set_discuss, only: %i[ show edit update destroy ]

  # GET /discusses or /discusses.json
  def index
    @discusses = Discuss.all
  end

  # GET /discusses/1 or /discusses/1.json
  def show
  end

  # GET /discusses/new
  def new
    @discuss = Discuss.new
  end

  # GET /discusses/1/edit
  def edit
  end

  # POST /discusses or /discusses.json
  def create
    @discuss = Discuss.new(discuss_params)

    respond_to do |format|
      if @discuss.save
        format.html { redirect_to discuss_url(@discuss), notice: "Discuss was successfully created." }
        format.json { render :show, status: :created, location: @discuss }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @discuss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discusses/1 or /discusses/1.json
  def update
    respond_to do |format|
      if @discuss.update(discuss_params)
        format.html { redirect_to discuss_url(@discuss), notice: "Discuss was successfully updated." }
        format.json { render :show, status: :ok, location: @discuss }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @discuss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discusses/1 or /discusses/1.json
  def destroy
    @discuss.destroy

    respond_to do |format|
      format.html { redirect_to discusses_url, notice: "Discuss was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discuss
      @discuss = Discuss.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def discuss_params
      params.require(:discuss).permit(:id, :title, :content, :comment)
    end
end
