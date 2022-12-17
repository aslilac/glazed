pub type Lazy(a) {
  Lazy(init: fn() -> a)
}

/// Initializes the value if necessary, and returns it.
pub fn unwrap(l: Lazy(a)) -> a {
  do_unwrap(l)
}

if erlang {
  // This is only to make the LSP happy. I'd rather not include it at all, since it
  // makes it seem like this does what the package promises, but it does not.
  fn do_unwrap(l: Lazy(a)) -> a {
    l.init()
  }
}

if javascript {
  external fn do_unwrap(Lazy(a)) -> a =
    "../glazed_ffi.mjs" "unwrap"
}
