require 'test_helper'

class OccurencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @occurrence = occurrences(:one)
  end

  test "should get index" do
    get occurrences_url
    assert_response :success
  end

  test "should get new" do
    get new_occurrence_url
    assert_response :success
  end

  test "should create occurrence" do
    assert_difference('Occurence.count') do
      post occurrences_url, params: { occurrence: { description: @occurrence.description, end: @occurrence.end, solved: @occurrence.solved, title: @occurrence.title, user_id: @occurrence.user_id } }
    end

    assert_redirected_to occurrence_url(Occurence.last)
  end

  test "should show occurrence" do
    get occurrence_url(@occurrence)
    assert_response :success
  end

  test "should get edit" do
    get edit_occurrence_url(@occurrence)
    assert_response :success
  end

  test "should update occurrence" do
    patch occurrence_url(@occurrence), params: { occurrence: { description: @occurrence.description, end: @occurrence.end, solved: @occurrence.solved, title: @occurrence.title, user_id: @occurrence.user_id } }
    assert_redirected_to occurrence_url(@occurrence)
  end

  test "should destroy occurrence" do
    assert_difference('Occurence.count', -1) do
      delete occurrence_url(@occurrence)
    end

    assert_redirected_to occurrences_url
  end
end
