pub type Lazy(a) {
  Lazy(init: fn() -> a)
}

if erlang {
  pub external fn unwrap(Lazy(a)) -> a =
    "glazed_ffi" "unwrap"
}

if javascript {
  pub external fn unwrap(Lazy(a)) -> a =
    "../lazy_ffi.mjs" "unwrap"
}
