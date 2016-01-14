class ConceptsController < InheritedResources::Base

  private

    def concept_params
      params.require(:concept).permit(:roadmap_id, :position, :title, :content)
    end
end
