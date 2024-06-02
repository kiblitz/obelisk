open! Core

let commands = []
let command = Command.group ~summary:"A toy version control system" ~preserve_subcommand_order:() commands