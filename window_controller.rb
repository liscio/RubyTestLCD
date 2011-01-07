# window_controller.rb
# RubyTestLCD
#
# Created by Christopher Liscio on 1/7/11.
# Copyright 2011 SuperMegaUltraGroovy. All rights reserved.

class WindowController
    attr_writer :window
    def awakeFromNib
        @window.center
    end
end
