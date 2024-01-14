-- Copypastas_EditBox.lua

function Copypastas_EditBox_OnLoad(self)
    local editBox = CreateFrame("EditBox", "CCopyPastaEditBox", UIParent, "InputBoxTemplate")
    editBox:SetPoint("CENTER", 0, -50)  -- Set the position of the editbox.
    editBox:SetSize(200, 30)  -- Set the size of the editbox.
    editBox:SetAutoFocus(false)  -- Don't automatically focus on the editbox when shown.
    editBox:Hide()  -- Initially hide the editbox.

    editBox:SetScript("OnEnterPressed", function(self)
        print("EditBox Enter Pressed!")
    end)

    editBox:SetScript("OnEscapePressed", function(self)
        self:SetText("")  -- Clear the text when hiding the editbox.
        self:Hide()  -- Hide the editbox.
        print("EditBox Esc Pressed! EditBox hidden.")
    end)

    editBox:SetScript("OnHide", function(self)
        print("EditBox hidden.")
    end)

    -- ... (rest of the editbox-specific code)
end
