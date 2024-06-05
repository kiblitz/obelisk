open! Core
open Async

let name = "init"

let main () =
  match%bind Util.obelisk_base () with
  | Some obelisk_base_path ->
    let base = Filename.dirname obelisk_base_path in
    return (print_endline [%string "Already in obelisk repo: %{base}/"])
  | None -> Unix.mkdir Util.obelisk_base_name
;;

let command =
  Command.async ~summary:"initialize an obelisk codebase" (Command.Spec.return main)
;;
