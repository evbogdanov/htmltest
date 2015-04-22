-module(htmltest_template_article).

-export([render/2]).

-import(html, [
  h1/1,
  p/1
]).

render(Title, Article) ->
  Content = [
    h1(Title),
    p(Article)
  ],
  htmltest_template_layout:render(Title, Content).
