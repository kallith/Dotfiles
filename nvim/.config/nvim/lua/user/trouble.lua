local status_ok, trouble = pcall(require, "trouble")
if not status_ok then
    return
end

trouble.setup({
    mode = "workspace_diagnostics",
    padding = false,
    group = false,
    auto_open = false,
    auto_close = false,
    use_diagnostic_signs = true,
})
