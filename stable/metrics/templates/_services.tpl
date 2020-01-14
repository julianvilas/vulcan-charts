{{/*
Override names
*/}}
{{- define "resultsHost" -}}
{{- printf "%s-results" .Release.Name -}}
{{- end -}}

{{- define "metricsRedisAddr" -}}
{{- printf "%s-metrics-redis:6379" .Release.Name -}}
{{- end -}}

{{- define "metricsDogstatsdAddr" -}}
{{- printf "%s-metrics-dogstatsd:8125" .Release.Name -}}
{{- end -}}
