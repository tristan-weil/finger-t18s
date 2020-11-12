{{ template "header.tpl" . }}
{{/********** Global Vars **********/ -}}
{{ $width := 70 -}}
{{/********** Main **********/ -}}
:: BLOG 2019/08 ::

{{ tablewriter (dict "data" (list (list "2019/08/05: The Web site is open!")) "width" $width "text-alignment" "center" "box-separator" "~" "box-left" ")" "box-right" ")") }}
Well, it seems I don't have enough time to maintain everything here.

I won't add anymore blog entries about the song of the week :-(

I'll try to keep everything working but there won't be a lot of new
contents unless I found a fun thing to do here.
{{ template "footer.tpl" . }}
