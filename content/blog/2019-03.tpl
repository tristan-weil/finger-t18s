{{ template "header.tpl" . }}
{{/********** Global Vars **********/ -}}
{{ $width := 70 -}}
{{/********** Main **********/ -}}
:: BLOG 2019/03 ::

{{ tablewriter (dict "data" (list (list "2019/03/15: The Web site is open!")) "width" $width "text-alignment" "center" "box-separator" "~" "box-left" ")" "box-right" ")") -}}
The Web site, https://t18s.fr, is now open.

It is the main entry point for all my personal projects and will
explain why this Finger space exists.

You should go there to have a complete and detailed view of what I am
trying to achieve.
{{ template "footer.tpl" . }}
