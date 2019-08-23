# CTO Sandbox Tools

A collection of tools to manage the CTO sandbox environment. All dependencies should be available via [Homebrew](https://brew.sh).

## Prerequisites

* [AWS CLI](https://aws.amazon.com/cli/)
* [Homebrew](https://brew.sh)

## admin-hostname

Get the current address for the octo-admin instance.

### Usage

```
admin-hostname.sh
```

### Dependencies

* `jq`

## admin-ssh

SSH to the octo-admin instance, whatever its current address may be.

### Usage

First, set the `OCTO_ADMIN_USERNAME` environment variable to your username. See `.envrc.example` for an example using [direnv](https://github.com/direnv/direnv).

```
admin-ssh.sh
```

Or without setting an environment variable:

```
admin-ssh.sh myusername
```

### Dependencies

* `admin-hostname.sh`
