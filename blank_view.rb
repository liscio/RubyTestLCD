# blank_view.rb
# RubyTestLCD
#
# Created by Christopher Liscio on 1/7/11.
# Copyright 2011 SuperMegaUltraGroovy. All rights reserved.

class BlankView < NSView
    @@kColors = {
        0 => NSColor.redColor,
        1 => NSColor.greenColor,
        2 => NSColor.blueColor,
        3 => NSColor.whiteColor,
        4 => NSColor.blackColor,
    }
    @@kColorCount = 5

    def initWithFrame(frame)
        super
        @colorIndex = 0
        @isFullScreen = false
        return self
    end
    
    def mouseDown(event)
        if @isFullScreen
            self.exitFullScreenModeWithOptions(nil)
            self.window.makeFirstResponder(self)
            @isFullScreen = false
        else
            self.enterFullScreenMode(NSScreen.mainScreen, withOptions:nil)
            @isFullScreen = true
        end
    end
    
    def acceptsFirstResponder
        return true
    end
    
    def canBecomeKeyView
        return true
    end
    
    def drawRect(rect)
        @@kColors[@colorIndex].set
        NSRectFill( bounds )
    end
    
    def keyDown(event)
        @colorIndex = @colorIndex + 1
        if @colorIndex == @@kColorCount
            @colorIndex = 0
        end
        self.setNeedsDisplay(true)
    end
end