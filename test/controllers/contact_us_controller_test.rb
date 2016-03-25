require 'test_helper'

class ContactUsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_u = contact_us(:one)
  end

  test "should get index" do
    get contact_us_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_u_url
    assert_response :success
  end

  test "should create contact_u" do
    assert_difference('ContactU.count') do
      post contact_us_url, params: { contact_u: { content: @contact_u.content, email: @contact_u.email, first_name: @contact_u.first_name, last_name: @contact_u.last_name } }
    end

    assert_redirected_to contact_u_path(Contact.last)
  end

  test "should show contact_u" do
    get contact_u_url(@contact_u)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_u_url(@contact_u)
    assert_response :success
  end

  test "should update contact_u" do
    patch contact_u_url(@contact_u), params: { contact_u: { content: @contact_u.content, email: @contact_u.email, first_name: @contact_u.first_name, last_name: @contact_u.last_name } }
    assert_redirected_to contact_u_path(@contact_u)
  end

  test "should destroy contact_u" do
    assert_difference('ContactU.count', -1) do
      delete contact_u_url(@contact_u)
    end

    assert_redirected_to contact_us_path
  end
end
