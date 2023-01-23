local status_ok, trouble = pcall(require, "trouble")
if not status_ok then
	return
end

trouble.setup({
    mode = "document_diagnostics",
    padding = false,
    group = false,
    auto_open = true,
    auto_close = true,
    use_diagnostic_signs = true,
})
