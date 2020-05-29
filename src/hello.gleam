import gleam/string

pub fn hello() {
  "Hello, from gleam!"
}

pub fn switch(greeting: String) -> String {
  string.reverse(greeting)
}
