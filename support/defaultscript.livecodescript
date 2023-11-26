script "org.openxtalk.widget.onscreenkeyboard.__DefaultScript"

on keyDown pKey
   do keyDown && pKey in me
end keyDown

on keyUp pKey
   do keyUp && pKey in me
end keyUp

on rawKeyDown pKeyCode
   do rawKeyDown && pKeyCode in me
end rawKeyDown

on rawKeyUp pKeyCode
   do rawKeyUp && pKeyCode in me
end rawKeyUp

local lModifiersDown
on virtualKeyDown pKey
   set the toggleVKeyUp of me to true
   switch pKey
      case "Command-AltLeft"
      case "Command-AltRight"
      case "Control-Left"
      case "Control-Right"
      case "Win-Option"
      case "FunctionKey"
      case "Shift-Left"
      case "Shift-Right"
         if pKey is not among the items of lModifiersDown then
            put pKey &"," after lModifiersDown
         end if
         break
      case "Capslock"
         do keyUp && pKey in me
         break
      case "MenuKey"
         break
      default
         set the vKeysDown of me to ""
         repeat for each item tModifier in lModifiersDown
            do keyUp && tModifier in me
         end repeat
         
         replace "-AltLeft" with "" in lModifiersDown
         replace "-AltRight" with "" in lModifiersDown
         replace "-Left" with "" in lModifiersDown
         replace "-Right" with "" in lModifiersDown
         replace "Win-" with "" in lModifiersDown --- if macOS
         put lModifiersDown & pKey
         put empty into lModifiersDown
         break
   end switch
end virtualKeyDown


on virtualKeyUp pKey
   put virtualKeyUp && pKey
end virtualKeyUp

on arrowKey pDirection
   do arrowKey && pDirection in me
end arrowKey

on functionKey pFKeyNum
   do functionKey && pFKeyNum in me
end functionKey

on commandKeyDown pKey
   do commandKeyDown && pKey in me
end commandKeyDown

on controlKeyDown pKey
   do controlKeyDown && pKey in me
end controlKeyDown

on arrowKey pKey
   do arrowKey && pKey in me
end arrowKey

on optionKeyDown pKey
   do optionKeyDown && pKey in me
end optionKeyDown

on altKeyDown pKey
   do optionKeyDown && pKey in me
end altKeyDown

on controlKeyDown pKey
   do controlKeyDown && pKey in me
end controlKeyDown

on returnKey
   do returnKey in me
end returnKey

on enterKey
   do returnKey in me
end enterKey

on tabKey
   do tabKey in me
end tabKey

on escapeKey
   do escapeKey in me
end escapeKey

on backspaceKey
   do backspaceKey in me
end backspaceKey

on deleteKey
   do deleteKey in me
end deleteKey

on cutKey
   do cutKey in me --- should be same as doing 'command+c' in the widget
end cutKey

on copyKey
   do copyKey in me --- should be same as doing 'command+c' in the widget
end copyKey

on pasteKey
   do pasteKey in me --- should be same as doing 'command+v' in the widget
end pasteKey

on undoKey
   do undoKey in me --- should be same as doing 'command+z' in the widget
end undoKey

on backKey
   --- Some mabile devices may have a physical back button
end backKey

on mouseMove pX,pY
end mouseMove

on mouseDown pMouseBtn
end mouseDown

on mouseUp pMouseBtn
end mouseUp

on mouseRelease
end mouseRelease
