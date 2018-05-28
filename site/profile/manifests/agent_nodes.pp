class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
}

node /^web/ { 
  include role::app_server
}
node /^db/ {
  include role::db_server
}
