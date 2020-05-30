import gleam/string

pub fn greeting() {
  "Hello, from gleam!"
}

pub fn switch(greeting: String) -> String {
  string.reverse(greeting)
}
