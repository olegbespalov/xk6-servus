# xk6-servus is a minimal example of xk6 modules

It shows how to replace the JavaScript implementation of the greet function with the go version:

Original:

```javascript
export default function() {
   greet("k6");
}

const greet = function(name) {
   console.log("Servus! " + name)
};
```

Desired:

```javascript
import greeter from "k6/x/greeter"

export default function() {
   console.log(greeter.greet("k6"));
}
```

## Requirements

* Golang
* Git
* xk6 (`go install go.k6.io/xk6/cmd/xk6@latest`)

## Documentation

* [More advanced examples and more documentation](https://k6.io/docs/extensions/getting-started/create/javascript-extensions/)