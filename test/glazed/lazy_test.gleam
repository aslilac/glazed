import glazed/lazy.{Lazy}
import gleeunit/should

const important_number = Lazy(gib_me_number)

fn gib_me_number() {
  69
}

// Hopefully one day Gleam will support...
// const important_number = Lazy(fn() { 69 })

pub fn lazy_test() {
  let result = lazy.unwrap(important_number)
  should.equal(result, 69)
}
