# Executing Custom Rules

The last step in the process is to execute the custom rules.
This is currently supported via the Snyk IaC CLI only.

Currently the CLI can only accept a local filepath for the compiled rules.

In the future we intend to add support for remote locations and also centrally storing the rules.

## Pre-requisites

Ensure you have:

- [Written & Compiled a rule](writing.md)
- [Handled distributing the rules](distribution.md)
- Ensure the relevant feature flag is enabled for your Snyk Group / Org - confirm with your Snyk account team.

## Execution

Ensure you have downloaded the `tar.gz` file to a local filepath that is accessible from where you will execute the CLI.

Provide the flag `--rules=<name>` where `<name>` should be replaced with what you called your artefact.

`$ snyk iac test kubernetes.yaml --rules=custom.tar.gz`

You can use this command in combination with any of the other CLI flags, such as `--json` or `--sarif`

See the [CLI Documentation](https://support.snyk.io/hc/en-us/articles/360018728618-Test-your-configuration-files) for further information

### Demo

Using the provided example this would look as follows, using the `custom.tar.gz` created in the previous step.

```
cd examples/tf_tagging_basic
snyk iac test s3_tagging.tf --rules=custom.tar.gz
```

If successfull, you would see the following output

![Successful terminal output](./assets/cli_success.png)

You can see the top two issues flagged as `critical` are from our logic identified by the name `CUSTOM-123` the other issues are from Snyk provided rules.
