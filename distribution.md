# Distribution

## Pre-requisites

Ensure you have:

- [Written & Compiled a rule](writing.md)

Distribution and storage of the compiled rules is handled by yourself.
Additionally this means that you are responsible for the versioning of the rules as well.

For simplicity we recommend that you keep the latest version named as something like `custom-rules-latest.tar.gz` and replace this version on each build.

To execute the rules, this artefact must be downloaded to a local filepath accessible by the CLI. So we recommend storing the rules in a location that is easy to automatically download, such as an internal blobstore.
