use "foo"

actor Main
  new create(env: Env) =>
    env.out.print(Foo())

