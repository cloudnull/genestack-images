# Cloudkitty

The `cloudkitty` image is built from [ContainerFiles/cloudkitty](https://github.com/rackerlabs/genestack-images/blob/main/ContainerFiles/cloudkitty). Security patches are applied by [scripts/cloudkitty-cve-patching.sh](https://github.com/rackerlabs/genestack-images/blob/main/scripts/cloudkitty-cve-patching.sh).

This container packages the Cloudkitty rating service for use in the Cloudkitty service stack. The build installs the required packages, applies security updates and configuration, and prepares the service for integration.

``` mermaid
graph LR
    A[Base image] --> B[Install packages]
    B --> C[Apply CVE patches]
    C --> D[Configure Cloudkitty]
    D --> E[Container ready]
```

??? example "ContainerFile used for the build"

    ``` docker
    --8<-- "ContainerFiles/cloudkitty"
    ```

## Build Arguments

| Argument | Default |
| --- | --- |
| VENV_TAG | 3.13-latest |
| CACHEBUST | 0 |
| OS_VERSION | master |
| OS_CONSTRAINTS | master |

??? example "Build Command"

    ``` bash
    docker build \
    --build-arg VENV_TAG=3.13-latest \
    --build-arg CACHEBUST=0 \
    --build-arg OS_VERSION=master \
    --build-arg OS_CONSTRAINTS=master \
    -f ContainerFiles/cloudkitty \
    -t cloudkitty:local \
    .
    ```

## Dependencies

- Builds From [OpenStack Virtual Environment](openstack-venv.md)

## Container Image

The container image is available on [Github Container Registry](https://github.com/rackerlabs/genestack-images/pkgs/container/genestack-images%2Fcloudkitty).
