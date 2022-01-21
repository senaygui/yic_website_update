class HowTosController < ApplicationController
    def index
         @how_tos = HowTo.order('created_at DESC')
    end

    def show
        @how_tos = HowTo.where("title = ?", params[:id]).first
        @steps = Step.where("how_to_id = ?", @how_tos.id)
    end
end
