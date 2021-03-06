defmodule SiteEncrypt do
  @type config :: %{
          run_client?: boolean,
          ca_url: String.t() | {:local_acme_server, %{port: pos_integer, adapter: module}},
          domain: String.t(),
          extra_domains: [String.t()],
          email: String.t(),
          base_folder: String.t(),
          renew_interval: pos_integer(),
          log_level: log_level
        }

  @type log_level :: :none | Logger.level()

  @callback config() :: config
  @callback handle_new_cert(config) :: any
end
