(lang dune 3.15)

(name obelisk)

(generate_opam_files true)

(source
 (github kiblitz/obelisk))

(authors "glee")

(maintainers "glee")

(license LICENSE)

(documentation https://github.com/kiblitz/obelisk)

(package
 (name obelisk)
 (synopsis "A toy version control system")
 (description "Inspired by fe")
 (depends ocaml dune)
 (tags ("version control")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
