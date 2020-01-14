{{/*
Define names that can be overriden in a parent chart
*/}}
{{- define "vulcanApi" -}}
{{- printf "http://%s-api/api" .Release.Name -}}
{{- end -}}
