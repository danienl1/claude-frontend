# Privacy

`claude-frontend` does not collect telemetry or transmit project data by itself.

When installed, the skill runs inside Claude Code and uses the local tools that Claude Code
invokes for the current session. Any project files, URLs, screenshots, traces, or build
outputs remain subject to the user's Claude Code environment and tool configuration.

Recommendations:

- Avoid validating production pages that display private user data.
- Store Playwright screenshots and traces only in local artifact directories.
- Redact secrets or customer data before sharing audit reports externally.
