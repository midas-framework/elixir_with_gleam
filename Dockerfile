FROM gleamlang/gleam:0.9.0-rc1

# NOTE the WORKDIR should not be the users home dir as the will copy container cookie into host machine
WORKDIR /opt/app
