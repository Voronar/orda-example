open! Js_of_ocaml
module React = Orda.React
module Html = React.Html
module Attr = React.Html.Attr
module Style = React.Html.InlineStyle
module Promise = Orda.Promise
module Fetch = Orda.Fetch
module Browser = Orda.Browser

module App: React.ComponentSignature with type t = unit = struct
  type t = unit

  let make () = let open React in
    (* use_effect0 (fun _ -> (
      let open Promise.Infix in
      let _ = Fetch.fetch "https://jsonplaceholder.typicode.com/todos/2" >>=
        fun r -> r##json () >>=
        fun v -> Browser.Global.console_log v; Promise.resolve () in
      Js.Optdef.empty
    )); *)

    (module Components.Entry_page) <@> () </@> [
      Html.div [] [
        string "entry children";
        Html.div [] [
          string "comp123"
        ];
        string "another children"
      ]
    ]
end

let _main = let open React in
  let el = (module App) <@> () </@> [] in
  Dom.render el (Dom_html.getElementById "root")