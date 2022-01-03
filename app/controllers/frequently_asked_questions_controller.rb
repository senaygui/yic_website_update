class FrequentlyAskedQuestionsController < InheritedResources::Base

  private

    def frequently_asked_question_params
      params.require(:frequently_asked_question).permit(:question, :answer)
    end

end
