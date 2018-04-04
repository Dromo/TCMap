import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Drono.TCMap";

-- the control that displays the map of a region with its corresponding locations. each location is active or not, depending on the togglebutton
MapControl = class( Turbine.UI.Window );

function MapControl:Constructor( location, parent )
    Turbine.UI.Window.Constructor( self );
    self:SetSize(800,630);
    
    self.pointCoords = {};
    self.pointLabels = {};
    self.pointLocations = {};
    self.pointButtons = {};
    
    self.location = location;

    self.locked = false;

    for key,value in pairs( mapdata[location] ) do
        table.insert(self.pointCoords,key);
        table.insert(self.pointLocations,value);
    end
    
    self.pointNr = tableLength(self.pointCoords)
    
    self.lockIcon = Turbine.UI.Button();
    self.lockIcon:SetParent( self );
    self.lockIcon:SetSize( 20,20 );
    self.lockIcon:SetPosition( 762,0 );
    self.lockIcon:SetBackground( strings["unlock"] );
    self.lockIcon:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
    self.lockIcon.MouseClick = function( sender,args )
        self:SetLocked(not self.locked);
    end

    for i=1,self.pointNr do
        self.pointButtons[i] = MapButton( self, self.pointLocations[i][1], self.pointLocations[i][2], self.pointCoords[i] );
        self.pointLabels[i] = Turbine.UI.Label();
        self.pointLabels[i]:SetPosition( self.pointButtons[i]:GetLeft()+self.pointButtons[i]:GetWidth()+3, self.pointButtons[i]:GetTop()+self.pointButtons[i]:GetHeight()/2 );
        self.pointLabels[i]:SetParent( self );
        self.pointLabels[i]:SetVisible( false );
        self.pointLabels[i]:SetSize( 90,10 );
        self.pointLabels[i]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
        self.pointLabels[i]:SetText( self.pointCoords[i] );
        if self.pointCoords[i]=="64.2S 10.7E" then
            self.pointLabels[i]:SetSize( 90,25 );
            self.pointLabels[i]:SetText( "K\195\162m Lag\195\186rz \n 18.7N 33.5E" );
        end
        if self.pointCoords[i]=="45.6S 19.7W" or 
            self.pointCoords[i]=="53.7S 19.5W" or
            self.pointCoords[i]=="10.3N 14.3W" or
            self.pointCoords[i]=="11.2S 33.7W" then
            self.pointLabels[i]:SetPosition( self.pointButtons[i]:GetLeft()-48, self.pointButtons[i]:GetTop()-10);
        end
        self.pointLabels[i]:SetBackColor( Turbine.UI.Color(1,0.1,0.1,0.1) );
        self.pointLabels[i]:SetZOrder( self.pointButtons[i]:GetZOrder()+1 );
        self.pointButtons[i].MouseEnter = function(  )
            self.pointLabels[i]:SetVisible( true );
        end
        self.pointButtons[i].MouseLeave = function()
            self.pointLabels[i]:SetVisible( false );
        end
    end

    self.rightClick = Turbine.UI.ContextMenu();
    self.menu1 = Turbine.UI.MenuItem( strings[locale]["clearmap"] );
    self.menu1.Click = function(sender,args)
        self:SetActive( {} );
    end
    self.menu2 = Turbine.UI.MenuItem( strings[locale]["lockmsg"] );
    self.menu2.Click = function(sender,args)
        self:SetLocked( not self.locked );
    end 
    self.rightClick:GetItems():Add(self.menu1);
    self.rightClick:GetItems():Add(self.menu2);
    
    local menu = self.rightClick
    
    self.MouseClick = function( sender, args )
        parent:Activate();
        if (args.Button == Turbine.UI.MouseButton.Right) then
            menu:ShowMenu();
        end
    end
    
    self.markqs = Turbine.UI.Lotro.Quickslot();
    self.markqs:SetParent( self );
    self.markqs:SetSize( 12,12 );
    self.markqs:SetPosition( 744,4 );
    self.markqs:SetParent(self);
    self.markqs:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Alias, strings[locale]["loccommand"]));
    self.markqs:SetBlendMode( Turbine.UI.BlendMode.Overlay );
    self.markqs.hider = Turbine.UI.Control();
    self.markqs.hider:SetParent( self );
    self.markqs.hider:SetSize( 13,13 );
    self.markqs.hider:SetPosition( 744,4 );
    self.markqs.hider:SetMouseVisible( false );
    self.markqs.hider:SetZOrder( self.markqs:GetZOrder()+1 );
    self.markqs.hider:SetBackground( strings["mappoint"] );
    self.markqs.hider:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
    
    self.moveqs = Turbine.UI.Lotro.Quickslot();
    self.moveqs:SetParent( self );
    self.moveqs:SetSize( 12,12 );
    self.moveqs:SetParent( self );
    self.moveqs:SetZOrder( self.pointButtons[1]:GetZOrder()+5 );
    self.moveqs:SetShortcut(Turbine.UI.Lotro.Shortcut(Turbine.UI.Lotro.ShortcutType.Alias, strings[locale]["loccommand"]));
    self.moveqs:SetVisible( false );
    self.moveqs.hider = Turbine.UI.Control();
    self.moveqs.hider:SetParent( self );
    self.moveqs.hider:SetSize( 13,13 );
    self.moveqs.hider:SetVisible( false );
    self.moveqs.hider:SetMouseVisible( false );
    self.moveqs.hider:SetZOrder( self.moveqs:GetZOrder()+1 );
    self.moveqs.hider:SetBackground( strings["mappoint"] );
    self.moveqs.hider:SetBlendMode( Turbine.UI.BlendMode.AlphaBlend );
    
    AddCallback(Turbine.Chat, "Received", function(sender, args)
            local prefixLength = strings[locale]["locprefix"]:len();
            if args.ChatType == 4 and args.Message:sub(1,prefixLength) == strings[locale]["locprefix"] then
                local loc = ParseChatLocation(args.Message:sub(prefixLength));
                if loc ~= nil then
                    local coor = mapdata[location.."c"](loc.y, loc.x);
                    self.moveqs:SetVisible( true );
                    self.moveqs.hider:SetVisible( true );
                    self.moveqs:SetPosition( coor[1]-6, coor[2]-6 );
                    self.moveqs.hider:SetPosition( coor[1]-6, coor[2]-6 );
                end
            end
        end);
