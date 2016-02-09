class ConceptsController < InheritedResources::Base

  def show
    @concept = Concept.find(params[:id])
    @roadmap = @concept.roadmap
  end

  private

    def concept_params
      params.require(:concept).permit(:roadmap_id, :topic_id, :position, :title, :content)
    end
end

