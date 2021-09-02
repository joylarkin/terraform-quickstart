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
member_id   = "2d239ff869"
description = "joy phone"
network_id  = zerotier_network.hello.id
}

resource "zerotier_member" "jl" {
name        = "jl"
member_id   = "045a541f06"
description = "joy's laptop"
network_id  = zerotier_network.hello.id
}
