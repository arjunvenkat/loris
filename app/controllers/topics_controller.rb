class TopicsController < InheritedResources::Base

  private

    def topic_params
      params.require(:topic).permit(:name, :roadmap_id, :position)
    end
end

