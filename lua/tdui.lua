tdui = function()
    local t = {}

    t.createWindowBase = function()
        local window = {}

        window.open = function(self) end
        window.close = function(self) end

        window:open()

        return window
    end

    return t
end

return tdui