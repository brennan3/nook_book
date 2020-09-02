import Config

name = "mnesia2c"

config :libcluster,
  topologies: [
    nook_book: [
      strategy: Cluster.Strategy.Epmd,
      config: [
        hosts: [
          :"nook_book@10.0.1.244",
          :"nook_book@10.0.1.206"
        ]
      ]
    ]
  ]

config :nook_book, cluster_role: System.get_env("CLUSTER_ROLE", "member") |> String.to_atom()

config :nook_book, NookBookWeb.Endpoint,
  server: true,
  http: [port: 4000],
  url: [host: "#{name}.nookbook.online"],
  cache_static_manifest: "priv/static/cache_manifest.json",
  secret_key_base: "LxyVl081UsQFpS5Bpe4n1cTjMkscPBQlO/W73tfO/CmIgIJfXELycLQzhjcY9Wfg"
