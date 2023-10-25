Remove-Item .\temp -Recurse -Force -ErrorAction Ignore 
New-Item .\temp -ItemType Directory >$NUL
helm package -u -d .\temp\ .\helm-chart-sources\webapi\
helm repo index --url "https://shdarrina.github.io/helm-chart" --merge .\index.yaml temp\
Move-Item .\temp\* . -Force
Remove-Item .\temp -Recurse -Force -ErrorAction Ignore 
