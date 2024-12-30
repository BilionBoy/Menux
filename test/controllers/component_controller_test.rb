require "test_helper"

class ComponentControllerTest < ActionDispatch::IntegrationTest
  test "should get avatars" do
    get component_avatars_url
    assert_response :success
  end

  test "should get buttoes" do
    get component_buttoes_url
    assert_response :success
  end

  test "should get fontes" do
    get component_fontes_url
    assert_response :success
  end

  test "should get gridsystem" do
    get component_gridsystem_url
    assert_response :success
  end

  test "should get notificacoes" do
    get component_notificacoes_url
    assert_response :success
  end

  test "should get paineis" do
    get component_paineis_url
    assert_response :success
  end

  test "should get simpleicons" do
    get component_simpleicons_url
    assert_response :success
  end

  test "should get alertas" do
    get component_alertas_url
    assert_response :success
  end

  test "should get tipografia" do
    get component_tipografia_url
    assert_response :success
  end
end
