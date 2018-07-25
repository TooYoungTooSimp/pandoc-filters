function CodeBlock(block)
    for _, tbl in pairs(block.attr) do
        if type(tbl) == "table" then
            if type(tbl.include) == "string" then
                f = io.open(tbl.include, "rb")
                if f ~= nil then
                    block.text = f:read("*all")
                    print("Included file " .. tbl.include)
                    return block
                else
                    print("Failed to include file " .. tbl.include)
                end
            end
        end
    end
end