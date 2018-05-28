node default {
}
node 'master.puppet.vm' {
  include role:maseter_server
}
