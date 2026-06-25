# testing/cryptotest (Go standard library)

Package cryptotest provides deterministic random source testing.

Import path: testing/cryptotest   Toolchain: go1.26.4

package cryptotest // import "testing/cryptotest"

Package cryptotest provides deterministic random source testing.

FUNCTIONS

func SetGlobalRandom(t *testing.T, seed uint64)
    SetGlobalRandom sets a global, deterministic cryptographic randomness source
    for the duration of test t. It affects crypto/rand, and all implicit sources
    of cryptographic randomness in the crypto/... packages.

    SetGlobalRandom may be called multiple times in the same test to reset the
    random stream or change the seed.

    Because SetGlobalRandom affects the whole process, it cannot be used in
    parallel tests or tests with parallel ancestors.

    Note that the way cryptographic algorithms use randomness is generally
    not specified and may change over time. Thus, if a test expects a specific
    output from a cryptographic function, it may fail in the future even if it
    uses SetGlobalRandom.

    SetGlobalRandom is not supported when building against the Go Cryptographic
    Module v1.0.0 (i.e. when crypto/fips140.Version returns "v1.0.0").
