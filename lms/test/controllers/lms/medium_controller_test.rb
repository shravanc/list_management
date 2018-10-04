require 'test_helper'

module Lms
  class MediumControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get medium_index_url
      assert_response :success
    end

    test "should get create" do
      get medium_create_url
      assert_response :success
    end

  end
end
