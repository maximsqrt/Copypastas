-- Copypastas_Dropdown.lua
function Copypastas_Dropdown_OnLoad(self)
    local dropdown = CreateFrame("Frame", "CopypastasDropdown", UIParent, "UIDropDownMenuTemplate")
    dropdown:SetPoint("TOPLEFT", CCopyPastaFrame, "BOTTOMLEFT", 0, -5)  -- Set the position of the dropdown below the button.

    UIDropDownMenu_Initialize(dropdown, function()
        -- ... (dropdown initialization code)
    end)

    CCopyPastaFrame:SetScript("OnClick", function(self)
        print("Button clicked! Dropdown shown!")
    end)

    CCopyPastaFrame:SetScript("OnHide", function(self)
        -- Handle hide event if needed
    end)

    -- ... (rest of the dropdown-specific code)
end
