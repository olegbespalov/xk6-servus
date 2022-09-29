export default function() {
   greet("k6");
}

const greet = function(name) {
   console.log("Servus! " + name)
};