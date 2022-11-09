pub type Lazy(a) {
  Lazy(init: fn() -> a)
}

if erlang {
  // pub external fn unwrap(Lazy(a)) -> a =
  //   "glazed_ffi" "unwrap"

  pub fn unwrap(lazy: Lazy(a)) -> a {
    lazy.init()
  }
}

if javascript {
  pub external fn unwrap(Lazy(a)) -> a =
    "../glazed_ffi.mjs" "unwrap"
}
