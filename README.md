# esy_error_repro

Running `esy`, then `esy b dune build`, then `esy b dune build` again will yield the following error:
```
Internal error, please report upstream including the contents of _build/log.
Description:
  ("Path.rm_rf called on external dir",
  { fn =
      "/home/thetis/Code/experiment/runtest_broken_repro/_esy/default/store/b/runtest__broken__repro-0a0daad7/default/_build"
  })
Raised at Stdune__code_error.raise in file "otherlibs/stdune/code_error.ml",
  line 11, characters 30-62
Called from Stdune__fpath.rm_rf in file "otherlibs/stdune/fpath.ml", line
  121, characters 4-78
Called from Stdlib__List.iter in file "list.ml", line 110, characters 12-15
Called from Dune_engine__load_rules.Load_rules.load_build_directory_exn in
  file "src/dune_engine/load_rules.ml", line 736, characters 4-58
Called from Fiber.Scheduler.exec in file "src/fiber/fiber.ml", line 854,
  characters 10-13
-> required by ("load-dir", In_build_dir "default")
-> required by ("toplevel", ())

I must not crash.  Uncertainty is the mind-killer. Exceptions are the
little-death that brings total obliteration.  I will fully express my cases. 
Execution will pass over me and through me.  And when it has gone past, I
will unwind the stack along its path.  Where the cases are handled there will
be nothing.  Only I will remain.
```
