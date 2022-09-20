require "test_helper"

class SpeakerListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speaker_list = speaker_lists(:one)
  end

  test "should get index" do
    get speaker_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_speaker_list_url
    assert_response :success
  end

  test "should create speaker_list" do
    assert_difference('SpeakerList.count') do
      post speaker_lists_url, params: { speaker_list: { speakerID: @speaker_list.speakerID, speakerListID: @speaker_list.speakerListID } }
    end

    assert_redirected_to speaker_list_url(SpeakerList.last)
  end

  test "should show speaker_list" do
    get speaker_list_url(@speaker_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_speaker_list_url(@speaker_list)
    assert_response :success
  end

  test "should update speaker_list" do
    patch speaker_list_url(@speaker_list), params: { speaker_list: { speakerID: @speaker_list.speakerID, speakerListID: @speaker_list.speakerListID } }
    assert_redirected_to speaker_list_url(@speaker_list)
  end

  test "should destroy speaker_list" do
    assert_difference('SpeakerList.count', -1) do
      delete speaker_list_url(@speaker_list)
    end

    assert_redirected_to speaker_lists_url
  end
end
