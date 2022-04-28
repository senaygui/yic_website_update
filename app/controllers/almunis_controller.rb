class AlmunisController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_almuni, only: %i[ show edit update destroy ]

  # GET /almunis or /almunis.json
  def index
    # params.permit(:q)
    @request = Request.search(params[:q])
    if params[:q]&&params[:q][:track_number_eq].length!=0
    @requests= @request.result
    else
      @requests=nil
    end
    @marketing = MarketingSection.all
  end

  # GET /almunis/1 or /almunis/1.json
  def show
    # @search = Almuni.search(params[:q])
  end

  # GET /almunis/new
  def new
    @almuni = Almuni.new
  end

  # GET /almunis/1/edit
  def edit
  end

  # POST /almunis or /almunis.json
  def create
    @almuni = Almuni.new(almuni_params)

    respond_to do |format|
      if @almuni.save
        format.html { redirect_to @almuni, notice: "Almuni was successfully created." }
        format.json { render :show, status: :created, location: @almuni }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @almuni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /almunis/1 or /almunis/1.json
  def update
    respond_to do |format|
      if @almuni.update(almuni_params)
        format.html { redirect_to @almuni, notice: "Almuni was successfully updated." }
        format.json { render :show, status: :ok, location: @almuni }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @almuni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /almunis/1 or /almunis/1.json
  def destroy
    @almuni.destroy
    respond_to do |format|
      format.html { redirect_to almunis_url, notice: "Almuni was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_almuni
      @almuni = Almuni.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def almuni_params
      params.fetch(:almuni, {})
      # params.permit(:fullname,:sex,:phone_number,:modality,:study_level,:student_id,:graduation_date,:program_name, :photo, documents: [])
    end
end
