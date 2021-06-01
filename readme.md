# Snyk Infrastructure as Code - Custom Rules

The Snyk Infrastructure as Code product can scan configuration files for any security misconfigurations, via the CLI or by importing a repository from GitHub.

Today we support scanning Kubernetes, Helm, Terraform & CloudFormation configuration files.

Snyk aims to provide a comprehensive set of security rules out of the box, across all of the core infrastructure providers (Kubernetes, AWS, Azure, GCP) that cover key benchmarks such as CIS as well as recommended best practices from Cloud Providers.

Whilst we aim to provide all of the rules you need out of the box, we recognise that there may be scenarios where you need to add additional rules yourself which are specific to your business or application needs.

We’re providing the ability for you to write your own custom rules and have those run alongside the Snyk provided rules.

This functionality is currently available in **invite-only beta**

This means that support is provided on a case-by-case basis and should be directed through your account team to Ben Laplanche the Product Manager for Snyk IaC.

## Custom Rules Overview

Snyk Infrastructure as Code is based upon Open Policy Agent and uses a language called Rego All of the Snyk provided rules are written in Rego.

Any custom rules that you write will be written in Rego and can be written locally either in your IDE of choice or using the online [rego playground](https://play.openpolicyagent.org/)

Rules can be written for any configuration format that Snyk IaC supports, currently on the CLI this is

- Kubernetes
- Terraform
- CloudFormation

_Example use-cases for custom rules:_

- Enforcing tagging standards - e.g. all resources must have an owning team
- Deprecating a particular feature - e.g. a service or API endpoint
- Preventing use of particular services - e.g. developers cannot use AWS xyz
- Workload placement rules - e.g. resources tagged as sensitive must be placed in region us-east-1a

Ultimately any use-case that can be codified into rego is supported. The limits are what you can write in rego, not what this feature can run.

Today, custom rules will only be supported for execution via the Snyk IaC CLI. Support for running these against repositories imported from GitHub will be added in the future.

## Getting Started

### Pre-requisites

- [Snyk CLI](https://support.snyk.io/hc/en-us/articles/360003812538-Install-the-Snyk-CLI) v1.618.0 or greater
- [Open Policy Agent CLI](https://www.openpolicyagent.org/docs/latest/#running-opa) (needed to compile the rules)
- [Conftest](https://www.conftest.dev/install/) (needed to parse the JSON when writing a rule)

In future releases we will provide a Docker image which Snyk will maintain that will contain these prerequisites, so they do not need to be downloaded or maintained by yourself.

### Exploring Rego

We recommend that if you are not familiar with Rego, you first read the documentation [here](https://www.openpolicyagent.org/docs/latest/#rego).
Once you have read this, then take a look at some of the basic tutorials on the [Rego Playground](https://play.openpolicyagent.org/)

You can use the drop down at the top of the rego playground to find worked examples, in particular look at:

- Kubernetes - Hello World
- Kubernetes - Label Existence
