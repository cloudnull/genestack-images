# Cinder

The `cinder` image is built from [ContainerFiles/cinder](https://github.com/rackerlabs/genestack-images/blob/main/ContainerFiles/cinder). Security patches are applied by [scripts/cinder-cve-patching.sh](https://github.com/rackerlabs/genestack-images/blob/main/scripts/cinder-cve-patching.sh).

This container packages the Cinder service for use in the stack. The build installs the required packages, applies security updates and configuration, and prepares the service for integration.

``` mermaid
graph LR
    A[Base image] --> B[Install packages]
    B --> C[Apply CVE patches]
    C --> D[Configure Cinder]
    D --> E[Container ready]
    Openstack_Venv --> A
```

??? example "ContainerFile used for the build"

    ``` docker
    --8<-- "ContainerFiles/cinder"
    ```

## Dependencies

- Builds From [OpenStack Virtual Environment](openstack-venv.md)

## Container Image

The container image is available on [Github Container Registry](https://github.com/rackerlabs/genestack-images/pkgs/container/genestack-images%2Fcinder).
