# Gnocchi

The `gnocchi` image is built from [ContainerFiles/gnocchi](https://github.com/rackerlabs/genestack-images/blob/main/ContainerFiles/gnocchi). Security patches are applied by [scripts/gnocchi-cve-patching.sh](https://github.com/rackerlabs/genestack-images/blob/main/scripts/gnocchi-cve-patching.sh).

This container packages the Gnocchi service for use in the stack. The build installs the required packages, applies security updates and configuration, and prepares the service for integration.

``` mermaid
graph LR
    A[Base image] --> B[Install packages]
    B --> C[Apply CVE patches]
    C --> D[Configure Gnocchi]
    D --> E[Container ready]
```

??? example "ContainerFile used for the build"

    ``` docker
    --8<-- "ContainerFiles/gnocchi"
    ```

## Dependencies

- Builds From [OpenStack Virtual Environment](openstack-venv.md)
