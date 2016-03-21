require 'test_helper'

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get dogs_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_url
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post dogs_url, params: { dog: { age: @dog.age, breed: @dog.breed, cgc: @dog.cgc, description: @dog.description, gender: @dog.gender, image: @dog.image, member: @dog.member, name: @dog.name, registration: @dog.registration, renewal_date: @dog.renewal_date, retired: @dog.retired, therapy_group: @dog.therapy_group } }
    end

    assert_redirected_to dog_path(Dog.last)
  end

  test "should show dog" do
    get dog_url(@dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_url(@dog)
    assert_response :success
  end

  test "should update dog" do
    patch dog_url(@dog), params: { dog: { age: @dog.age, breed: @dog.breed, cgc: @dog.cgc, description: @dog.description, gender: @dog.gender, image: @dog.image, member: @dog.member, name: @dog.name, registration: @dog.registration, renewal_date: @dog.renewal_date, retired: @dog.retired, therapy_group: @dog.therapy_group } }
    assert_redirected_to dog_path(@dog)
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete dog_url(@dog)
    end

    assert_redirected_to dogs_path
  end
end
