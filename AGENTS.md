# Agents guidance (concise)

Build / Format / Lint / Test
- Format: `stylua .` (uses `stylua.toml`, 2-space indent, 120 col)
- Lint: `selene --config selene.toml` (or just `selene`)
- Run all tests: `busted --helper tests/minit.lua tests`
- Run a single test file: `busted --helper tests/minit.lua tests/colorscheme_spec.lua`

## Issue Tracking with bd (beads)
**IMPORTANT**: This project uses `bd (beads)` for ALL issue tracking. Do NOT use markdown TODOs or other tracking methods.

Quick bd commands
- Check ready work: `bd ready --json`
- Create issue: `bd create "Issue title" -t task -p 2 --json`
- Claim issue: `bd update <id> --status in_progress`
- Close issue: `bd close <id> --reason "Completed" --json`

Code style (Lua)
- Modules: `local M = {}` then `return M`; expose public API on `M`.
- Imports: `local mod = require("mod.name")` (no side-effect requires in module scope).
- Naming: use `snake_case` for functions/vars, `PascalCase` for classes/records, `UPPER_SNAKE` for true constants.
- Formatting: follow `stylua.toml`; preserve `-- stylua: ignore` for computed tables or long literals.
- Avoid globals: prefer `local` and explicit returns; only write to `vim.g`/`vim.o` when necessary.
- Types & docs: use EmmyLua annotations (`---@param`, `---@return`) for public funcs.
- Error handling: validate public input with `vim.validate` or return `nil, err`; prefer explicit errors for programmer mistakes.

Cursor / Copilot notes
- No project-level `.cursorrules` or `.github/copilot-instructions.md` found; follow repo patterns (use `-- stylua: ignore` where present).

Keep changes small and consistent with existing style. When in doubt, run `stylua` and `selene` before committing.
