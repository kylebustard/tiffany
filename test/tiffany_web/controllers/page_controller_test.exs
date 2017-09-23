defmodule TiffanyWeb.PageControllerTest do
  use TiffanyWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Alexandria Tiffany Studio!"
  end
end
