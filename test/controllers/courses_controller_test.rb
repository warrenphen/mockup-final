require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  # setup do
  #   @course = courses(:one)
  # end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_not_nil build_stubbed(:course)
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: attributes_for(:course)
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "shouldn't create course if price is negative" do
      assert_no_difference('Course.count') do
        post :create, course: attributes_for(:invalid_course)
      end
      assert_template :new
  end

  # test "should show course" do
  #   get :show, id: @course
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @course
  #   assert_response :success
  # end

  # test "should update course" do
  #   patch :update, id: @course, course: { description: @course.description, name: @course.name, price: @course.price }
  #   assert_redirected_to course_path(assigns(:course))
  # end

  # test "should destroy course" do
  #   assert_difference('Course.count', -1) do
  #     delete :destroy, id: @course
  #   end

  #   assert_redirected_to courses_path
  # end
end
