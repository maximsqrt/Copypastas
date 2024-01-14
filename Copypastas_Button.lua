-- Copypastas_Button.lua

function Copypastas_Button_OnLoad(self)
    print("Copypastas Button addon loaded.")

    local frame = CreateFrame("Button", "CCopyPastaFrame", UIParent, "UIPanelButtonTemplate")
    frame:SetPoint("CENTER")  -- Set the position of the frame to the center of the screen.
    frame:SetSize(150, 30)  -- Set the size of the frame.
    frame:SetText("Open Copypasta Window")  -- Set the text on the button.

    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)

    frame:SetScript("OnClick", function(self)
        print("Button clicked!")
    end)

    frame:SetScript("OnHide", function(self)
        -- Handle hide event if needed
    end)

    -- ... (rest of the button-specific code)
end
