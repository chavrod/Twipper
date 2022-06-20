require "test_helper"

class TwipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twip = twips(:one)
  end

  test "should get index" do
    get twips_url
    assert_response :success
  end

  test "should get new" do
    get new_twip_url
    assert_response :success
  end

  test "should create twip" do
    assert_difference("Twip.count") do
      post twips_url, params: { twip: { twip: @twip.twip } }
    end

    assert_redirected_to twip_url(Twip.last)
  end

  test "should show twip" do
    get twip_url(@twip)
    assert_response :success
  end

  test "should get edit" do
    get edit_twip_url(@twip)
    assert_response :success
  end

  test "should update twip" do
    patch twip_url(@twip), params: { twip: { twip: @twip.twip } }
    assert_redirected_to twip_url(@twip)
  end

  test "should destroy twip" do
    assert_difference("Twip.count", -1) do
      delete twip_url(@twip)
    end

    assert_redirected_to twips_url
  end
end
