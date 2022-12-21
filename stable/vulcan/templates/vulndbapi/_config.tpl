{{- define "vulndbapi-secrets" -}}
PG_PASSWORD: {{ include "pg.encryptedPassword" . | quote }}
PG_PASSWORD_READ: {{ include "pg.encryptedPassword" . | quote }}
{{- end -}}
