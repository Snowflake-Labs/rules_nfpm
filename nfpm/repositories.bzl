load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_nfpm_dependencies():
    maybe(
        http_archive,
        name = "io_bazel_rules_go",
        sha256 = "f2d15bea3e241aa0e3a90fb17a82e6a8ab12214789f6aeddd53b8d04316d2b7c",
        urls = [
            "https://mirror.bazel.build/github.com/bazel-contrib/rules_go/releases/download/v0.54.0/rules_go-v0.54.0.zip",
            "https://github.com/bazel-contrib/rules_go/releases/download/v0.54.0/rules_go-v0.54.0.zip",
        ],
    )

    maybe(
        http_archive,
        name = "bazel_gazelle",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.42.0/bazel-gazelle-v0.42.0.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.42.0/bazel-gazelle-v0.42.0.tar.gz",
        ],
    )
