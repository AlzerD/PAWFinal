require 'test_helper'

class MatchPicksControllerTest < ActionController::TestCase
  setup do
    @match_pick = match_picks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_picks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_pick" do
    assert_difference('MatchPick.count') do
      post :create, match_pick: { closed: @match_pick.closed, matchID: @match_pick.matchID, points: @match_pick.points, result: @match_pick.result, userID: @match_pick.userID, userPick: @match_pick.userPick }
    end

    assert_redirected_to match_pick_path(assigns(:match_pick))
  end

  test "should show match_pick" do
    get :show, id: @match_pick
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_pick
    assert_response :success
  end

  test "should update match_pick" do
    patch :update, id: @match_pick, match_pick: { closed: @match_pick.closed, matchID: @match_pick.matchID, points: @match_pick.points, result: @match_pick.result, userID: @match_pick.userID, userPick: @match_pick.userPick }
    assert_redirected_to match_pick_path(assigns(:match_pick))
  end

  test "should destroy match_pick" do
    assert_difference('MatchPick.count', -1) do
      delete :destroy, id: @match_pick
    end

    assert_redirected_to match_picks_path
  end
end
