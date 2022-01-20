class HowTosController < ApplicationController
    def index
         @how_tos = HowTo.order('created_at DESC')
    end

    def show
        @how_tos = HowTo.find(params[:id])
        @steps = Step.where("how_to_id = ?", params[:id])
    end
end
