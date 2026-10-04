# novibe

Workspace for novibe. Each repo lives as a normal git repo under `projects/`:

- `projects/novibe`: the NoVibe method, its Claude Code plugin and the portal
- `projects/nv`: the `nv` workspace CLI
- `projects/manifesto`: the manifesto site
- `projects/agentbox`: the remote session stack these sessions run on

Never `git add projects/` in this repo; that would turn the repos into gitlinks.

Remote sessions run as DevPod workspaces on `claude-box`, one container and one clone per session, built on [agentbox](https://github.com/novibe-org/agentbox). `agentbox new <id> novibe-org/workspace` creates one from the Mac.
