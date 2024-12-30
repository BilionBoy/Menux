require "test_helper"

class TablesControllerTest < ActionDispatch::IntegrationTest
  test "should get datatables" do
    get tables_datatables_url
    assert_response :success
  end

  test "should get tabelas" do
    get tables_tabelas_url
    assert_response :success
  end
end
