#!/usr/bin/env bash
# System-level CVE fixes applied at build time
# CVE-2026-0861: glibc integer overflow in memalign
# CVE-2025-15281: glibc wordexp uninitialized memory
# CVE-2026-0915: glibc information disclosure via network query
# CVE-2026-4046: glibc denial of service via iconv
# CVE-2026-4437: glibc incorrect DNS response parsing
# CVE-2026-4438: glibc invalid DNS hostname from gethostbyaddr
# CVE-2026-29111: systemd arbitrary code execution via IPC API
# CVE-2026-40225: systemd udev privilege escalation via hardware
# CVE-2026-40226: systemd nspawn escape-to-host
# CVE-2026-4105: systemd privilege escalation via RegisterMachine
# CVE-2026-4878: libcap TOCTOU race condition privilege escalation
# CVE-2026-2219: dpkg-deb insufficient validation
# CVE-2025-6297: dpkg-deb directory path sanitization
# CVE-2026-5958: sed arbitrary file overwrite via -i --follow-symlinks
# CVE-2026-44660: UltraJSON memory leak in ujson.dump() on write failure

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get upgrade -y --with-new-pkgs \
    glibc \
    systemd \
    libcap2-bin \
    dpkg \
    sed

# Upgrade Python packages present in the openstack venv
if [ -x /var/lib/openstack/bin/pip ]; then
    /var/lib/openstack/bin/pip install --upgrade \
        "ujson>=5.12.1" \
        "urllib3>=2.7.0"
fi