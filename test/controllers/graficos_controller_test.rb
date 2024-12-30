require "test_helper"

class GraficosControllerTest < ActionDispatch::IntegrationTest
  test "should get grafico" do
    get graficos_grafico_url
    assert_response :success
  end

  test "should get minigrafico" do
    get graficos_minigrafico_url
    assert_response :success
  end
end