end


function MapControl:SetMakeQS( makeQuickSlots )
    for i=1,self.pointNr do
        self.pointButtons[i].makeQS = makeQuickSlots;
    end
end


function MapControl:AddActive( coordlist )
    if not self.locked then
        for i=1,self.pointNr do
            if tableContains( coordlist, self.pointCoords[i] ) then
                self.pointButtons[i].Activate();
            end
        end
    end
end

function MapControl:SetActive( coordlist )
    if not self.locked then
        for i=1,self.pointNr do
            if tableContains( coordlist, self.pointCoords[i] ) then
                self.pointButtons[i].Activate();
            else
                self.pointButtons[i].Deactivate();
            end
        end
    end
end

function MapControl:AddMarked( coordlist )
    for i=1,self.pointNr do
        if tableContains ( coordlist, self.pointCoords[i] ) then
            self.pointButtons[i].Mark();
        end
    end
end

function MapControl:SetMarked( coordlist )
    for i=1,self.pointNr do
        if tableContains( coordlist, self.pointCoords[i] ) then
            self.pointButtons[i].Mark();
        else
            self.pointButtons[i].Unmark();
        end
    end
end

function MapControl:SetInactive( coordlist )
    if not self.locked then
        for i=1,self.pointNr do
            if tableContains( coordlist, self.pointCoords[i] ) then
                self.pointButtons[i].Deactivate();
            else
                self.pointButtons[i].Activate();
            end
        end
    end
end

function MapControl:SetLocked( bool )
    self.locked = bool;
    if bool then
        self.menu2:SetText( strings[locale]["unlockmsg"] );
        self.lockIcon:SetBackground( strings["lock"] );
    else
        self.menu2:SetText( strings[locale]["lockmsg"] );
        self.lockIcon:SetBackground( strings["unlock"] );
    end
    for i=1,self.pointNr do
        self.pointButtons[i]:SetLocked( bool );
    end
end

function MapControl:GetActive( )
    local t = {}
    for i=1,self.pointNr do
        if self.pointButtons[i].isactive then
            table.insert(t, self.pointCoords[i])
        end
    end
    return t
end

function MapControl:GetMarked(  )
    local t = {}
    for i=1,self.pointNr do
        if self.pointButtons[i].ismarked then
            table.insert(t, self.pointCoords[i])
        end
    end
    return t
end

local LOC_MESSAGES = { 
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) i%d+ ox(%d+%.?%d*) oy(%d+%.?%d*) oz(%d+%.?%d*) h(%d+%.?%d*)',
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) i%d+ cInside ox(.-%d+%.?%d*) oy(.-%d+%.?%d*) oz(.-%d+%.?%d*) h(%d+%.?%d*)',
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) i%d+ ox(%d+%.?%d*) oy(%d+%.?%d*) oz(%d+%.?%d*)',
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) i%d+ cInside ox(.-%d+%.?%d*) oy(.-%d+%.?%d*) oz(.-%d+%.?%d*)',
    -- not likely to match last --
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) ox(.-%d+%.?%d*) oy(.-%d+%.?%d*) oz(.-%d+%.?%d*) h(%d+%.?%d*)',
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) cInside ox(.-%d+%.?%d*) oy(.-%d+%.?%d*) oz(.-%d+%.?%d*) h(%d+%.?%d*)',
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) ox(.-%d+%.?%d*) oy(.-%d+%.?%d*) oz(.-%d+%.?%d*)',
    'r(%d+) lx(%d+%.?%d*) ly(%d+%.?%d*) cInside ox(.-%d+%.?%d*) oy(.-%d+%.?%d*) oz(.-%d+%.?%d*)'
};

function ParseChatLocation( message )
    for i, suffix in ipairs(LOC_MESSAGES) do
        local r, lx, ly, ox, oy, oz, h = message:match(suffix);
        if r ~= nil then
            local x = (( math.floor( lx / 8 ) * 160 + tonum(ox) ) - 29360) / 200;
            local y = (( math.floor( ly / 8 ) * 160 + tonum(oy) ) - 24880) / 200;
            return { x = round(x,3), y = round(y,3) };
        end
    end
end

function round(num, idp)
    if idp and idp>0 then
        local mult = 10^idp
        return math.floor(num * mult + 0.5) / mult
    end
    return math.floor(num + 0.5)
end


function tonum(val) 
    if locale ~= 'en' then
        return tonumber((string.gsub(val,"%.",",")))
    else
        return tonumber(val);
    end
end
