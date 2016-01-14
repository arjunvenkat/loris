class ExercisesController < InheritedResources::Base

  private

    def exercise_params
      params.require(:exercise).permit(:concept_id, :url, :position)
    end
end

