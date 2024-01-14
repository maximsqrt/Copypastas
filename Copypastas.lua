-- Copypastas.lua

function Copypastas_OnLoad(self)
    -- Code for initializing your addon and loading other components
    print("Copypastas addon loaded.")

    -- Load button, dropdown, and editbox components
    Copypastas_Button_OnLoad(self)
    Copypastas_Dropdown_OnLoad(self)
    Copypastas_EditBox_OnLoad(self)
end
