# app-marcone

![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)  ![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)

Helm chart of desafio-globo

# Prerequisites

* Install the kubectl, helm and helm-docs commands.

# Installing the Chart

* Access a Kubernetes cluster.

* Change the values according to the need of the environment in ``app-marcone/values.yaml`` file. The [Parameters](#parameters) section lists the parameters that can be configured during installation.

* Test the installation with command:

```bash
helm upgrade --install app-marcone -f app-marcone/values.yaml app-marcone/ -n app-marcone --create-namespace --dry-run
```

* To install/upgrade the chart with the release name `app-marcone`:

```bash
helm upgrade --install app-marcone -f app-marcone/values.yaml app-marcone/ -n app-marcone --create-namespace
```

Create a port-forward with the follow command:

```bash
kubectl port-forward svc/app-marcone 8000:80 -n app-marcone
```

Open the browser and access the URL: http://localhost:8000

## Uninstalling the Chart

To uninstall/delete the `app-marcone` deployment:

```bash
helm uninstall app-marcone -n app-marcone
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Parameters

The following tables lists the configurable parameters of the chart and their default values.

Change the values according to the need of the environment in ``app-marcone/values.yaml`` file.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `true` |  |
| autoscaling.maxReplicas | int | `3` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `85` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"marcone/desafio-globo"` |  |
| image.tag | string | `"1.0.0"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe.httpGet.path | string | `"/"` |  |
| livenessProbe.httpGet.port | string | `"http"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe.httpGet.path | string | `"/"` |  |
| readinessProbe.httpGet.port | string | `"http"` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"500m"` |  |
| resources.limits.memory | string | `"256Mi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
