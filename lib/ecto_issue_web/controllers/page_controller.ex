defmodule EctoIssueWeb.PageController do
  use EctoIssueWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
