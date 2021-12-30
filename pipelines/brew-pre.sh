stages:
  mas installed:
    description: install mas if it is not installed
    when:
      condition:
        operator: not_contains
        command: mas version
        compareTo: "1."
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install mas

  fzf installed:
    description: install fzf if it is not installed
    when:
      condition:
        operator: not_contains
        command: fzf version
        compareTo: "0."
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install fsf && $(arch -arm64e /opt/homebrew/bin/brew --prefix)/opt/fzf/install

  python3.9 installed:
    description: install python if it is not installed
    when:
      condition:
        operator: not_contains
        command: python3.9 -V
        compareTo: "Python"
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install python@3.9

  ripgrep installed:
    description: install ripgrep if it is not installed
    when:
      condition:
        operator: not_contains
        command: rg -V
        compareTo: "ripgrep"
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install ripgrep

  exa installed:
    description: install exa if it is not installed
    when:
      condition:
        operator: not_contains
        command: exa --version
        compareTo: "exa"
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install exa

  wget installed:
    description: install wget if it is not installed
    when:
      condition:
        operator: not_contains
        command: wget --version
        compareTo: "GNU Wget"
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install wget

  git installed:
    description: install git if it is not installed
    when:
      condition:
        operator: not_contains
        command: arch -arm64e /opt/homebrew/bin/brew ls --version git
        compareTo: "git 2"
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install git

  openssh installed:
    description: install openssh if it is not installed
    when:
      condition:
        operator: not_contains
        command: arch -arm64e /opt/homebrew/bin/brew ls --version openssh
        compareTo: "openssh 8"
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install openssh

  tmux installed:
    description: install tmux if it is not installed
    when:
      condition:
        operator: not_contains
        command: tmux -V
        compareTo: "tmux"
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install tmux

  nvm installed:
    description: install nvm if it is not installed
    when:
      condition:
        operator: not_contains
        command: nvm -v
        compareTo: "0."
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install nvm

  gpg2 installed:
    description: install gpg2 if it is not installed
    when:
      condition:
        operator: not_contains
        command: gpg2 --version
        compareTo: "gpg"
    setup:
      - command: arch -arm64e /opt/homebrew/bin/brew install gpg2
