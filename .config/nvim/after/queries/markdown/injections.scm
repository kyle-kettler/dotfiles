; extends
((inline) @injection.content
  (#lua-match? @injection.content "^%simport")
  (#set! injection.language "typescript"))
((inline) @injection.content
  (#lua-match? @injection.content "^%sexport")
  (#set! injection.language "typescript"))
((inline) @injection.content
  (#lua-match? @injection.content "^%s*import%s+%w+%s+from")
  (#set! injection.language "typescript")
  (#set! injection.include-children))
; ((inline) @injection.content "^%s*<")
;   (#set! injection.language "typescript"))
