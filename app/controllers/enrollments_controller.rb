class EnrollmentsController < InheritedResources::Base

  def show
    @enrollment = Enrollment.find(params[:id])
    @roadmap = @enrollment.roadmap
  end

  private

    def enrollment_params
      params.require(:enrollment).permit(:user_id, :section_id)
    end
end

