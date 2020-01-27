# Since configuration is shared in umbrella projects, this file
# should only configure the :bruno_codes_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :bruno_codes_web,
  generators: [context_app: :bruno_codes]

# Configures the endpoint
config :bruno_codes_web, BrunoCodesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+5Z9vAInUhcObFDbdWTP6R5tkcKsTkPm0Th+ObeMJxw2uL2h2JuB4/dbI0fwitLl",
  render_errors: [view: BrunoCodesWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BrunoCodesWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
