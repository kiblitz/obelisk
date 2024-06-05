open! Core

let commands : (module Subcommand_intf.S) list =
  [ (module Init_subcommand); (module Test) ]
;;

let command =
  Command.group
    ~summary:"A toy version control system"
    ~preserve_subcommand_order:()
    (List.map commands ~f:(fun (module S) -> S.name, S.command))
;;
