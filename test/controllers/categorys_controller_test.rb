require "test_helper"

class CategorysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categorys(:one)
  end

  test "should get index" do
    get categorys_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should create category" do
    assert_difference("Category.count") do
      post categorys_url, params: { category: { establishment_id: @category.establishment_id, name: @category.name } }
    end

    assert_redirected_to category_url(Category.last)
  end

  test "should show category" do
    get category_url(@category)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_url(@category)
    assert_response :success
  end

  test "should update category" do
    patch category_url(@category), params: { category: { establishment_id: @category.establishment_id, name: @category.name } }
    assert_redirected_to category_url(@category)
  end

  test "should destroy category" do
    assert_difference("Category.count", -1) do
      delete category_url(@category)
    end

    assert_redirected_to categorys_url
  end
end
