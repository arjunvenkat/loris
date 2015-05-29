require 'test_helper'

class ApplicationsControllerTest < ActionController::TestCase
  setup do
    @application = applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create application" do
    assert_difference('Application.count') do
      post :create, application: { course: @application.course, experience: @application.experience, parent_email: @application.parent_email, parent_name: @application.parent_name, phone: @application.phone, reference: @application.reference, section: @application.section, student_email: @application.student_email, student_first_name: @application.student_first_name, student_last_name: @application.student_last_name }
    end

    assert_redirected_to application_path(assigns(:application))
  end

  test "should show application" do
    get :show, id: @application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @application
    assert_response :success
  end

  test "should update application" do
    patch :update, id: @application, application: { course: @application.course, experience: @application.experience, parent_email: @application.parent_email, parent_name: @application.parent_name, phone: @application.phone, reference: @application.reference, section: @application.section, student_email: @application.student_email, student_first_name: @application.student_first_name, student_last_name: @application.student_last_name }
    assert_redirected_to application_path(assigns(:application))
  end

  test "should destroy application" do
    assert_difference('Application.count', -1) do
      delete :destroy, id: @application
    end

    assert_redirected_to applications_path
  end
end
