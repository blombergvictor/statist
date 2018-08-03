require 'test_helper'

class EmojisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emoji = emojis(:one)
  end

  test "should get index" do
    get emojis_url
    assert_response :success
  end

  test "should get new" do
    get new_emoji_url
    assert_response :success
  end

  test "should create emoji" do
    assert_difference('Emoji.count') do
      post emojis_url, params: { emoji: { icon: @emoji.icon, name: @emoji.name } }
    end

    assert_redirected_to emoji_url(Emoji.last)
  end

  test "should show emoji" do
    get emoji_url(@emoji)
    assert_response :success
  end

  test "should get edit" do
    get edit_emoji_url(@emoji)
    assert_response :success
  end

  test "should update emoji" do
    patch emoji_url(@emoji), params: { emoji: { icon: @emoji.icon, name: @emoji.name } }
    assert_redirected_to emoji_url(@emoji)
  end

  test "should destroy emoji" do
    assert_difference('Emoji.count', -1) do
      delete emoji_url(@emoji)
    end

    assert_redirected_to emojis_url
  end
end
