local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end

bufferline.setup({
    options = {
        middle_mouse_command = "Bdelete! %d",
        offsets = {
            { filetype = "NvimTree", text = "", padding = 1 }
        },
        separator_style = "thin",
        show_close_icon = false,
        show_buffer_icons = false,
        diagnostics = "nvim_lsp",
    },
})
