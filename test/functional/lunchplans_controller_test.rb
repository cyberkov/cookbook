require 'test_helper'

class LunchplansControllerTest < ActionController::TestCase
  setup do
    @lunchplan = lunchplans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lunchplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lunchplan" do
    assert_difference('Lunchplan.count') do
      post :create, :lunchplan => { :day => @lunchplan.day, :notes => @lunchplan.notes, :recipe_id => @lunchplan.recipe_id }
    end

    assert_redirected_to lunchplan_path(assigns(:lunchplan))
  end

  test "should show lunchplan" do
    get :show, :id => @lunchplan
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lunchplan
    assert_response :success
  end

  test "should update lunchplan" do
    put :update, :id => @lunchplan, :lunchplan => { :day => @lunchplan.day, :notes => @lunchplan.notes, :recipe_id => @lunchplan.recipe_id }
    assert_redirected_to lunchplan_path(assigns(:lunchplan))
  end

  test "should destroy lunchplan" do
    assert_difference('Lunchplan.count', -1) do
      delete :destroy, :id => @lunchplan
    end

    assert_redirected_to lunchplans_path
  end
end
