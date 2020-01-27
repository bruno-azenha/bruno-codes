# Since configuration is shared in umbrella projects, this file
# should only configure the :bruno_codes_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :bruno_codes_web, BrunoCodesWeb.Endpoint,
  http: [port: 4002],
  server: false
