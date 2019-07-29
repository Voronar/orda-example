open! Js_of_ocaml
module React = Orda.React
module Html = React.Html
module Attr = React.Html.Attr
module Style = React.Html.InlineStyle

module Sidebar: React.ComponentSignature with type t = unit =
struct
  type t = unit 
  let make = let open React in memo @@ fun () ->
    Html.div [
      Attr.ClassName "sidebar"
    ][string "sidebar"]
end

include Sidebar
