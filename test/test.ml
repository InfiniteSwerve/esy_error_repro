let test_group () =
  Alcotest.(check unit) "unit" () ()

let () =
  let open Alcotest in
  run "Utils" [
      "group", [
          test_case "" `Quick test_group;
        ];
    ]