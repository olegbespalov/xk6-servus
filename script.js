import greeter from "k6/x/greeter"

export default function() {
   console.log(greeter.greet("k6"));
}