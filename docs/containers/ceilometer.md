# Ceilometer

The `ceilometer` image is built from [ContainerFiles/ceilometer](https://github.com/rackerlabs/genestack-images/blob/main/ContainerFiles/ceilometer). Security patches are applied by [scripts/ceilometer-cve-patching.sh](https://github.com/rackerlabs/genestack-images/blob/main/scripts/ceilometer-cve-patching.sh).

This container packages the Ceilometer service for use in the stack. The build installs the required packages, applies security updates and configuration, and prepares the service for integration.

``` mermaid
graph LR
    A[Base image] --> B[Install packages]
    B --> C[Apply CVE patches]
    C --> D[Configure Ceilometer]
    D --> E[Container ready]
```

??? example "ContainerFile used for the build"

    ``` docker
    --8<-- "ContainerFiles/ceilometer"
    ```

## Dependencies

- Builds From [OpenStack Virtual Environment](openstack-venv.md)
