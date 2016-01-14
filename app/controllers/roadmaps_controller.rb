class RoadmapsController < InheritedResources::Base

  private

    def exercise_params
      params.require(:exercise).permit(:resource_id, :url, :position)
    end
end
