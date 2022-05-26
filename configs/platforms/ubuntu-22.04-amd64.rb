platform "ubuntu-22.04-amd64" do |plat|
  plat.inherit_from_default

  packages = %w(
    libbz2-dev
    libreadline-dev
    libselinux1-dev
    openjdk-8-jre-headless
    gcc
    swig
    systemtap-sdt-dev
    zlib1g-dev
    cmake
  )
  plat.provision_with "export DEBIAN_FRONTEND=noninteractive && apt-get update -qq && apt-get install -qy --no-install-recommends #{packages.join(' ')}"
  plat.provision_with "curl https://artifactory.delivery.puppetlabs.net/artifactory/api/gpg/key/public | apt-key add -"
end
