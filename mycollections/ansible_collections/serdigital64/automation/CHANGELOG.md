# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [3.2.2]

### Fixed

- auto_aplatform64:
  - task names

### Added

- auto_aplatform64:
  - libvirt_servers playbook

## [3.1.0]

### Added

- all: OracleLinux9 support

## [3.0.0]

### Changed

- Replaced OSS code license

## [2.2.3]

### Fixed

- auto_aplatform64:
  - Remote node setup
  - Added missing repository for Docker on Ubuntu22
  - Added missing nfs client for autofs

### Added

- all: Fedora36 support

## [2.1.0]

### Removed

- Obsolete playbooks: manage_cloud_population, manage_cloud_realm

## [2.0.0]

### Added

- all: RockLinux8, Ubuntu22.4 support
- auto_aplatform64
  - manage_macos_workstations: new playbook

### Changed

- auto_aplatform64:
  - integrate management of site using auto_ansible_control
  - integrate management of nodes using auto_ansible_node
  - WARNING: breaking changes
    - renamed playbooks and associated resources:
      - manage_ansible_control_nodes -> manage_aplatform64_servers
      - manage_ansible_managed_nodes -> manage_aplatform64_nodes
- auto_ansible_control:
  - added site user creation
  - WARNING: breaking changes
    - set user home to: `auto_ansible_control_paths.var + '/home'`
    - renamed `auto_ansible_control_users` to `auto_ansible_control_owners`
    - renamed `auto_ansible_control_users.control.name` to `auto_ansible_control_owners.control.user`
- auto_ansible_node:
  - WARNING: breaking changes
    - set user home to: `auto_ansible_node_paths.var + '/home'`
    - renamed `auto_ansible_node_user` to `auto_ansible_node_owners`

### Removed

- auto_aplatform64
  - WARNING: breaking changes
    - installer: removed from collection, promoted to stand-alone file to the main A:Platform64 GIT repository
    - ap64: removed from collection, promoted to stand-alone file to the main A:Platform64 GIT repository
    - bootstrap playbooks
- auto_ansible_control:
  - WARNING: breaking changes
    - removed `auto_ansible_control_users.control.home`
- auto_ansible_node:
  - WARNING: breaking changes
    - removed `auto_ansible_node_bootstrap`
    - removed `auto_ansible_node_user.home`, `auto_ansible_node_user.become_method`, `auto_ansible_node_user.description`
    - removed `deploy` and `provision` actions

## [1.12.0]

### Added

- auto_ansible_control: MacOSX support
- auto_ansible_node: MacOSX support

### Removed

- auto_ansible_control: obsolete repository definition
- auto_ansible_node: obsolete deployment of python, obsolete vars

## [1.11.0]

### Added

- all: RHEL-8 and AlmaLinux8 compatibility
- auto_ansible_control: ANSIBLE_LOCAL_TEMP to site env

## [1.10.0]

### Added

- auto_aplatform64/manage_office_nodes: setup action to KeePassXC
- auto_aplatform64/manage_linux_workstations: setup action to Tilix
- auto_aplatform64/manage_linux_servers: template to sys_mc

## [1.9.0]

### Added

- auto_aplatform64: keepassxc role template, added setup option to sys_mc/sys_shell role template

## [1.8.3]

### Added

- auto_aplatform64/manage_gitlab_servers: new playbook

### Fixed

- auto_aplatform64: missing jinja raw tag to role templates

## [1.8.1]

### Added

- auto_aplatform64/manage_db_servers: new playbook
- auto_aplatform64/installer: option for installing from local collection repository
- auto_aplatform64/installer: bootstrap for downloading helpers

## [1.7.1]

[Unreleased]: https://github.com/aplatform64/aplatform64/compare/3.2.2...HEAD
[3.2.2]: https://github.com/aplatform64/aplatform64/compare/3.1.0...3.2.2
[3.1.0]: https://github.com/aplatform64/aplatform64/compare/3.0.0...3.1.0
[3.0.0]: https://github.com/aplatform64/aplatform64/compare/2.2.3...3.0.0
[2.2.3]: https://github.com/aplatform64/aplatform64/compare/2.2.0...2.2.3
[2.1.0]: https://github.com/aplatform64/aplatform64/compare/2.0.0...2.1.0
[2.0.0]: https://github.com/aplatform64/aplatform64/compare/1.12.0...2.0.0
[1.12.0]: https://github.com/aplatform64/aplatform64/compare/1.11.0...1.12.0
[1.11.0]: https://github.com/aplatform64/aplatform64/compare/1.10.0...1.11.0
[1.10.0]: https://github.com/aplatform64/aplatform64/compare/1.9.0...1.10.0
[1.9.0]: https://github.com/aplatform64/aplatform64/compare/1.8.3...1.9.0
[1.8.3]: https://github.com/aplatform64/aplatform64/compare/1.8.1...1.8.3
[1.8.1]: https://github.com/aplatform64/aplatform64/compare/1.7.1...1.8.1
[1.7.1]: https://github.com/aplatform64/aplatform64/releases/tag/1.7.1
