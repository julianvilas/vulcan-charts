{{- define "checks-config" -}}
checktypes.json: |-
  {{- $l := dict -}}
  {{- range $key, $v := .Values.checks.checks -}}
  {{- $_ := set $l (printf "vulcan-%s" $key) (
    dict 
      "name" (printf "vulcan-%s" $key) 
      "timeout" $v.timeout 
      "options" (ternary nil (ternary $v.options (toJson $v.options) (kindIs "string" $v.options)) (empty $v.options))
      "required_vars" $v.vars 
      "image" (printf "%s:%s" $v.image.repository $v.image.tag)
      "assets" $v.assets
    )
  -}}
  {{- end -}}
  {{ toPrettyJson $l | nindent 2 }}
{{- end -}}
