class RequestsController < ApplicationController
    def create
        @request = Request.new(request_params)
        @request.track_number=rand(1000000..9999999)
  
      respond_to do |format|
        if @request.save
            # flash[:notice]= "Comment was successfully created.your track number is #{@request.track_number}"
          format.html { redirect_to almunis_path, notice: "Request was successfully created.your Request Code is #{@request.track_number}" }
          format.json { render :show, status: :created, location: @request }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @request.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    def request_params
        params.require(:request).permit(:name_of_organization,:email,:phone_number,:student_fullname,:tempo)
      
    end
end
