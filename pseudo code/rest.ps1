$authrequest = @{'token' = ''}
$authrequest.token = 'blahblahblah'
$header =@{authorization='Bearer '+$($authrequest.token)}
#$namespace = (Invoke-restmethod -Uri "https://apps.coreweave.com/api/v1/clusters/default/namespaces" -Headers $header -Method get).namespaces.metadata.name
$releases =  (Invoke-restmethod -Uri "https://apps.coreweave.com/api/kubeops/v1/clusters/default/namespaces/$($namespace)/releases?statuses=all" -Headers $header -Method get -UseBasicParsing).data
$chart = ((Invoke-RestMethod -Uri "https://apps.coreweave.com/api/assetsvc/v1/clusters/default/namespaces/$($namespace)/charts" -Headers $header -Method get).data | where {$_.id -eq 'coreweave/virtual-desktop'}).attributes
$virtualdesktop = ((Invoke-RestMethod -Uri "https://apps.coreweave.com/api/assetsvc/v1/clusters/default/namespaces/kubeapps/charts/coreweave/virtual-desktop" -Headers $header -Method get)).data
$latest=(((Invoke-RestMethod -Uri "https://apps.coreweave.com/api/assetsvc/v1/clusters/default/namespaces/kubeapps/charts/coreweave/virtual-desktop/versions" -Headers $header -Method get)).data | Sort-Object {$([datetime]$_.attributes.created)} -Descending)[0]
$yaml = Invoke-RestMethod  "https://apps.coreweave.com/api/assetsvc/v1/clusters/default/namespaces/kubeapps/assets/coreweave/virtual-desktop/versions/$($latest.attributes.version)/values.yaml" -Headers $header | convertfrom-yaml
$schema = Invoke-RestMethod  "https://apps.coreweave.com/api/assetsvc/v1/clusters/default/namespaces/kubeapps/assets/coreweave/virtual-desktop/versions/$($latest.attributes.version)/values.schema.json" -Headers $header

$post = Invoke-RestMethod -Uri "https://apps.coreweave.com/api/kubeops/v1/clusters/default/namespaces/$($namespace)/releases/$($release)?purge=true" -Method Delete -Headers $header

$options = [ordered]@{
    'Definition' = ('A','B','C','D','E','F')
    'Reigon' = $schema.properties.vm.properties.nodeSelector.properties.region.enum
    'OS' = $schema.properties.vm.properties.os.properties.alias.enum
    'CPUInstance' = $schema.properties.vm.properties.hardware.properties.cpu.properties.option.enum
    'GPUInstance' = $schema.properties.vm.properties.hardware.properties.gpu.properties.type.enum
    'Storage' = $schema.properties.vm.properties.storage.properties.root.properties.size.minimum
    'sharedFS' = 'PVCName'
    'State' = $true
    'terminateOnShutdown' = $false
    'ShutoffOnIdle' = 1
    }

$values = [ordered]@{
    "appRepositoryResourceName" = 'coreweave'
    "appRepositoryResourceNamespace" = 'kubeapps'
    "chartName" = 'virtual-desktop'
    "releaseName" = 'placeholder'
    "values" = $($yaml | ConvertTo-Yaml)
    "version" = $latest.attributes.version
} | ConvertTo-Json

$yaml = [ordered]@{'vm' = @{}}
$yaml.vm.definition= @{}
$yaml.vm.definition.version = 'a'
$yaml.vm.nodeSelector = @{}
$yaml.vm.nodeSelector.region = 'EWR1'
$yaml.vm.os = @{}
$yaml.vm.os.alias = 'Windows 10 Professional'
$yaml.vm.os.version = 'a'
$yaml.vm.hardware = @{}
$yaml.vm.hardware.gpu = @{}
$yaml.vm.hardware.gpu.enabled = $true
$yaml.vm.hardware.gpu.type = 'Quadro_RTX_4000'
$yaml.vm.hardware.gpu.count = 1
$yaml.vm.hardware.cpu = @{}
$yaml.vm.hardware.cpu.option = "2 vCPU, 8GB RAM"
$yaml.