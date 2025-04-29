load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

def rules_nfpm_setup(nogo = None):
    go_rules_dependencies()
    go_register_toolchains(version = "1.24.2", nogo = nogo)

    gazelle_dependencies(go_repository_default_config = "//:WORKSPACE.bazel", go_sdk = "go_sdk")
