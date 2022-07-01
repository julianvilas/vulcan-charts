{{- define "goaws-config" -}}
{{ tpl ( toYaml .Values.comp.config ) . }}
{{- end -}}
