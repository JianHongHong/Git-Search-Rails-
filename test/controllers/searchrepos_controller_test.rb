require 'test_helper'

class SearchreposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @searchrepo = searchrepos(:one)
  end

  test "should get index" do
    get searchrepos_url
    assert_response :success
  end

  test "should get new" do
    get new_searchrepo_url
    assert_response :success
  end

  test "should create searchrepo" do
    assert_difference('Searchrepo.count') do
      post searchrepos_url, params: { searchrepo: { body: @searchrepo.body, date: @searchrepo.date, title: @searchrepo.title } }
    end

    assert_redirected_to searchrepo_url(Searchrepo.last)
  end

  test "should show searchrepo" do
    get searchrepo_url(@searchrepo)
    assert_response :success
  end

  test "should get edit" do
    get edit_searchrepo_url(@searchrepo)
    assert_response :success
  end

  test "should update searchrepo" do
    patch searchrepo_url(@searchrepo), params: { searchrepo: { body: @searchrepo.body, date: @searchrepo.date, title: @searchrepo.title } }
    assert_redirected_to searchrepo_url(@searchrepo)
  end

  test "should destroy searchrepo" do
    assert_difference('Searchrepo.count', -1) do
      delete searchrepo_url(@searchrepo)
    end

    assert_redirected_to searchrepos_url
  end
end
