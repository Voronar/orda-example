open! Js_of_ocaml
module React = Orda.React
module Html = React.Html
module Attr = React.Html.Attr
module Style = React.Html.InlineStyle
module Promise = Orda.Promise
module Fetch = Orda.Fetch
module Browser = Orda.Browser

module EntryPage: React.ComponentSignature with type t = unit = struct
  type t = unit

  let make = let open React in memo @@ fun () ->
    Html.div [
      Attr.ClassName "entry_page"
    ][
      (module Sidebar) <@> () </@> [string "another sidebar"];
      Html.div [
        Attr.ClassName "route_specific_content"
      ] [string "route_specific_content"]
    ]
end

include EntryPage