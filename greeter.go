package greeter

import (
	"fmt"

	"go.k6.io/k6/js/modules"
)

func init() {
	modules.Register("k6/x/greeter", new(Greeter))
}

type Greeter struct{}

func (*Greeter) Greet(name string) string {
	return fmt.Sprintf("Servus! %s", name)
}
