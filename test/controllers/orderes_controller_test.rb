require "test_helper"

class OrderesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orderes(:one)
  end

  test "should get index" do
    get orderes_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orderes_url, params: { order: { customer_id: @order.customer_id, delivery_address: @order.delivery_address, delivery_method: @order.delivery_method, establishment_id: @order.establishment_id, status: @order.status, total_price: @order.total_price } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { customer_id: @order.customer_id, delivery_address: @order.delivery_address, delivery_method: @order.delivery_method, establishment_id: @order.establishment_id, status: @order.status, total_price: @order.total_price } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order)
    end

    assert_redirected_to orderes_url
  end
end
