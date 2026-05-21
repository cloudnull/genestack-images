# Security Policy

## Reporting a Vulnerability

Please report security vulnerabilities to the Rackspace GeneStack team via the [GitHub Security Advisory](https://github.com/rackerlabs/genestack-images/security/advisories/new) form.

We will acknowledge receipt of your report within 48 hours and provide a detailed response within 5 business days indicating the next steps for handling the reported vulnerability.

## Security Scanning

Container images are scanned using Trivy on every build. Results are uploaded to GitHub Security tab. Scanning runs on:
- Every pull request
- Weekly scheduled builds
- Manual workflow dispatch

## Supported Versions

| Version         | Supported          |
| --------------- | ------------------ |
| stable/2025.1   | :white_check_mark: |
| unmaintained/2024.1 | :warning: Security fixes only |

## CVE Patching Process

CVE patches are applied via scripts in `scripts/*-cve-patching.sh`. When a new CVE is identified:

1. Identify affected images and Python packages
2. Determine the fixed package version
3. Add the upgrade to the appropriate patching script(s)
4. Add CVE reference to the comment header
5. Open a pull request referencing the CVE
6. After merge, images are rebuilt on the next scheduled run

## Security Contacts

- Open a GitHub Security Advisory for private disclosure
- For urgent matters, contact the GeneStack maintainers through the repository
