# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :trade,
  ecto_repos: [Trade.Repo]

# Configures the endpoint
config :trade, TradeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "INdbtqEg7zY5+uYu3QS3j6Oi9FtWOTuMZCOrm6EYhnAwUT3PZVD1WQeCILMDGEnV",
  render_errors: [view: TradeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Trade.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

config :binance,
  api_key: System.get_env("BINANCE_API_KEY"),
  secret_key: System.get_env("BINANCE_API_SECRET")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
