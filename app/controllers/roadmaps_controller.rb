class RoadmapsController < InheritedResources::Base

  private

    def roadmap_params
      params.require(:roadmap).permit(:course_id, :name)
    end
end
