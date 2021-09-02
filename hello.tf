#
# Uncomment the lines below
#

resource "zerotier_network" "hello" {
name        = "hello"
description = "Hello World"
assignment_pool {
start = "192.168.42.1"
end   = "192.168.42.254"
}
route {
target = "192.168.42.0/24"
}
}

resource "zerotier_member" "JOY" {
name        = "joy"
member_id   = "xxx"
description = "joy phone"
network_id  = zerotier_network.hello.id
}

resource "zerotier_member" "jl" {
name        = "jl"
member_id   = "xxx"
description = "jl"
network_id  = zerotier_network.hello.id
}
