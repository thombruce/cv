# README

Presently requires the use of Typst v0.13.1 which has recently become outdated.

An update to the upstream template used in generating the CV should resolve the issue.

Personally I'm wondering...

_What is the best way for me to manage package dependencies in cases like these?_

Previously, I had Typst installed via Arch pacman.
I am unsure if the pacman version can be pinned or downgraded.

Instead, I have for now uninstalled the Arch package version and instead installed
version 0.13.1 explicitly via the Rust cargo package management system.

Perhaps I should always do this when managing Rust software...
but then I do not know how this might conflict with use of Mise and the management
of several Rust versions.

Rust compiles to binaries so... should be fine, right?
