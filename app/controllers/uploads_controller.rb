class UploadsController < InheritedResources::Base

  private

    def upload_params
      params.require(:upload).permit(:name, :file, :user_id)
    end
end

