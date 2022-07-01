{{- define "crontinuous-secrets" -}}
VULCAN_TOKEN: {{ .Values.comp.conf.vulcanToken | b64enc | quote }}
{{- end -}}
