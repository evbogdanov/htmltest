-module(htmltest_template_list).

-export([render/2]).

-import(html, [
  h1/1,
  ul/1,
  li/1
]).

render(Title, List) ->
  Content = [
    h1(Title),
    ul([
      li(Item) || Item <- List
    ])
  ],
  htmltest_template_layout:render(Title, Content).
