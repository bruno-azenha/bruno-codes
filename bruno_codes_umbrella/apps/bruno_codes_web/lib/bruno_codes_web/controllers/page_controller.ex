defmodule BrunoCodesWeb.PageController do
  use BrunoCodesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
