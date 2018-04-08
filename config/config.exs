# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_meetup,
  ecto_repos: [ElixirMeetup.Repo]

# Configures the endpoint
config :elixir_meetup, ElixirMeetupWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "l84E0Qv4NF/NJ9lEoNd2bXpTlolqLjifKKTjQZSGF0bxMFWLB4V5KWpXKvbIQ53Y",
  render_errors: [view: ElixirMeetupWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirMeetup.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
