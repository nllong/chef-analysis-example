name "asset-score"
description "Install and configure system for doing asset score analysis"

run_list([
             # Default iptables setup on all servers.
             "role[openstudio]",
             "recipe[mongodb::server]",
             "recipe[subversion::client]",
             "recipe[R]",
         ])




