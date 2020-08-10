require 'test_helper'

class FormEmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get form_employees_new_url
    assert_response :success
  end

end
