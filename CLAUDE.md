# novibe

Workspace for novibe. Each repo lives as a normal git repo under `projects/`:

- `projects/novibe`: the NoVibe method and its Claude Code plugin
- `projects/manifesto`: the manifesto site
- `projects/agentbox`: the remote session stack these sessions run on
- `projects/gherkin-lint-plus`: the Gherkin linter the flow depends on, our fork published as `@novibe-org/gherkin-lint-plus`

Never `git add projects/` in this repo; that would turn the repos into gitlinks.

Remote sessions run on an agentbox host, one container and one clone per session, built on [agentbox](https://github.com/novibe-org/agentbox). `agentbox new <id> novibe-org/workspace` creates one from the Mac; add `--host <host>` when `AGENTBOX_MACHINE` is not set.
