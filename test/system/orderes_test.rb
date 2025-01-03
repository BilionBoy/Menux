require "application_system_test_case"

class OrderesTest < ApplicationSystemTestCase
  setup do
    @order = orderes(:one)
  end

  test "visiting the index" do
    visit orderes_url
    assert_selector "h1", text: "Orderes"
  end

  test "should create order" do
    visit orderes_url
    click_on "New order"

    fill_in "Customer", with: @order.customer_id
    fill_in "Delivery address", with: @order.delivery_address
    fill_in "Delivery method", with: @order.delivery_method
    fill_in "Establishment", with: @order.establishment_id
    fill_in "Status", with: @order.status
    fill_in "Total price", with: @order.total_price
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Customer", with: @order.customer_id
    fill_in "Delivery address", with: @order.delivery_address
    fill_in "Delivery method", with: @order.delivery_method
    fill_in "Establishment", with: @order.establishment_id
    fill_in "Status", with: @order.status
    fill_in "Total price", with: @order.total_price
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
