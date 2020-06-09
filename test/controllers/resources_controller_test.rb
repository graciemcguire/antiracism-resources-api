require 'test_helper'

class ResourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resource = resources(:one)
  end

  test "should get index" do
    get resources_url, as: :json
    assert_response :success
  end

  test "should create resource" do
    assert_difference('Resource.count') do
      post resources_url, params: { resource: { approved: @resource.approved, description: @resource.description, facebook_link: @resource.facebook_link, insta_link: @resource.insta_link, kind: @resource.kind, title: @resource.title, twitter_link: @resource.twitter_link, url: @resource.url } }, as: :json
    end

    assert_response 201
  end

  test "should show resource" do
    get resource_url(@resource), as: :json
    assert_response :success
  end

  test "should update resource" do
    patch resource_url(@resource), params: { resource: { approved: @resource.approved, description: @resource.description, facebook_link: @resource.facebook_link, insta_link: @resource.insta_link, kind: @resource.kind, title: @resource.title, twitter_link: @resource.twitter_link, url: @resource.url } }, as: :json
    assert_response 200
  end

  test "should destroy resource" do
    assert_difference('Resource.count', -1) do
      delete resource_url(@resource), as: :json
    end

    assert_response 204
  end
end
