# Glazed

![This package only works with Gleam's JavaScript target](https://img.shields.io/badge/gleam-javascript%20only-yellow)

Lazy evaluation in Gleam

The initialization function passed to `Lazy` is guaranteed to only run once, the first
time the value is used. This can be useful when you have some immutable value that needs
to be globally accessible, but might be expensive to compute, or might not fit inside
Gleam's constant contraints.

```gleam
import glazed/lazy.{Lazy}
import gleam/io

const expensive_thing = Lazy(fn () {
  compute_expensive_thing()
})

pub fn main() {
  expensive_thing
  |> lazy.unwrap
  |> io.debug
}
```

## Installation

```sh
gleam add glazed
```

## Documentation

<https://hexdocs.pm/glazed>
