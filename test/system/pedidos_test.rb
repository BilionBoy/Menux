require "application_system_test_case"

class PedidosTest < ApplicationSystemTestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "visiting the index" do
    visit pedidos_url
    assert_selector "h1", text: "Pedidos"
  end

  test "should create pedido" do
    visit pedidos_url
    click_on "New pedido"

    fill_in "Produto", with: @pedido.produto_id
    fill_in "Quantidade", with: @pedido.quantidade
    fill_in "Status", with: @pedido.status
    fill_in "Total", with: @pedido.total
    fill_in "User", with: @pedido.user_id
    click_on "Create Pedido"

    assert_text "Pedido was successfully created"
    click_on "Back"
  end

  test "should update Pedido" do
    visit pedido_url(@pedido)
    click_on "Edit this pedido", match: :first

    fill_in "Produto", with: @pedido.produto_id
    fill_in "Quantidade", with: @pedido.quantidade
    fill_in "Status", with: @pedido.status
    fill_in "Total", with: @pedido.total
    fill_in "User", with: @pedido.user_id
    click_on "Update Pedido"

    assert_text "Pedido was successfully updated"
    click_on "Back"
  end

  test "should destroy Pedido" do
    visit pedido_url(@pedido)
    click_on "Destroy this pedido", match: :first

    assert_text "Pedido was successfully destroyed"
  end
end
