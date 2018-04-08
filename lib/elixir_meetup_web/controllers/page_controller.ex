defmodule ElixirMeetupWeb.PageController do
  use ElixirMeetupWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
