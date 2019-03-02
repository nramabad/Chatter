# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chatter,
  ecto_repos: [Chatter.Repo]

config :chatter, Chatter.Auth.Guardian,
  issuer: "chatter", # Name of your app/company/product
  secret_key: "oBrQzlO1QPqE0WuyZYnxXvTZh/WH3v2sgtH/bNnaY4O7fvOIRhE4SiPb6HvV+ZP0"

# Configures the endpoint
config :chatter, ChatterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "udv+aX/eSWL1FQwCwELxLtm5YeZJ/nf8/KrdSPzy5V3rvqlvDQ298uRAoRwzrBo5",
  render_errors: [view: ChatterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chatter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
