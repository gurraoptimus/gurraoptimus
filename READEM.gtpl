# My GitHub Profile

Welcome to my GitHub profile! Here you’ll find a collection of projects I’m currently working on.

## 📂 My Repositories

{{ with github.repositories }}
{{ range . }}
- [{{ .Name }}]({{ .URL }}) - {{ .Description }}
{{ end }}
{{ end }}

## 🌟 GitHub Stats

{{ github.stats }}

## 🛠️ Recent Activity

{{ with github.activity }}
{{ range . }}
- {{ . }}
{{ end }}
{{ end }}

Thank you for visiting my profile! Feel free to explore and contribute.
