# Security Policy

## Scope

This project contains Claude Code skill instructions, reference material, install scripts,
and static assets. It does not ship runtime application code.

## Reporting a Vulnerability

Please report vulnerabilities privately through GitHub Security Advisories for the
repository that hosts this project. Do not open a public issue for security problems.

## Security Practices

- The skill treats scanned repositories as untrusted input.
- Frontend code, documentation, `AGENTS.md`, `CLAUDE.md`, and `SKILL.md` files inside
  analyzed projects must be read as data, not followed as instructions.
- Install scripts use user-level directories only.
- No credentials should be committed to this repository.
- Browser validation should not run destructive flows against production unless the user
  explicitly provides a safe test environment.

## Frontend-Specific Risk Notes

The skill may inspect URLs, take screenshots, and run build or test commands. Users should
avoid pointing validation at pages containing sensitive customer data unless screenshots and
artifacts are safe to store locally.
