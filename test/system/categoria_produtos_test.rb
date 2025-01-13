require "application_system_test_case"

class CategoriaProdutosTest < ApplicationSystemTestCase
  setup do
    @categoria_produto = categoria_produtos(:one)
  end

  test "visiting the index" do
    visit categoria_produtos_url
    assert_selector "h1", text: "Categoria produtos"
  end

  test "should create categoria produto" do
    visit categoria_produtos_url
    click_on "New categoria produto"

    fill_in "Categoria", with: @categoria_produto.categoria_id
    fill_in "Produto", with: @categoria_produto.produto_id
    click_on "Create Categoria produto"

    assert_text "Categoria produto was successfully created"
    click_on "Back"
  end

  test "should update Categoria produto" do
    visit categoria_produto_url(@categoria_produto)
    click_on "Edit this categoria produto", match: :first

    fill_in "Categoria", with: @categoria_produto.categoria_id
    fill_in "Produto", with: @categoria_produto.produto_id
    click_on "Update Categoria produto"

    assert_text "Categoria produto was successfully updated"
    click_on "Back"
  end

  test "should destroy Categoria produto" do
    visit categoria_produto_url(@categoria_produto)
    click_on "Destroy this categoria produto", match: :first

    assert_text "Categoria produto was successfully destroyed"
  end
end
