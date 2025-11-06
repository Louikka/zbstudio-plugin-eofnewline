return {
    name = "EOF new line",
    description = "Adds new line at the end of file on save.",
    author = "",
    version = 0.1,

    onEditorPreSave = function(self, editor)
        if editor:GetLine(editor:GetLineCount() - 1) ~= '' then
            if editor:GetEOLMode() == wxstc.wxSTC_EOL_CRLF then
                editor:AppendText('\r\n')
            elseif editor:GetEOLMode() == wxstc.wxSTC_EOL_CR then
                editor:AppendText('\r')
            elseif editor:GetEOLMode() == wxstc.wxSTC_EOL_LF then
                editor:AppendText('\n')
            else
                ide:Print("Something gone wrong... (editor:GetEOLMode() => " .. editor:GetEOLMode() .. ")")
            end
        end
    end,
}
