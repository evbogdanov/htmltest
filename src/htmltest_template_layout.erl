-module(htmltest_template_layout).

-export([render/2]).

-import(html, [
  html/1,
  head/1,
  meta/1,
  title/1,
  link/1,
  script/1,
  body/1,
  ul/1,
  li/1,
  a/2,
  'div'/2
]).

-compile({no_auto_import, [link/1]}).

render(Title, Content) ->
  html([
    head([
      meta(#{charset => "utf-8"}),
      title(Title),
      link(#{href => "/css/style.css", rel => "stylesheet", type => "text/css"}),
      script(#{src => "/js/script.js"})
    ]),
    body([
      'div'(#{id => "nav"}, ul([
        li(a(#{href => "/article.yaws"}, "Article")),
        li(a(#{href => "/list.yaws"},    "List"))
      ])),
      'div'(#{id => "content"}, Content),
      'div'(#{id => "footer"}, "I Am Footer")
    ])
  ]).
