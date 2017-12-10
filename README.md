# Practice of using a stack library on GitHub

This is a user of [nwtgck/stack-library-on-github](https://github.com/nwtgck/stack-library-on-github).


## How to run

```bash
stack build
stack exec use-stack-library-on-github-exe
```

## Where the dependencies written

Here is a part of [`stack.yaml`](stack.yaml).

```yaml
...
packages:
- .
- location:
    git: https://github.com/nwtgck/stack-library-on-github.git
    commit: 38fef2f8f58d7491a28c2238f2d13955a400c00d
...
```

HERE is a part of [`package.yaml`](package.yaml).

```yaml
...
executables:
  use-stack-library-on-github-exe:
    main:                Main.hs
    source-dirs:         app
    ghc-options:
    - -threaded
    - -rtsopts
    - -with-rtsopts=-N
    dependencies:
    - stack-library-on-github  <== HERE
...
``` 


## References

* https://qiita.com/aiya000/items/4e90aead41e3711a1e54