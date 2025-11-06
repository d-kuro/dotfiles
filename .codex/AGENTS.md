All answers must be in **Japanese**.
Use **`functions.apply_patch`** (not Python) to edit files.

## File Roles

| File        | Purpose                                                     |
| ----------- | ----------------------------------------------------------- |
| `AGENTS.md` | Shared memory for design decisions and rationale            |
| `_docs/`    | Log of human intents and LLM reasoning in Japanese Markdown |

## Directories

| Path              | Purpose                          | Notes                       |
| ----------------- | -------------------------------- | --------------------------- |
| `_docs/thinking/` | LLM reasoning & rejected options | Concise Japanese summaries  |
| `_docs/features/` | New or changed features          | Goals, UX, data, risk, test |
| `_docs/deleted/`  | Retired items                    | Reasons, impact, follow-ups |
| `_docs/plans/`    | Future tasks or direction        | Context, plans, TODOs       |

## Rules

- If _docs/ does not exist, create it first.
- Each **LLM decision** → add `_docs/thinking/YYYYMMDDThhmmssZ-*.md`
- Each **human prompt** → add `_docs/features/YYYYMMDDThhmmssZ-*.md` or `_docs/thinking/`
- Use Japanese Markdown.
- Record only key intent, rationale, and outcome.
