Bureaucrat.start
ExUnit.start(exclude: [:ca_integration], formatters: [ExUnit.CLIFormatter, Bureaucrat.Formatter])

Ecto.Adapters.SQL.Sandbox.mode(NervesHubWebCore.Repo, :manual)
