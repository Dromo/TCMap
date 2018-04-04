import "Turbine.UI";
import "Turbine.UI.Lotro";

-- a toggle button to put on the map
MapButton = class( Turbine.UI.Button );

function MapButton:Constructor( control,x,y, coords )
    Turbine.UI.Button.Constructor( self );
    
    self.isactive = false;
    self.ismarked = false;

    self.makeQS = false;
    
    self:SetParent( control );
    self:SetBackground("Drono/TCMap/Resources/inactive.tga");
    self:SetSize(16,16);
    self:SetPosition( x-8,y-8 );
    self:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
    
    self.Toggle = function( )
        self.isactive = not self.isactive;
        if self.isactive then
            self.Activate( );
        else
            self.Deactivate( );
        end
    end
    
    self.Click = function(sender, args)
        self.Toggle();
        SaveData( mainwindow );
    end
    
    self.Activate = function()
        self.isactive = true;
        self:SetBackground( "Drono/TCMap/Resources/active.tga" );
    end
    
    self.Deactivate = function()
        self.isactive = false;
        self:SetBackground( "Drono/TCMap/Resources/inactive.tga" );
    end

    self.Mark = function()
        self.ismarked = true;
        self:SetBackground( "Drono/TCMap/Resources/inactive.tga" );
        self.CreateMarker( Turbine.UI.Color.Green );
    end

    self.Unmark = function()
        self.ismarked = false;
        self:DestroyMarker();
        if self.isactive then
            self:SetBackground( "Drono/TCMap/Resources/active.tga" );
        end
    end
    
    self.ToggleMark = function()
        self.ismarked = not self.ismarked;
        if self.ismarked then
            self.Mark(  );
        else
            self.Unmark(  );
        end
    end

    self.SetLocked = function( button, bool )
        if bool then
            button.Click = nil;
        else
            button.Click = function(sender, args) button.Toggle() end
        end
    end
    
    self:SetWantsKeyEvents(true);
    if Turbine.UI.Lotro.Action.AltKey == nil then
        Turbine.UI.Lotro.Action.AltKey = 268435556;
    end
    if Turbine.UI.Lotro.Action.ControlKey == nil then
        Turbine.UI.Lotro.Action.ControlKey = 268435575;
    end
    if Turbine.UI.Lotro.Action.ShiftKey == nil then
        Turbine.UI.Lotro.Action.ShiftKey = 268435458;
    end

    self.KeyDown = function(sender, args)
        if (args.Action == Turbine.UI.Lotro.Action.ControlKey) and self.makeQS and mainwindow:IsVisible() then
            local QSdata = mainwindow.channelList:GetValue()
            if mainwindow.channelList:GetSelectedIndex()==5 then
                QSdata = QSdata..mainwindow.target:GetText().." ";
            end
            QSdata = QSdata..strings[locale]["nexttarget1"]..coords..strings[locale]["nexttarget2"];
            self.CreateQuickslot(Turbine.UI.Color.Yellow, QSdata);
        elseif (args.Action == Turbine.UI.Lotro.Action.AltKey) and self.makeQS and mainwindow:IsVisible() then
            self.CreateQuickslot(Turbine.UI.Color.Blue, "/way target "..coords);
            self.qs.MouseClick = function()
                mainwindow:SetVisible(false);
            end
        elseif (args.Action == Turbine.UI.Lotro.Action.ShiftKey) and self.makeQS and mainwindow:IsVisible() then
            self.CreateQuickslot(Turbine.UI.Color.Transparent, false);
            self.qs.MouseClick = function()
                self.ToggleMark();
            end
        end
    end

    self.KeyUp = function(sender, args)
        self.DestroyQuickslot();
    end

    self.CreateQuickslot = function(color, alias)
        self.DestroyQuickslot();
        self.qs = Turbine.UI.Lotro.Quickslot();
        self.qs:SetParent(self);
        if alias~=false then
            self.qs:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Alias, alias));
        end
        self.qs.hider = Turbine.UI.Control();
        self.qs.hider:SetParent(self);
        self.qs.hider:SetMouseVisible(false);
        if alias~=false then
            self.qs.hider:SetBackground("Drono/TCMap/Resources/inactive.tga");
        end
        self.qs.hider:SetBackColor(color);
        self.qs.hider:SetBackColorBlendMode(Turbine.UI.BlendMode.Color);
    end
    
    self.DestroyQuickslot = function()
        if (self.qs) then
            self.qs:SetParent(nil);
            self.qs.hider:SetParent(nil);
            self.qs = nil;
        end
    end

    self.CreateMarker = function(color)
        self.DestroyMarker();
        self.mk = Turbine.UI.Lotro.Quickslot();
        self.mk:SetParent(self);
        self.mk:SetShortcut(nil);
        self.mk.hider = Turbine.UI.Control();
        self.mk.hider:SetParent(self);
        self.mk.hider:SetMouseVisible(false);
        self.mk.hider:SetBackground("Drono/TCMap/Resources/inactive.tga");
        self.mk.hider:SetBackColor(color);
        self.mk.hider:SetBackColorBlendMode(Turbine.UI.BlendMode.Color);
    end

    self.DestroyMarker = function()
        if (self.mk) then
            self.mk:SetParent(nil);
            self.mk.hider:SetParent(nil);
            self.mk = nil;
        end
    end
end
