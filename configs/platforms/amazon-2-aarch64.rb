platform "amazon-2-aarch64" do |plat|
  plat.servicedir "/usr/lib/systemd/system"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "systemd"

  packages = [
    "autoconf",
    "automake",
    "bison",
    "binutils",
    "cmake",
    "createrepo",
    "gcc",
    "gcc-c++",
    "make",
    "libsepol",
    "libsepol-devel",
    "libselinux-devel",
    "pkgconfig",
    "readline-devel",
    "rpm-build",
    "rpm-libs",
    "rpm-sign",
    "rpmdevtools",
    "rsync",
    "swig",
    "yum-utils",
    "zlib-devel"
  ]
  plat.provision_with "yum install --assumeyes #{packages.join(' ')}"

  plat.install_build_dependencies_with "yum install --assumeyes"
  plat.vmpooler_template "amazon-7-arm64"
end
