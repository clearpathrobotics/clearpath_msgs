# Contributing to clearpath_msgs

Thanks for your interest in improving `clearpath_msgs`! These packages contain the shared ROS 2
**interface definitions** (messages, services, and actions) that form the contract between the
firmware/hardware drivers in `clearpath_robot`, the control layer in `clearpath_common`, and
offboard consumers in `clearpath_desktop`. Because they are depended on across the whole stack,
changes here need extra care — please read the notes below before opening a pull request.

## Getting started

1. Fork the repository and clone your fork.
2. Create a feature branch off `jazzy`:

   ```bash
   git checkout -b my-feature jazzy
   ```

3. Build the workspace and source it:

   ```bash
   rosdep install --from-paths src --ignore-src -r -y
   colcon build --symlink-install
   source install/setup.bash
   ```

4. Install the pre-commit hooks (one-time setup):

   ```bash
   pip install pre-commit
   pre-commit install
   ```

## Linting

This repository uses [pre-commit](https://pre-commit.com/) to run linting and formatting checks
(trailing whitespace, end-of-file, YAML/JSON checks, `markdownlint`, and `flake8`) before each
commit. Run them against the whole tree before pushing:

```bash
pre-commit run --all-files
```

## Where things live

See the [Packages section of the README](README.md#packages) for the full map. Keep new interfaces
in the package that matches their layer so dependency direction stays one-way:

- [`clearpath_platform_msgs`](clearpath_platform_msgs) — base platform telemetry and commands.
- [`clearpath_motor_msgs`](clearpath_motor_msgs) — motor controller feedback/status.
- [`clearpath_control_msgs`](clearpath_control_msgs) — higher-level control interfaces.

## Compatibility — read this first

Changing an existing `.msg`, `.srv`, or `.action` is an **API/ABI break**: every package that
depends on it (drivers, control, desktop tools) must be rebuilt or you will hit type-hash
mismatches at runtime.

- Prefer **adding** new fields/messages over modifying existing ones.
- If a breaking change is unavoidable, call it out clearly in the pull request and identify the
  downstream packages that must be rebuilt or updated.

## Testing your changes

Interface packages are validated by building them and the packages that consume them:

```bash
colcon build --symlink-install
```

For any interface you add or change, build and, where practical, run a downstream producer and
consumer to confirm the type hashes match at runtime.

## Continuous integration

[`clearpath_msgs_ci`](.github/workflows/ci.yml) runs on every pull request:

- **jazzy** (`build_and_test`) — builds and tests against the released `testing`/`main` repos.
- **Jazzy Clearpath Source** (`source_build`) — source build of `clearpath_motor_msgs`,
  `clearpath_msgs`, and `clearpath_platform_msgs`.

Both jobs build against **released** dependencies and do not pull in upstream source branches, so
they are not affected by in-progress branches in other Clearpath repositories — they should pass on
their own. Because these are interface packages, a breaking change can still fail **downstream**
builds that consume these messages, so rebuild and retest those consumers when you change an
interface (see [Compatibility](#compatibility--read-this-first) above).

## Submitting a pull request

1. Make sure the workspace builds cleanly.
2. Push your branch and open a pull request against `jazzy`.
3. Write a clear description of the interface change and why it is needed.
4. Explicitly note any breaking change and the downstream packages it affects.

## Reporting issues

Please open issues on the
[GitHub issue tracker](https://github.com/clearpathrobotics/clearpath_msgs/issues) and fill out
the bug report template, which walks you through the details we need to reproduce the problem.

## License

By contributing, you agree that your contributions will be licensed under the
[BSD-3-Clause license](LICENSE) that covers this project.
