require 'test_helper'

class ConcertHallsControllerTest < ActionController::TestCase
  setup do
    @concert_hall = concert_halls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:concert_halls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concert_hall" do
    assert_difference('ConcertHall.count') do
      post :create, concert_hall: { city: @concert_hall.city, family_friendly: @concert_hall.family_friendly, name: @concert_hall.name, state: @concert_hall.state }
    end

    assert_redirected_to concert_hall_path(assigns(:concert_hall))
  end

  test "should show concert_hall" do
    get :show, id: @concert_hall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @concert_hall
    assert_response :success
  end

  test "should update concert_hall" do
    patch :update, id: @concert_hall, concert_hall: { city: @concert_hall.city, family_friendly: @concert_hall.family_friendly, name: @concert_hall.name, state: @concert_hall.state }
    assert_redirected_to concert_hall_path(assigns(:concert_hall))
  end

  test "should destroy concert_hall" do
    assert_difference('ConcertHall.count', -1) do
      delete :destroy, id: @concert_hall
    end

    assert_redirected_to concert_halls_path
  end
end
