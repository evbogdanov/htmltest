## Erlang ♥ HTML
Joe Armstrong: No need to invent yet another templating language when Erlang is at hand.

## The transformation of Erlang into HTML
Erlang:
```erlang
html(#{lang => "en"}, [
  head([
    title(Title),
    script(#{src => "/js/script.js"})
  ]),
  body([
    h1("Erlang ♥ HTML"),
    'div'(#{id => "content", class => "container"}, [
      if YouLikeErlang -> p("Write HTML in Erlang!");
         true          -> p("Learn you some Erlang for great good!")
      end,
      p("No, really, writing HTML in Erlang is so much fun" ++ " :-)")
    ])
  ])
]).
```
HTML:
```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>♥ ♥ ♥</title>
    <script src="/js/script.js"></script>
  </head>
  <body>
    <h1>Erlang ♥ HTML</h1>
    <div class="container" id="content">
      <p>Write HTML in Erlang!</p>
      <p>No, really, writing HTML in Erlang is so much fun :-)</p>
    </div>
  </body>
</html>
```