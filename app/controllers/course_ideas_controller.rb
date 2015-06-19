class CourseIdeasController < ApplicationController
  before_action :set_course_idea, only: [:show, :edit, :update, :destroy]

  # GET /course_ideas
  # GET /course_ideas.json
  def index
    @course_ideas = CourseIdea.all
  end

  # GET /course_ideas/1
  # GET /course_ideas/1.json
  def show
  end

  # GET /course_ideas/new
  def new
    @course_idea = CourseIdea.new
  end

  # GET /course_ideas/1/edit
  def edit
  end

  # POST /course_ideas
  # POST /course_ideas.json
  def create
    @course_idea = CourseIdea.new(course_idea_params)

    respond_to do |format|
      if @course_idea.save
        CourseIdeaMailer.new_course_idea(@course_idea).deliver_now
        format.html { redirect_to :back, notice: 'Thanks for your feedback!' }
        format.json { render :show, status: :created, location: @course_idea }
      else
        format.html { render :new }
        format.json { render json: @course_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_ideas/1
  # PATCH/PUT /course_ideas/1.json
  def update
    respond_to do |format|
      if @course_idea.update(course_idea_params)
        format.html { redirect_to @course_idea, notice: 'Course idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_idea }
      else
        format.html { render :edit }
        format.json { render json: @course_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_ideas/1
  # DELETE /course_ideas/1.json
  def destroy
    @course_idea.destroy
    respond_to do |format|
      format.html { redirect_to course_ideas_url, notice: 'Course idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_idea
      @course_idea = CourseIdea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_idea_params
      params.require(:course_idea).permit(:email, :content)
    end
end
