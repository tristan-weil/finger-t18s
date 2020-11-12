{{ template "header.tpl" . }}
{{/********** Global Vars **********/ -}}
{{ $width := 70 -}}
{{ $route := .default.Route -}}
{{ $domain := .default.Domain -}}
{{/********** Main **********/ -}}
Welcome to this `finger' server!

To browse this server, use the menu's name as the username.
For example, if you want to access the news about unix, just type:
`finger aggregator/unix@{{ $domain }}'

{{ tablewriter (dict "data" (list (list "ABOUT" )) "width" $width "text-alignment" "center" "box-separator" "~" "box-left" ")" "box-right" ")") -}}
{{ floating $width " " ":: about/server" "about this server" }}
{{ floating $width " " ":: about/stats" "stats of the server" }}
{{ floating $width " " ":: https://t18s.fr " "more information available" }}

{{ tablewriter (dict "data" (list (list "BLOG" )) "width" $width "text-alignment" "center" "box-separator" "~" "box-left" ")" "box-right" ")") -}}
{{ floating $width " " ":: blog/2020/11" "entries for 2020/11" }}
{{ floating $width " " ":: blog/2019/08" "entries for 2019/08" }}
{{ floating $width " " ":: blog/2019/03" "entries for 2019/03" }}

{{ tablewriter (dict "data" (list (list "AGGREAGTORS" )) "width" $width "text-alignment" "center" "box-separator" "~" "box-left" ")" "box-right" ")") -}}
{{ floating $width " " ":: aggregator/unix" "unix news from the world" }}
{{ floating $width " " ":: aggregator/music" "good music feeds" }}
{{ template "footer.tpl" . }}
