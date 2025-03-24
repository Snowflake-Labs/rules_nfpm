load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_nfpm_internal_dependencies():
    #    _buildifier_dependencies()
    _skylib_dependencies()

#    _stardoc_dependencies()

#def _buildifier_dependencies():
#    maybe(
#        http_archive,
#        name = "com_github_bazelbuild_buildtools",
#        strip_prefix = "buildtools-8.0.3",
#        url = "https://github.com/bazelbuild/buildtools/archive/refs/tags/8.0.3.tar.gz",
#    )
#
#    maybe(
#        http_archive,
#        name = "com_google_protobuf",
#        strip_prefix = "protobuf-30.1",
#        sha256 = "1451b03faec83aed17cdc71671d1bbdfd72e54086b827f5f6fd02bf7a4041b68",
#        urls = ["https://github.com/protocolbuffers/protobuf/releases/download/v30.1/protobuf-30.1.tar.gz"],
#    )

def _skylib_dependencies():
    maybe(
        http_archive,
        name = "bazel_skylib",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz",
        ],
        sha256 = "bc283cdfcd526a52c3201279cda4bc298652efa898b10b4db0837dc51652756f",
    )

#def _stardoc_dependencies():
#    maybe(
#        http_archive,
#        name = "io_bazel_stardoc",
#        sha256 = "ca933f39f2a6e0ad392fa91fd662545afcbd36c05c62365538385d35a0323096",
#        urls = [
#            "https://mirror.bazel.build/github.com/bazelbuild/stardoc/releases/download/0.8.0/stardoc-0.8.0.tar.gz",
#            "https://github.com/bazelbuild/stardoc/releases/download/0.8.0/stardoc-0.8.0.tar.gz",
#        ],
#    )
#
#    maybe(
#        http_archive,
#        name = "rules_python",
#        sha256 = "2ef40fdcd797e07f0b6abda446d1d84e2d9570d234fddf8fcd2aa262da852d1c",
#        strip_prefix = "rules_python-1.2.0",
#        url = "https://github.com/bazelbuild/rules_python/releases/download/1.2.0/rules_python-1.2.0.tar.gz",
#    )
#    http_archive(
#        name = "rules_proto",
#        sha256 = "14a225870ab4e91869652cfd69ef2028277fc1dc4910d65d353b62d6e0ae21f4",
#        strip_prefix = "rules_proto-7.1.0",
#        url = "https://github.com/bazelbuild/rules_proto/releases/download/7.1.0/rules_proto-7.1.0.tar.gz",
#    )
#
#    RULES_JVM_EXTERNAL_TAG = "6.7"
#    RULES_JVM_EXTERNAL_SHA = "a1e351607f04fed296ba33c4977d3fe2a615ed50df7896676b67aac993c53c18"
#    http_archive(
#        name = "rules_jvm_external",
#        strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
#        sha256 = RULES_JVM_EXTERNAL_SHA,
#        url = "https://github.com/bazel-contrib/rules_jvm_external/releases/download/%s/rules_jvm_external-%s.tar.gz" % (RULES_JVM_EXTERNAL_TAG, RULES_JVM_EXTERNAL_TAG),
#    )
