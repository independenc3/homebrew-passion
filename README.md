# passion-ssh

A Zsh function to quickly connect to Passion services via AWS ECS, distributed as a Homebrew formula.

![demo2](https://github.com/user-attachments/assets/42efe7f9-e8af-49b0-bcc1-72b205202b8f)

## Installation

1. **Tap the repository (if not already):**
   ```sh
   brew tap independenc3/passion
   ```

2. **Install the function:**
   ```sh
   brew install passion-ssh
   ```

## Setup

Add the following alias to your `~/.zshrc` to use the function with the correct AWS environment:

```sh
alias pc='aws-vault exec passion-root -- zsh -i -c "source /opt/homebrew/bin/passion-ssh && passion-ssh"'
```

> Adjust `/opt/homebrew` if your Homebrew prefix is different.

Then reload your shell:
```sh
source ~/.zshrc
```

## Usage

Run:
```sh
pc
```
You'll be prompted to select an environment and service, and then connected to the selected ECS service.

## Requirements

- Zsh
- [Homebrew](https://brew.sh/)
- [aws-vault](https://github.com/99designs/aws-vault)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [jq](https://stedolan.github.io/jq/)
- [ecs-session](https://github.com/independenc3/ecs-session) (custom tool for connecting to ECS services)

## Dependency Installation Guide

### 1. Install Homebrew (if not already installed)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Install Zsh (if not already installed)

```sh
brew install zsh
```

### 3. Install aws-vault

```sh
brew install aws-vault
```

### 4. Install AWS CLI

```sh
brew install awscli
```

### 5. Install jq

```sh
brew install jq
```

### 6. Install ecs-session

ecs-session is a custom tool. If you have a Homebrew tap for it:

```sh
brew install independenc3/tap/ecs-session
```

Or, follow the instructions at [ecs-session GitHub](https://github.com/independenc3/ecs-session) to build or install it manually.

---

Continue with the rest of the setup and usage as described above.
