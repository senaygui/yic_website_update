class VisitorCommentsController < ApplicationController
    before_action :set_program, only: %i[ show edit update destroy ]

    # GET /programs/new
    def new
      @program = VisitorComment.new
    end

    # POST /programs or /programs.json
    def create
      @program = VisitorComment.new(program_params)
  
      respond_to do |format|
        if @program.save
          format.html { redirect_to root_path, notice: "Comment was successfully created." }
          format.json { render :show, status: :created, location: @program }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @program.errors, status: :unprocessable_entity }
        end
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_program
        @program = VisitorComment.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def program_params
        params.require(:visitor_comment).permit(:fullname,:category,:subject,:message,:email,:phone_number,:display_on_home_page,:main_testimonial, :photo)
      end
end
