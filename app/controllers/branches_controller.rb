class BranchesController < InheritedResources::Base

  private

    def branch_params
      params.require(:branch).permit(:location, :name, :phone_number, :second_phone_number, :email)
    end

end
