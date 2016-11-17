require 'test_helper'

class TapeTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tape_types_index_url
    assert_response :success
  end

end
