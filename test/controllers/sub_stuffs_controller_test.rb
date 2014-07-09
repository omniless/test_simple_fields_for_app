require 'test_helper'

class SubStuffsControllerTest < ActionController::TestCase
  setup do
    @sub_stuff = sub_stuffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_stuffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_stuff" do
    assert_difference('SubStuff.count') do
      post :create, sub_stuff: { name: @sub_stuff.name }
    end

    assert_redirected_to sub_stuff_path(assigns(:sub_stuff))
  end

  test "should show sub_stuff" do
    get :show, id: @sub_stuff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_stuff
    assert_response :success
  end

  test "should update sub_stuff" do
    patch :update, id: @sub_stuff, sub_stuff: { name: @sub_stuff.name }
    assert_redirected_to sub_stuff_path(assigns(:sub_stuff))
  end

  test "should destroy sub_stuff" do
    assert_difference('SubStuff.count', -1) do
      delete :destroy, id: @sub_stuff
    end

    assert_redirected_to sub_stuffs_path
  end
end
