| Комбинация | Режим | Функция API / Механизм | Описание действия |
| :--- | :--- | :--- | :--- |
| `grn` | N | `vim.lsp.buf.rename()` | Переименовать символ во всем проекте |
| `gra` | N, V | `vim.lsp.buf.code_action()` | Показать доступные действия с кодом (Code Actions) |
| `grr` | N | `vim.lsp.buf.references()` | Найти все ссылки на символ |
| `gri` | N | `vim.lsp.buf.implementation()` | Перейти к реализации |
| `grt` | N | `vim.lsp.buf.type_definition()` | Перейти к определению типа |
| `grx` | N | `vim.lsp.codelens.run()` | Запустить CodeLens |
| `gO` | N | `vim.lsp.buf.document_symbol()` | Открыть список символов текущего документа |
| `<C-s>` | I, S | `vim.lsp.buf.signature_help()` | Показать подсказку сигнатуры функции |
| `K` | N | `vim.lsp.buf.hover()` | Показать документацию (включается при подключении LSP) |
| `<C-]>` | N | `tagfunc` (LSP) | Перейти к определению (Go to Definition) |
| `gq` | N, V | `formatexpr` (LSP) | Отформатировать выделенный фрагмент или текст |
| `gx` | N | `vim.ui.open()` | Открыть внешнюю ссылку или URI под курсором |
| `]d` / `[d` | N | `vim.diagnostic.jump()` | Перейти к следующей или предыдущей диагностике |
| `]D` / `[D` | N | `vim.diagnostic.jump()` | Перейти к последней или первой диагностике в буфере |
| `<C-w>d` | N | `vim.diagnostic.open_float()` | Открыть всплывающее окно с текстом диагностики |
