{{- define "persistence-secrets" -}}
POSTGRES_PASSWORD: {{ include "pg.encryptedPassword" . | quote }}
SECRET_KEY_BASE: {{ .Values.comp.conf.secretKeyBase | b64enc | quote  }}
{{- end -}}
