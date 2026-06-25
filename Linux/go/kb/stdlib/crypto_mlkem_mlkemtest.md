# crypto/mlkem/mlkemtest (Go standard library)

Package mlkemtest provides testing functions for the ML-KEM algorithm.

Import path: crypto/mlkem/mlkemtest   Toolchain: go1.26.4

package mlkemtest // import "crypto/mlkem/mlkemtest"

Package mlkemtest provides testing functions for the ML-KEM algorithm.

FUNCTIONS

func Encapsulate1024(ek *mlkem.EncapsulationKey1024, random []byte) (sharedKey, ciphertext []byte, err error)
    Encapsulate1024 implements derandomized ML-KEM-1024 encapsulation
    (ML-KEM.Encaps_internal from FIPS 203) using the provided encapsulation key
    ek and 32 bytes of randomness.

    It must only be used for known-answer tests.

func Encapsulate768(ek *mlkem.EncapsulationKey768, random []byte) (sharedKey, ciphertext []byte, err error)
    Encapsulate768 implements derandomized ML-KEM-768 encapsulation
    (ML-KEM.Encaps_internal from FIPS 203) using the provided encapsulation key
    ek and 32 bytes of randomness.

    It must only be used for known-answer tests.
