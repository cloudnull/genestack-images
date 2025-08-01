# Libguestfs

The `libguestfs` image is built from [ContainerFiles/libguestfs](https://github.com/rackerlabs/genestack-images/blob/main/ContainerFiles/libguestfs). This image has no dedicated CVE script; security updates are included during the build.

This container packages the Libguestfs service for use in the stack. The build installs the required packages, applies security updates and configuration, and prepares the service for integration.

``` mermaid
graph LR
    A[Base image] --> B[Install packages]
    B --> C[Apply CVE patches]
    C --> D[Configure Libguestfs]
    D --> E[Container ready]
    E --> Nova
```

??? example "ContainerFile used for the build"

    ``` docker
    --8<-- "ContainerFiles/libguestfs"
    ```

## Dependencies

- Builds From [OpenStack Virtual Environment](openstack-venv.md)

## Container Image

The container image is available on [Github Container Registry](https://github.com/rackerlabs/genestack-images/pkgs/container/genestack-images%2Flibguestfs).
