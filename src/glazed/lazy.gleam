pub type Lazy(a) {
  Lazy(init: fn() -> a)
}

if javascript {
  pub external fn unwrap(Lazy(a)) -> a =
    "../glazed_ffi.mjs" "unwrap"
}
