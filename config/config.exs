# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tiffany,
  ecto_repos: [Tiffany.Repo]

# Configures the endpoint
config :tiffany, TiffanyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4Ir21vooouhkp8yhunDsqpbDGdkN5vxMSjzxp7x7zxG7kpgRT9lEDmOFTw+ROlR1",
  render_errors: [view: TiffanyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tiffany.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
