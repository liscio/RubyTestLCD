# app_controller.rb
# RubyTestLCD
#
# Created by Christopher Liscio on 1/7/11.
# Copyright 2011 SuperMegaUltraGroovy. All rights reserved.

class AppController
    def applicationShouldTerminateAfterLastWindowClosed(application)
        return true
    end
end