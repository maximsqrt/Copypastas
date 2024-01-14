-- Copypastas.lua

-- This is the main function that gets called when your addon is loaded.
function Copypastas_OnLoad(self)
    -- Print a message to the console indicating that the addon has been loaded.
    print("Copypastas addon loaded.")

    -- Create a button frame for the addon using UIParent as the parent frame and "UIPanelButtonTemplate" as the template.
    local frame = CreateFrame("Button", "CopypastasFrame", UIParent, "UIPanelButtonTemplate")
    frame:SetPoint("CENTER")  -- Set the position of the frame to the center of the screen.
    frame:SetSize(150, 30)  -- Set the size of the frame.
    frame:SetText("Select Chat")  -- Set the text on the button.

    -- Create a dropdown menu frame for the addon as a child of the button frame, using "UIDropDownMenuTemplate" as the template.
    local dropdown = CreateFrame("Frame", "CopypastasDropdown", frame, "UIDropDownMenuTemplate")
    dropdown:SetPoint("TOPLEFT", frame, "BOTTOMLEFT", 0, -5)  -- Set the position of the dropdown below the button.

    -- Define options for the dropdown menu, each with a text and a function to be executed when clicked.
    local options = {
        { text = "/yell", func = function() SendChatMessage("Hello!", "YELL") end },
        { text = "/say", func = function() SendChatMessage("Hello!", "SAY") end },
        { text = "/raid", func = function() SendChatMessage("Hello!", "RAID") end },
    }

    -- Initialize the dropdown menu with the defined options.
    UIDropDownMenu_Initialize(dropdown, function()
        for _, option in ipairs(options) do
            local info = UIDropDownMenu_CreateInfo()
            info.text = option.text
            info.func = option.func
            UIDropDownMenu_AddButton(info)
        end
    end)

    -- Set up the click functionality for the button.
    frame:SetScript("OnClick", function(self)
        if not dropdown:IsShown() then
            CloseDropDownMenus()  -- Close any open dropdown menus.
            ToggleDropDownMenu(1, nil, dropdown, frame, 0, 0)  -- Toggle the visibility of the dropdown menu.
        else
            CloseDropDownMenus()  -- Close the dropdown menu if it is already shown.
        end
    end)

    -- Register a slash command ("/Copypastas") that prints a message to the console.
    SLASH_COPYPASTAS1 = "/Copypastas"
    SlashCmdList["COPYPASTAS"] = function()
        print("Opening Copypastas addon settings!")
        -- Add your settings logic here.
    end
end  -- End of Copypastas_OnLoad function.
