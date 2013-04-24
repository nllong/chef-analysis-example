name "openstudio"
description "Install and configure OpenStudio for use with Ruby"

run_list([
             # Default iptables setup on all servers.
             "recipe[apt]",
             "recipe[ruby_build]",
             "recipe[rbenv::system]",
             "recipe[openstudio]",
             "recipe[energyplus]",
         ])


default_attributes(
    'rbenv' => {
        'rubies' => [ '1.8.7-p371'],
        #'global' => '1.8.7-p371',
        'gems' => {
            '1.8.7-p371' => [
                { 'name' => 'bundler'},
                { 'name' => 'rake'},
                { 'name' => 'rubygems-bundler'}
            ]
        }
    },

    :openstudio => {
        :version => "0.10.5.11322",
        :checksum => "9180659c77a7fc710cb9826d40ae67c65db0d26bb4bce1a93b64d7e63f4a1f2c"
    },
    :energyplus => {
        :version => "7.2.0.006",
        :checksum => "c1ec1499f964bad8638d3c732c9bd10793dd4052a188cd06bb49288d3d962e09"
    }
)


