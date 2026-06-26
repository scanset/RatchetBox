# State (Behavioral Go design pattern)

State is a behavioral design pattern. Idiomatic Go implementation with a runnable example below.

## state.go

```go
// Package state is an example of the State Pattern.
package state

// MobileAlertStater provides a common interface for various states.
type MobileAlertStater interface {
	Alert() string
}

// MobileAlert implements an alert depending on its state.
type MobileAlert struct {
	state MobileAlertStater
}

// Alert returns a alert string
func (a *MobileAlert) Alert() string {
	return a.state.Alert()
}

// SetState changes state
func (a *MobileAlert) SetState(state MobileAlertStater) {
	a.state = state
}

// NewMobileAlert is the MobileAlert constructor.
func NewMobileAlert() *MobileAlert {
	return &MobileAlert{state: &MobileAlertVibration{}}
}

// MobileAlertVibration implements vibration alert
type MobileAlertVibration struct {
}

// Alert returns a alert string
func (a *MobileAlertVibration) Alert() string {
	return "Vrrr... Brrr... Vrrr..."
}

// MobileAlertSong implements beep alert
type MobileAlertSong struct {
}

// Alert returns a alert string
func (a *MobileAlertSong) Alert() string {
	return "White roses, white roses. Defenseless thorns..."
}

```

## state_test.go (runnable example)

```go
package state

import (
	"testing"
)

func TestState(t *testing.T) {

	expect := "Vrrr... Brrr... Vrrr..." +
		"Vrrr... Brrr... Vrrr..." +
		"White roses, white roses. Defenseless thorns..."

	mobile := NewMobileAlert()

	result := mobile.Alert()
	result += mobile.Alert()

	mobile.SetState(&MobileAlertSong{})

	result += mobile.Alert()

	if result != expect {
		t.Errorf("Expect result to equal %s, but %s.\n", expect, result)
	}
}

```

