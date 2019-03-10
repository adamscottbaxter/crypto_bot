defmodule TradeWeb.PageController do
  use TradeWeb, :controller

  def index(conn, _params) do
    balances = Trading.Account.balances()
    render(conn, "index.html", balances: balances)
  end
end
