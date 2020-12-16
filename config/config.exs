# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ecto_issue,
  ecto_repos: [EctoIssue.Repo]

# Configures the endpoint
config :ecto_issue, EctoIssueWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FSMOY8r/r9qGya+uPIWN69wYX0/yHd39fhV0xitG8WTDdL+ylVK3mOpMBZiy9FYC",
  render_errors: [view: EctoIssueWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: EctoIssue.PubSub,
  live_view: [signing_salt: "xqmb5PoL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
