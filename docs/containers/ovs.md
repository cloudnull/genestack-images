# OvS

The `ovs` image is built from [ContainerFiles/ovs](https://github.com/rackerlabs/genestack-images/blob/main/ContainerFiles/ovs). This image has no dedicated CVE script; security updates are included during the build.

This container packages the Ovs service for use in the stack. The build installs the required packages, applies security updates and configuration, and prepares the service for integration.

``` mermaid
graph LR
    A[Base image] --> B[Install packages]
    B --> C[Apply CVE patches]
    C --> D[Configure Ovs]
    D --> E[Container ready]
    E --> Libvirt
```

??? example "ContainerFile used for the build"

    ``` docker
    --8<-- "ContainerFiles/ovs"
    ```

## Build Arguments

| Argument | Default |
| --- | --- |
| VENV_TAG | 3.13-latest |
| OVS_VERSION | main |

??? example "Build Command"

    ``` bash
    docker build \
    --build-arg VENV_TAG=3.13-latest \
    --build-arg OVS_VERSION=main \
    -f ContainerFiles/ovs \
    -t ovs:local \
    .
    ```

## Dependencies

- Builds From [OpenStack Virtual Environment](openstack-venv.md)

## Container Image

The container image is available on [Github Container Registry](https://github.com/rackerlabs/genestack-images/pkgs/container/genestack-images%2Fovs).
