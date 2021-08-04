package peoplefinder.PUT.api.users.__id

default allowed = false
default visible = true
default enabled = true

allowed {
    props = input.user.attributes.properties
    props.department == "Operations"
}

allowed {
    input.user.id == input.resource.id
}

# global role
# allowed {
#   u = input.user
#   not u.enabled != true

#   some i
#   data.roles.roles[u.attributes.roles[i]].perms["aserto.authorizer.directory.Directory.CreateTenant"].allowed
# }
