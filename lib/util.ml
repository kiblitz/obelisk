open! Core
open Async

let obelisk_base_name = ".obelisk"

let obelisk_base () =
  let rec find_obelisk_base path =
    let with_obelisk_base = Filename.concat path obelisk_base_name in
    match%bind Sys.is_directory with_obelisk_base with
    | `Yes -> return (Some with_obelisk_base)
    | _ ->
      if String.equal Filename.root path
      then return None
      else find_obelisk_base (Filename.dirname path)
  in
  Unix.getcwd () >>= find_obelisk_base
;;
