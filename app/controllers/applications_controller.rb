class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]

  # GET /applications
  # GET /applications.json
  # def index
  #   @applications = Application.all
  # end

  # GET /applications/1
  # GET /applications/1.json
  def show
  end

  # GET /applications/new
  # def new
  #   @application = Application.new
  # end

  # GET /applications/1/edit
  # def edit
  # end

  # POST /applications
  # POST /applications.json
  def create
    @application = Application.new(application_params)
    respond_to do |format|
      if @application.save
        begin
          StudentApplicationMailer.application_confirmation(@application, @application.student_email).deliver_now
          if @application.parent_email.present?
            StudentApplicationMailer.application_confirmation(@application, @application.parent_email).deliver_now
          end
        rescue
          puts "error delivering email"
        end
        format.html { redirect_to '/', notice: 'Thanks for your application! Check your email for a confirmation' }
        format.json { render :show, status: :created, location: @application }
      else
        format.html { render 'pages/apply' }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applications/1
  # PATCH/PUT /applications/1.json
  # def update
  #   respond_to do |format|
  #     if @application.update(application_params)
  #       format.html { redirect_to @application, notice: 'Application was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @application }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @application.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /applications/1
  # # DELETE /applications/1.json
  # def destroy
  #   @application.destroy
  #   respond_to do |format|
  #     format.html { redirect_to applications_url, notice: 'Application was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:course, :section, :student_first_name, :student_last_name, :student_email, :parent_name, :parent_email, :phone, :reference, :experience)
    end
end
