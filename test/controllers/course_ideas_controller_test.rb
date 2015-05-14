require 'test_helper'

class CourseIdeasControllerTest < ActionController::TestCase
  setup do
    @course_idea = course_ideas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_ideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_idea" do
    assert_difference('CourseIdea.count') do
      post :create, course_idea: { content: @course_idea.content, email: @course_idea.email }
    end

    assert_redirected_to course_idea_path(assigns(:course_idea))
  end

  test "should show course_idea" do
    get :show, id: @course_idea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_idea
    assert_response :success
  end

  test "should update course_idea" do
    patch :update, id: @course_idea, course_idea: { content: @course_idea.content, email: @course_idea.email }
    assert_redirected_to course_idea_path(assigns(:course_idea))
  end

  test "should destroy course_idea" do
    assert_difference('CourseIdea.count', -1) do
      delete :destroy, id: @course_idea
    end

    assert_redirected_to course_ideas_path
  end
end
