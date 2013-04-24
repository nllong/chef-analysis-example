name "asset-score"
description "Install and configure system for doing asset score analysis"

run_list([
             # Default iptables setup on all servers.
             "role[openstudio]",
             "recipe[mongodb::server]",
             "recipe[subversion::client]",
             "recipe[R]",
         ])


default_attributes(
    'R' => {
        'source_url' => "http://cran.r-project.org/src/contrib",
        'packages' => [
            {
                'name' => 'lhs',
                'version' => '0.10' },
            {
                'name' => 'Rserve',
                'version' => '0.6-8.1' },
            {
                'name' => 'triangle',
                'version' => '0.8' }
        ]
    }
)


