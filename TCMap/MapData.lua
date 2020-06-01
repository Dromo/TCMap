local function Coords(north, west, south, east)
    -- Return a function for converting (longitude, lattitude) into (x, y)
    return function(lattitude, longitude)
        local x = 800 * (longitude - west) / (east - west);
        local y = 600 * (lattitude - north) / (south - north);
        return { x, y };
    end
end

mapdata={};

AngmarCoords = Coords(14.6, -42.8, -7.4, -13.3);
mapdata["Angmar"]={};
mapdata["Angmarc"] = AngmarCoords;
mapdata["Angmar"]["7.2N 30.4W"] = AngmarCoords(7.2, -30.4);
mapdata["Angmar"]["4.7N 29.2W"] = AngmarCoords(4.7, -29.2);
mapdata["Angmar"]["3.9N 39.9W"] = AngmarCoords(3.9, -39.9);
mapdata["Angmar"]["6.3N 37.9W"] = AngmarCoords(6.3, -37.9);
mapdata["Angmar"]["12.2N 29.5W"] = AngmarCoords(12.2, -29.5);
mapdata["Angmar"]["12.1N 27.3W"] = AngmarCoords(12.1, -27.3);
mapdata["Angmar"]["13.0N 25.4W"] = AngmarCoords(13.0, -25.4);
mapdata["Angmar"]["9.6N 22.9W"] = AngmarCoords(9.6, -22.9);
mapdata["Angmar"]["4.5N 21.1W"] = AngmarCoords(4.5, -21.1);
mapdata["Angmar"]["1.6S 23.2W"] = AngmarCoords(-1.6, -23.2);
mapdata["Angmar"]["0.7S 36.5W"] = AngmarCoords(-0.7, -36.5);
mapdata["Angmar"]["10.3N 14.3W"] = AngmarCoords(10.3, -14.3);


EvendimCoords = Coords(-1.6, -82.6, -24.4, -52.3);
mapdata["Evendim"]={};
mapdata["Evendimc"]= EvendimCoords;
mapdata["Evendim"]["13.8S 73.6W"] = EvendimCoords(-13.8, -73.6);
mapdata["Evendim"]["11.9S 72.3W"] = EvendimCoords(-11.9, -72.3);
mapdata["Evendim"]["8.1S 75.3"] = EvendimCoords(-8.1, -75.3);
mapdata["Evendim"]["7.5S 68.3W"] = EvendimCoords(-7.5, -68.3);
mapdata["Evendim"]["8.7S 67.0W"] = EvendimCoords(-8.7, -67.0);
mapdata["Evendim"]["4.2S 65.6W"] = EvendimCoords(-4.2, -65.6);
mapdata["Evendim"]["7.9S 61.8W"] = EvendimCoords(-7.9, -61.8);
mapdata["Evendim"]["9.4S 63.0W"] = EvendimCoords(-9.4, -63.0);
mapdata["Evendim"]["20.2S 60.7W"] = EvendimCoords(-20.2, -60.7);
mapdata["Evendim"]["19.7S 64.6W"] = EvendimCoords(-19.7, -64.6);
mapdata["Evendim"]["17.2S 65.6W"] = EvendimCoords(-17.2, -65.6);
mapdata["Evendim"]["15.8S 69.9W"] = EvendimCoords(-15.8, -69.9);


ForochelCoords = Coords(25.0, -92.5, -5.5, -52.4);
mapdata["Forochel"]={};
mapdata["Forochelc"] = ForochelCoords;
mapdata["Forochel"]["10.4N 65.7W"] = ForochelCoords(10.4, -65.7);
mapdata["Forochel"]["8.1N 78.9W"] = ForochelCoords(8.1, -78.9);
mapdata["Forochel"]["13.9N 75.4W"] = ForochelCoords(13.9, -75.4);
mapdata["Forochel"]["9.0N 70.8W"] = ForochelCoords(9.0, -70.8);
mapdata["Forochel"]["4.9N 77.3W"] = ForochelCoords(4.9, -77.3);
mapdata["Forochel"]["6.2N 79.7W"] = ForochelCoords(6.2, -79.7);
mapdata["Forochel"]["9.2N 82.2W"] = ForochelCoords(9.2, -82.2);
mapdata["Forochel"]["15.6N 88.2W"] = ForochelCoords(15.6, -88.2);
mapdata["Forochel"]["20.1N 85.2W"] = ForochelCoords(20.1, -85.2);
mapdata["Forochel"]["20.2N 74.1W"] = ForochelCoords(20.2, -74.1);
mapdata["Forochel"]["12.6N 69.7W"] = ForochelCoords(12.6, -69.7);
mapdata["Forochel"]["15.7N 68.1W"] = ForochelCoords(15.7, -68.1);


MistyCoords = Coords(-14.8, -12.5, -32.9, 12.3);
mapdata["Misty Mountains"]={};
mapdata["Misty Mountainsc"] = MistyCoords;
mapdata["Misty Mountains"]["20.5S 3.4W"] = MistyCoords(-20.5, -3.4);
mapdata["Misty Mountains"]["20.8S 5.1E"] = MistyCoords(-20.8, 5.1);
mapdata["Misty Mountains"]["21.8S 8.8E"] = MistyCoords(-21.8, 8.8);
mapdata["Misty Mountains"]["23.0S 2.6E"] = MistyCoords(-23.0, 2.6);
mapdata["Misty Mountains"]["23.3S 4.3W"] = MistyCoords(-23.3, -4.3);
mapdata["Misty Mountains"]["23.8S 2.3W"] = MistyCoords(-23.8, -2.3);
mapdata["Misty Mountains"]["23.9S 7.4E"] = MistyCoords(-23.9, 7.4);
mapdata["Misty Mountains"]["25.1S 0.5W"] = MistyCoords(-25.1, -0.5);
mapdata["Misty Mountains"]["26.1S 9.6E"] = MistyCoords(-26.1, 9.6);
mapdata["Misty Mountains"]["28.3S 6.7E"] = MistyCoords(-28.3, 6.7);
mapdata["Misty Mountains"]["28.5S 4.1E"] = MistyCoords(-28.5, 4.1);
mapdata["Misty Mountains"]["31.4S 0.4E"] = MistyCoords(-31.4, 0.4);


NorthDownsCoords = Coords(-1.3, -60.4, -22.5, -32.2);
mapdata["North Downs"]={};
mapdata["North Downsc"] = NorthDownsCoords;
mapdata["North Downs"]["8.6S 40.1W"] = NorthDownsCoords(-8.6, -40.1);
mapdata["North Downs"]["11.2S 33.7W"] = NorthDownsCoords(-11.2, -33.7);
mapdata["North Downs"]["15.4S 36.2W"] = NorthDownsCoords(-15.4, -36.2);
mapdata["North Downs"]["16.6S 37.5W"] = NorthDownsCoords(-16.6, -37.5);
mapdata["North Downs"]["16.3S 41.0W"] = NorthDownsCoords(-16.3, -41.0);
mapdata["North Downs"]["19.1S 46.3W"] = NorthDownsCoords(-19.1, -46.3);
mapdata["North Downs"]["16.4S 53.8W"] = NorthDownsCoords(-16.4, -53.8);
mapdata["North Downs"]["13.7S 51.6W"] = NorthDownsCoords(-13.7, -51.6);
mapdata["North Downs"]["9.9S 58.4W"] = NorthDownsCoords(-9.9, -58.4);
mapdata["North Downs"]["6.7S 53.3W"] = NorthDownsCoords(-6.7, -53.3);
mapdata["North Downs"]["6.9S 47.9W"] = NorthDownsCoords(-6.9, -47.9);
mapdata["North Downs"]["6.0S, 43.5W"] = NorthDownsCoords(-6.0, -43.5);


SMirkwoodCoords = Coords(-4.9, -63.6, -23.5, -38.8);
mapdata["Southern Mirkwood"]={};
mapdata["Southern Mirkwoodc"] = SMirkwoodCoords;
mapdata["Southern Mirkwood"]["17.3S 61.7W"] = SMirkwoodCoords(-17.3, -61.7);
mapdata["Southern Mirkwood"]["15.9S 59.3W"] = SMirkwoodCoords(-15.9, -59.3);
mapdata["Southern Mirkwood"]["19.0S 57.5W"] = SMirkwoodCoords(-19.0, -57.5);
mapdata["Southern Mirkwood"]["11.2S 56.2W"] = SMirkwoodCoords(-11.2, -56.2);
mapdata["Southern Mirkwood"]["12.4S 54.6W"] = SMirkwoodCoords(-12.4, -54.6);
mapdata["Southern Mirkwood"]["13.4S 52.6W"] = SMirkwoodCoords(-13.4, -52.6);
mapdata["Southern Mirkwood"]["8.7S 51.8W"] = SMirkwoodCoords(-8.7, -51.8);
mapdata["Southern Mirkwood"]["12.2S 45.4W"] = SMirkwoodCoords(-12.2, -45.4);
mapdata["Southern Mirkwood"]["14.8S 41.7W"] = SMirkwoodCoords(-14.8, -41.7);
mapdata["Southern Mirkwood"]["16.4S 42.5W"] = SMirkwoodCoords(-16.4, -42.5);
mapdata["Southern Mirkwood"]["19.3S 43.6W"] = SMirkwoodCoords(-19.3, -43.6);
mapdata["Southern Mirkwood"]["19.5S 48.5W"] = SMirkwoodCoords(-19.5, -48.5);


WGondorCoords = Coords(-50.3, -90.3, -83.0, -47.3);
mapdata["Western Gondor"]={};
mapdata["Western Gondorc"] = WGondorCoords;
mapdata["Western Gondor"]["61.8S 69.5W"] = WGondorCoords(-61.8, -69.5);
mapdata["Western Gondor"]["59.2S 68.5W"] = WGondorCoords(-59.2, -68.5);
mapdata["Western Gondor"]["60.1S 66.9W"] = WGondorCoords(-60.1, -66.9);
mapdata["Western Gondor"]["60.6S 66.1W"] = WGondorCoords(-60.6, -66.1);
mapdata["Western Gondor"]["60.6S 64.1W"] = WGondorCoords(-60.6, -64.1);
mapdata["Western Gondor"]["57.2S 62.5W"] = WGondorCoords(-57.2, -62.5);

mapdata["Western Gondor"]["60.5S 57.7W"] = WGondorCoords(-60.5, -57.7);
mapdata["Western Gondor"]["62.5S 60.6W"] = WGondorCoords(-62.5, -60.6);
mapdata["Western Gondor"]["65.2S 61.0W"] = WGondorCoords(-65.2, -61.0);
mapdata["Western Gondor"]["65.6S 59.4W"] = WGondorCoords(-65.6, -59.4);
mapdata["Western Gondor"]["67.4S 54.5W"] = WGondorCoords(-67.4, -54.5);
mapdata["Western Gondor"]["72.9S 57.5W"] = WGondorCoords(-72.9, -57.5);

mapdata["Western Gondor"]["75.4S 59.4W"] = WGondorCoords(-75.4, -59.4);
mapdata["Western Gondor"]["76.5S 62.9W"] = WGondorCoords(-76.5, -62.9);
mapdata["Western Gondor"]["73.6S 64.8W"] = WGondorCoords(-73.6, -64.8);
mapdata["Western Gondor"]["77.2S 69.4W"] = WGondorCoords(-77.2, -69.4);
mapdata["Western Gondor"]["78.9S 69.5W"] = WGondorCoords(-78.9, -69.5);
mapdata["Western Gondor"]["76.5S 73.6W"] = WGondorCoords(-76.5, -73.6);

CGondorCoords = Coords(-66.6, -59.4, -91.1, -26.9);
mapdata["Central Gondor"]={};
mapdata["Central Gondorc"] = CGondorCoords;
--- Ringlo Vale
mapdata["Central Gondor"]["71.3S 47.4W"] = CGondorCoords(-71.3, -47.4);
mapdata["Central Gondor"]["71.4S 53.5W"] = CGondorCoords(-71.4, -53.5);
mapdata["Central Gondor"]["74.1S 51.4W"] = CGondorCoords(-74.1, -51.4);
mapdata["Central Gondor"]["76.3S 49.6W"] = CGondorCoords(-76.2, -49.4);
--- Dor En Enril
mapdata["Central Gondor"]["77.8S 46.0W"] = CGondorCoords(-77.8, -46.0);
mapdata["Central Gondor"]["78.9S 47.3W"] = CGondorCoords(-78.9, -47.3);
mapdata["Central Gondor"]["81.3S 53.0W"] = CGondorCoords(-81.3, -53.0);
mapdata["Central Gondor"]["84.3S 52.2W"] = CGondorCoords(-84.3, -52.2);
mapdata["Central Gondor"]["86.7S 50.1W"] = CGondorCoords(-86.7, -50.1);
--- Lebennin
mapdata["Central Gondor"]["79.7S 42.7W"] = CGondorCoords(-79.7, -42.7);
mapdata["Central Gondor"]["75.7S 41.4W"] = CGondorCoords(-75.7, -41.4);
mapdata["Central Gondor"]["76.6S 44.0W"] = CGondorCoords(-76.6, -44.0);
mapdata["Central Gondor"]["77.5S 36.4W"] = CGondorCoords(-77.5, -36.4);
mapdata["Central Gondor"]["78.4S 33.0W"] = CGondorCoords(-78.4, -33.0);
mapdata["Central Gondor"]["85.6S 43.2W"] = CGondorCoords(-85.6, -43.2);
mapdata["Central Gondor"]["85.7S 40.1W"] = CGondorCoords(-85.7, -40.1);

mapdata["Central Gondor"]["83.0S 33.8W"] = CGondorCoords(-83.0, -33.8);
mapdata["Central Gondor"]["83.7S 31.1W"] = CGondorCoords(-83.7, -31.1);
mapdata["Central Gondor"]["84.3S 34.9W"] = CGondorCoords(-84.3, -34.9);
mapdata["Central Gondor"]["84.5S 33.8W"] = CGondorCoords(-84.5, -33.8);

EGondorCoords = Coords(-59.2, -36.4, -87.0, 0.8);
mapdata["Eastern Gondor"]={};
mapdata["Eastern Gondorc"] = EGondorCoords;
mapdata["Eastern Gondor"]["82.8S 28.6W"] = EGondorCoords(-82.8, -28.6);
mapdata["Eastern Gondor"]["78.4S 32.3W"] = EGondorCoords(-78.4, -32.3);
mapdata["Eastern Gondor"]["81.4S 25.5W"] = EGondorCoords(-81.4, -25.5);
mapdata["Eastern Gondor"]["75.0S 25.0W"] = EGondorCoords(-75.0, -25.0);

mapdata["Eastern Gondor"]["76.0S 21.0W"] = EGondorCoords(-76.0, -21.0);
mapdata["Eastern Gondor"]["78.5S 22.3W"] = EGondorCoords(-78.5, -22.3);
mapdata["Eastern Gondor"]["81.2S 24.3W"] = EGondorCoords(-81.2, -24.3);
mapdata["Eastern Gondor"]["71.9S 21.3W"] = EGondorCoords(-71.9, -21.3);

mapdata["Eastern Gondor"]["78.8S 18.8W"] = EGondorCoords(-78.8, -18.8);
mapdata["Eastern Gondor"]["73.1S 14.3W"] = EGondorCoords(-73.1, -14.3);
mapdata["Eastern Gondor"]["75.8S 10.9W"] = EGondorCoords(-75.8, -10.9);
mapdata["Eastern Gondor"]["74.4S 9.9W"] = EGondorCoords(-74.4, -9.9);
mapdata["Eastern Gondor"]["70.7S 4.1W"] = EGondorCoords(-70.7, -4.1);
mapdata["Eastern Gondor"]["65.6S 8.8W"] = EGondorCoords(-65.6, -8.8);

mapdata["Eastern Gondor"]["64.5S 9.1W"] = EGondorCoords(-64.5, -9.1);
mapdata["Eastern Gondor"]["63.8S 10.3W"] = EGondorCoords(-63.8, -10.3);
mapdata["Eastern Gondor"]["62.7S 10.0W"] = EGondorCoords(-62.7, -10.0);
mapdata["Eastern Gondor"]["61.1S 8.7W"] = EGondorCoords(-61.1, -8.7);

FarAnorienCoords = Coords(-32.5, -50.4, -58.0, -16.4);
mapdata["Far Anorien"]={};
mapdata["Far Anorienc"] = FarAnorienCoords;
mapdata["Far Anorien"]["44.2S 29.0W"] = FarAnorienCoords(-44.2, -29.0);
mapdata["Far Anorien"]["48.9S 30.1W"] = FarAnorienCoords(-48.9, -30.1);
mapdata["Far Anorien"]["45.6S 19.7W"] = FarAnorienCoords(-45.6, -19.7);
mapdata["Far Anorien"]["48.5S 22.7W"] = FarAnorienCoords(-48.5, -22.7);
mapdata["Far Anorien"]["48.9S 24.2W"] = FarAnorienCoords(-48.9, -24.2);
mapdata["Far Anorien"]["53.7S 19.5W"] = FarAnorienCoords(-53.7, -19.5);

mapdata["Far Anorien"]["43.9S 47.1W"] = FarAnorienCoords(-43.9, -47.1);
mapdata["Far Anorien"]["46.6S 47.3W"] = FarAnorienCoords(-46.6, -47.3);
mapdata["Far Anorien"]["43.9S 42.0W"] = FarAnorienCoords(-43.9, -42.0);
mapdata["Far Anorien"]["45.4S 41.7W"] = FarAnorienCoords(-45.4, -41.7);
mapdata["Far Anorien"]["47.9S 39.5W"] = FarAnorienCoords(-47.9, -39.5);
mapdata["Far Anorien"]["40.5S 38.9W"] = FarAnorienCoords(-40.5, -38.9);
mapdata["Far Anorien"]["45.6S 35.9W"] = FarAnorienCoords(-45.6, -35.9);
mapdata["Far Anorien"]["48.5S 34.0W"] = FarAnorienCoords(-48.5, -34.0);
mapdata["Far Anorien"]["46.6S 32.6W"] = FarAnorienCoords(-46.6, -32.6);
mapdata["Far Anorien"]["48.6S 32.0W"] = FarAnorienCoords(-48.6, -32.0);

NorthIthilienCoords = Coords(-39.6, -28.8, -67.5, 8.4);
mapdata["North Ithilien"]={};
mapdata["North Ithilienc"] = NorthIthilienCoords;
mapdata["North Ithilien"]["59.5S 6.1W"] = NorthIthilienCoords(-59.5, -6.1);
mapdata["North Ithilien"]["56.7S 7.3W"] = NorthIthilienCoords(-56.7, -7.3);
mapdata["North Ithilien"]["56.5S 8.1W"] = NorthIthilienCoords(-56.5, -8.1);
mapdata["North Ithilien"]["56.4S 5.0W"] = NorthIthilienCoords(-56.4, -5.0);
mapdata["North Ithilien"]["53.1S 7.6W"] = NorthIthilienCoords(-53.1, -7.6);
mapdata["North Ithilien"]["52.9S 10.1W"] = NorthIthilienCoords(-52.9, -10.1);
mapdata["North Ithilien"]["52.2S 11.4W"] = NorthIthilienCoords(-52.2, -11.4);
mapdata["North Ithilien"]["51.3S 8.2W"] = NorthIthilienCoords(-51.3, -8.2);
mapdata["North Ithilien"]["46.5S 10.6W"] = NorthIthilienCoords(-46.5, -10.6);
mapdata["North Ithilien"]["44.2S 9.0W"] = NorthIthilienCoords(-44.2, -9.0);
mapdata["North Ithilien"]["45.0S 11.7W"] = NorthIthilienCoords(-45.0, -11.7);
mapdata["North Ithilien"]["45.9S 15.2W"] = NorthIthilienCoords(-45.9, -15.2);

GorgorothCoords = Coords(-35.4, -5.9, -69.4, 39.5);
mapdata["Gorgoroth"]={}
mapdata["Gorgorothc"] = GorgorothCoords;
-- rare caches Udun
mapdata["Gorgoroth"]["43.9S 0.7E"] = GorgorothCoords(-43.9, 0.7);
mapdata["Gorgoroth"]["44.1S 0.1E"] = GorgorothCoords(-44.1, 0.1);
mapdata["Gorgoroth"]["47.0S 3.2E"] = GorgorothCoords(-47.0, 3.2);
mapdata["Gorgoroth"]["41.7S 4.0E"] = GorgorothCoords(-41.7, 4.0);
mapdata["Gorgoroth"]["43.6S 8.7E"] = GorgorothCoords(-43.6, 8.7);
-- rare caches Dor Armath
mapdata["Gorgoroth"]["51.3S 11.5E"] = GorgorothCoords(-51.3, 11.5);
mapdata["Gorgoroth"]["51.1S 13.6E"] = GorgorothCoords(-51.1, 13.6);
mapdata["Gorgoroth"]["46.7S 12.6E"] = GorgorothCoords(-46.7, 12.6);
mapdata["Gorgoroth"]["52.1S 17.0E"] = GorgorothCoords(-52.1, 17.0);
mapdata["Gorgoroth"]["47.4S 18.9E"] = GorgorothCoords(-47.4, 18.9);
-- rare caches Lhingris
mapdata["Gorgoroth"]["55.0S 8.0E"] = GorgorothCoords(-55.0, 8.0);
mapdata["Gorgoroth"]["56.4S 6.1E"] = GorgorothCoords(-56.4, 6.1);
mapdata["Gorgoroth"]["58.2S 4.6E"] = GorgorothCoords(-58.2, 4.6);
mapdata["Gorgoroth"]["64.9S 8.8E"] = GorgorothCoords(-64.9, 8.8);
mapdata["Gorgoroth"]["64.2S 10.7E"] = GorgorothCoords(-64.2, 10.7);
-- rare caches Talath Urui
mapdata["Gorgoroth"]["53.7S 10.1E"] = GorgorothCoords(-53.7, 10.1);
mapdata["Gorgoroth"]["58.8S 18.3E"] = GorgorothCoords(-58.8, 18.3);
mapdata["Gorgoroth"]["58.8S 24.2E"] = GorgorothCoords(-58.8, 24.2);
mapdata["Gorgoroth"]["64.3S 19.4E"] = GorgorothCoords(-64.3, 19.4);
mapdata["Gorgoroth"]["58.8S 25.3E"] = GorgorothCoords(-58.8, 25.3);
-- rare caches Agarnaith
mapdata["Gorgoroth"]["53.8S 25.1E"] = GorgorothCoords(-53.8, 25.1);
mapdata["Gorgoroth"]["49.0S 33,0E"] = GorgorothCoords(-49.0, 33.0);
mapdata["Gorgoroth"]["48.3S 34.1E"] = GorgorothCoords(-48.3, 34.1);
mapdata["Gorgoroth"]["48.3S 32.9E"] = GorgorothCoords(-48.3, 32.9);
mapdata["Gorgoroth"]["46.4S 34.1E"] = GorgorothCoords(-46.4, 34.1);

-- regular caches Udun
UdunCoords = Coords(-36.7, -4.3, -49, 12);
mapdata["Udun"]={};
mapdata["Udunc"] = UdunCoords;
mapdata["Udun"]["41.8S 3.8E"] = UdunCoords(-41.9, 3.8);
mapdata["Udun"]["40.8S 0.2E"] = UdunCoords(-40.8, 0.2);
mapdata["Udun"]["43.8S 2.0E"] = UdunCoords(-43.8, 2.0);
mapdata["Udun"]["44.4S 0.1W"] = UdunCoords(-44.4, -0.1);
mapdata["Udun"]["45.8S 1.4E"] = UdunCoords(-45.8, 1.4);
mapdata["Udun"]["44.1S 8.8E"] = UdunCoords(-44.1, 8.8);
mapdata["Udun"]["41.1S 7.8E"] = UdunCoords(-41.1, 7.8);
mapdata["Udun"]["41.3S 4.0E"] = UdunCoords(-41.3, 4.0);
mapdata["Udun"]["45.5S 6.1E"] = UdunCoords(-45.5, 6.1);
mapdata["Udun"]["45.9S 1.4W"] = UdunCoords(-45.9, -1.4);
mapdata["Udun"]["43.4S 1.8W"] = UdunCoords(-43.4, -1.8);
mapdata["Udun"]["45.6S 2.5E"] = UdunCoords(-45.6, 2.5);
-- regular caches Dor Amarth
DorAmarthCoords = Coords(-37.1, 5.9, -54.6, 29.3);
mapdata["Dor Amarth"]={};
mapdata["Dor Amarthc"] = DorAmarthCoords;
mapdata["Dor Amarth"]["50.9S 8.4E"] = DorAmarthCoords(-50.9, 8.4);
mapdata["Dor Amarth"]["51.6S 11.7E"] = DorAmarthCoords(-51.6, 11.7);
mapdata["Dor Amarth"]["45.6S 13.8E"] = DorAmarthCoords(-45.6, 13.8);
mapdata["Dor Amarth"]["43.9S 23.8E"] = DorAmarthCoords(-43.9, 23.8);
mapdata["Dor Amarth"]["46.1S 24.4E"] = DorAmarthCoords(-46.1, 24.4);
mapdata["Dor Amarth"]["46.2S 23.7E"] = DorAmarthCoords(-46.2, 23.7);
mapdata["Dor Amarth"]["51.5S 13.5E"] = DorAmarthCoords(-51.5, 13.5);
mapdata["Dor Amarth"]["47.9S 15.9E"] = DorAmarthCoords(-47.9, 15.9);
mapdata["Dor Amarth"]["48.5S 16.1E"] = DorAmarthCoords(-48.5, 16.1);
mapdata["Dor Amarth"]["47.7S 20.8E"] = DorAmarthCoords(-47.7, 20.8);
mapdata["Dor Amarth"]["49.0S 16.2E"] = DorAmarthCoords(-49.0, 16.2);
mapdata["Dor Amarth"]["48.3S 20.1E"] = DorAmarthCoords(-48.3, 20.1);
-- regular caches Lhingris
LhingrisCoords = Coords(-45.0, -6.5, -66.9, 22.7);
mapdata["Lhingris"]={};
mapdata["Lhingrisc"] = LhingrisCoords;
mapdata["Lhingris"]["55.9S 5.6E"] = LhingrisCoords(-55.9, 5.6);
mapdata["Lhingris"]["47.3S 5.6E"] = LhingrisCoords(-47.3, 5.6);
mapdata["Lhingris"]["49.3S 1.7E"] = LhingrisCoords(-49.3, 1.7);
mapdata["Lhingris"]["49.5S 4.9E"] = LhingrisCoords(-49.5, 4.9);
mapdata["Lhingris"]["51.7S 5.0E"] = LhingrisCoords(-51.7, 5.0);
mapdata["Lhingris"]["52.4S 4.3E"] = LhingrisCoords(-52.4, 4.3);
mapdata["Lhingris"]["53.3S 7.2E"] = LhingrisCoords(-53.3, 7.2);
mapdata["Lhingris"]["58.7S 7.5E"] = LhingrisCoords(-58.7, 7.5);
mapdata["Lhingris"]["65.4S 12.7E"] = LhingrisCoords(-65.4, 12.7);
mapdata["Lhingris"]["61.0S 10.6E"] = LhingrisCoords(-61.0, 10.6);
mapdata["Lhingris"]["55.7S 6.5E"] = LhingrisCoords(-55.7, 6.5);
mapdata["Lhingris"]["48.8S 6.5E"] = LhingrisCoords(-48.8, 6.5);
-- regular caches Talath Urui
TalathUruiCoords = Coords(-47.9, 6.7, -66, 30.8);
mapdata["Talath Urui"]={};
mapdata["Talath Uruic"] = TalathUruiCoords;
mapdata["Talath Urui"]["64.0S 21.2E"] = TalathUruiCoords(-64.0, 21.2);
mapdata["Talath Urui"]["62.9S 25.0E"] = TalathUruiCoords(-62.9, 25.0);
mapdata["Talath Urui"]["62.9S 23.8E"] = TalathUruiCoords(-62.9, 23.8);
mapdata["Talath Urui"]["61.7S 22.7E"] = TalathUruiCoords(-61.7, 22.7);
mapdata["Talath Urui"]["61.8S 15.5E"] = TalathUruiCoords(-61.8, 15.5);
mapdata["Talath Urui"]["55.5S 16.4E"] = TalathUruiCoords(-55.5, 16.4);
mapdata["Talath Urui"]["58.5S 23.4E"] = TalathUruiCoords(-58.5, 23.4);
mapdata["Talath Urui"]["57.7S 25.2E"] = TalathUruiCoords(-57.7, 25.2);
mapdata["Talath Urui"]["58.8S 20.6E"] = TalathUruiCoords(-58.8, 20.6);
mapdata["Talath Urui"]["57.1S 19.9E"] = TalathUruiCoords(-57.1, 19.9);
mapdata["Talath Urui"]["57.3S 19.1E"] = TalathUruiCoords(-57.3, 19.1);
mapdata["Talath Urui"]["54.7S 15.1E"] = TalathUruiCoords(-54.7, 15.1);
-- regular caches Agarnaith
AgarnaithCoords = Coords(-41.9, 18.2, -58, 39.8);
mapdata["Agarnaith"]={};
mapdata["Agarnaithc"] = AgarnaithCoords;
mapdata["Agarnaith"]["55.3S 24.5E"] = AgarnaithCoords(-55.3, 24.5);
mapdata["Agarnaith"]["54.5S 25.0E"] = AgarnaithCoords(-54.5, 25.0);
mapdata["Agarnaith"]["49.7S 28.7E"] = AgarnaithCoords(-49.7, 28.7);
mapdata["Agarnaith"]["48.8S 30.3E"] = AgarnaithCoords(-48.8, 30.3);
mapdata["Agarnaith"]["49.0S 28.1E"] = AgarnaithCoords(-49.0, 28.1);
mapdata["Agarnaith"]["49.1S 33.0E"] = AgarnaithCoords(-49.1, 33.0);
mapdata["Agarnaith"]["51.2S 32.7E"] = AgarnaithCoords(-51.2, 32.7);
mapdata["Agarnaith"]["49.3S 34.6E"] = AgarnaithCoords(-49.3, 34.6);
mapdata["Agarnaith"]["46.5S 36.7E"] = AgarnaithCoords(-46.5, 36.7);
mapdata["Agarnaith"]["45.9S 33.5E"] = AgarnaithCoords(-45.9, 33.5);
mapdata["Agarnaith"]["47.5S 33.4E"] = AgarnaithCoords(-47.5, 33.4);
mapdata["Agarnaith"]["48.1S 32.2E"] = AgarnaithCoords(-48.1, 32.2);

NMirkwoodCoords = Coords(37.4, -56.6, 5.3, -13.8);
mapdata["Northern Mirkwood"]={};
mapdata["Northern Mirkwoodc"] = NMirkwoodCoords;
mapdata["Northern Mirkwood"]["20.5N 38.1W"] = NMirkwoodCoords(20.5, -38.1);
mapdata["Northern Mirkwood"]["19.0N 38.4W"] = NMirkwoodCoords(19.0, -38.4);
mapdata["Northern Mirkwood"]["23.7N 43.9W"] = NMirkwoodCoords(23.7, -43.9);
mapdata["Northern Mirkwood"]["20.2N 31.7W"] = NMirkwoodCoords(20.2, -31.7);
mapdata["Northern Mirkwood"]["23.1N 27.9W"] = NMirkwoodCoords(23.1, -27.9);
mapdata["Northern Mirkwood"]["11.7N 28.4W"] = NMirkwoodCoords(11.7, -28.4);
mapdata["Northern Mirkwood"]["25.4N 22.4W"] = NMirkwoodCoords(25.4, -22.4);
mapdata["Northern Mirkwood"]["22.0N 27.8W"] = NMirkwoodCoords(22.0, -27.8);
mapdata["Northern Mirkwood"]["14.6N 23.5W"] = NMirkwoodCoords(14.6, -23.5);
mapdata["Northern Mirkwood"]["32.1N 28.8W"] = NMirkwoodCoords(32.1, -28.8);
mapdata["Northern Mirkwood"]["27.0N 28.9W"] = NMirkwoodCoords(27.0, -28.9);
mapdata["Northern Mirkwood"]["20.2N 26.4W"] = NMirkwoodCoords(20.2, -26.4);
mapdata["Northern Mirkwood"]["27.1N 25.4W"] = NMirkwoodCoords(27.1, -25.4);
mapdata["Northern Mirkwood"]["14.0N 50.1W"] = NMirkwoodCoords(14.0, -50.1);
mapdata["Northern Mirkwood"]["18.9N 47.0W"] = NMirkwoodCoords(18.9, -47.0);
mapdata["Northern Mirkwood"]["12.1N 37.0W"] = NMirkwoodCoords(12.1, -37.0);
mapdata["Northern Mirkwood"]["15.5N 34.8W"] = NMirkwoodCoords(15.5, -34.8);
mapdata["Northern Mirkwood"]["21.1N 35.2W"] = NMirkwoodCoords(21.1, -35.2);
mapdata["Northern Mirkwood"]["25.6N 21.4W"] = NMirkwoodCoords(25.6, -21.4);
mapdata["Northern Mirkwood"]["17.1N 23.1W"] = NMirkwoodCoords(17.1, -23.1);

-- Dwarf-hold
EredMithrinCoords = Coords(46.4, -57.2, 27.2, -31.6);
mapdata["Ered Mithrin"]={};
mapdata["Ered Mithrinc"] = EredMithrinCoords;
mapdata["Ered Mithrin"]["30.1N 32.3W"] = EredMithrinCoords(30.1, -32.3);
mapdata["Ered Mithrin"]["31.4N 35.3W"] = EredMithrinCoords(31.4, -35.3);
mapdata["Ered Mithrin"]["30.2N 49.7W"] = EredMithrinCoords(30.2, -49.7);
mapdata["Ered Mithrin"]["33.1N 56.1W"] = EredMithrinCoords(33.1, -56.1);
mapdata["Ered Mithrin"]["36.2N 53.6W"] = EredMithrinCoords(36.2, -53.6);
mapdata["Ered Mithrin"]["39.2N 54.0W"] = EredMithrinCoords(39.2, -54.0);
mapdata["Ered Mithrin"]["36.5N 44.0W"] = EredMithrinCoords(36.5, -44.0);
mapdata["Ered Mithrin"]["31.9N 49.0W"] = EredMithrinCoords(31.9, -49.0);
mapdata["Ered Mithrin"]["33.4N 42.1W"] = EredMithrinCoords(33.4, -42.1);
mapdata["Ered Mithrin"]["35.2N 40.0W"] = EredMithrinCoords(35.2, -40.0);
mapdata["Ered Mithrin"]["43.5N 34.6W"] = EredMithrinCoords(43.5, -34.6);
mapdata["Ered Mithrin"]["34.1N 50.1W"] = EredMithrinCoords(34.1, -50.1);

IronHillsCoords = Coords(33.4, -23.6, 16.8, -1.5);
mapdata["Iron Hills"]={};
mapdata["Iron Hillsc"] = IronHillsCoords;
mapdata["Iron Hills"]["27.5N 17.3W"] = IronHillsCoords(27.5, -17.3);
mapdata["Iron Hills"]["27.8N 12.7W"] = IronHillsCoords(27.8, -12.7);
mapdata["Iron Hills"]["22.0N 11.6W"] = IronHillsCoords(22.0, -11.6);
mapdata["Iron Hills"]["24.2N 9.5W"] = IronHillsCoords(24.2, -9.5);
mapdata["Iron Hills"]["22.9N 8.8W"] = IronHillsCoords(22.9, -8.8);
mapdata["Iron Hills"]["25.0N 5.3W"] = IronHillsCoords(25.0, -5.3);
mapdata["Iron Hills"]["26.4N 4.6W"] = IronHillsCoords(26.4, -4.6);
mapdata["Iron Hills"]["27.9N 4.7W"] = IronHillsCoords(27.9, -4.7);
mapdata["Iron Hills"]["28.6N 5.0W"] = IronHillsCoords(28.6, -5.0);
mapdata["Iron Hills"]["29.0N 6.8W"] = IronHillsCoords(29.0, -6.8);


ValesOfAnduinCoords = Coords(18.3, -81.4, -12.3, -40.4)
mapdata["Vales of Anduin"]={}
mapdata["Vales of Anduinc"] = ValesOfAnduinCoords;
mapdata["Vales of Anduin"]["0.8S 61.6W"]= ValesOfAnduinCoords(-0.8, -61.6);
mapdata["Vales of Anduin"]["1.2S 51.4W"]= ValesOfAnduinCoords(-1.2, -51.4);
mapdata["Vales of Anduin"]["1.6N 51.8W"]= ValesOfAnduinCoords(1.6, -51.8);
mapdata["Vales of Anduin"]["1.7N 53.6W"]= ValesOfAnduinCoords(1.7, -53.6);
mapdata["Vales of Anduin"]["11.0N 52.6W"]= ValesOfAnduinCoords(11.0, -52.6);
mapdata["Vales of Anduin"]["16.7N 54.3W"]= ValesOfAnduinCoords(16.7, -54.3);
mapdata["Vales of Anduin"]["16.7N 57.0W"]= ValesOfAnduinCoords(16.7, -57.0);
mapdata["Vales of Anduin"]["11.8N 59.4W"]= ValesOfAnduinCoords(11.8, -59.4);
mapdata["Vales of Anduin"]["8.5N 62.8W"]= ValesOfAnduinCoords(8.5, -62.8);
mapdata["Vales of Anduin"]["3.1N 56.5W"]= ValesOfAnduinCoords(3.1, -56.5);
mapdata["Vales of Anduin"]["9.4N 60.1W"]= ValesOfAnduinCoords(9.4, -60.1);
mapdata["Vales of Anduin"]["7.1N 56.0W"]= ValesOfAnduinCoords(7.1, -56.0);
mapdata["Vales of Anduin"]["5.7N 57.1W"]= ValesOfAnduinCoords(5.7, -57.1);
mapdata["Vales of Anduin"]["10.1S 59.7W"]= ValesOfAnduinCoords(-10.1, -59.7);
mapdata["Vales of Anduin"]["5.1S 59.1W"]= ValesOfAnduinCoords(-5.1, -59.1);
mapdata["Vales of Anduin"]["2.4N 57.8W"]= ValesOfAnduinCoords(2.4, -57.8);
mapdata["Vales of Anduin"]["11.0S 62.2W"]= ValesOfAnduinCoords(-11.0, -62.2);
mapdata["Vales of Anduin"]["0.7S 59.5W"]= ValesOfAnduinCoords(-0.7, -59.5);

WellsOfLangfloodCoords = Coords(34.2, -75.2, 13.8, -47.9)
mapdata["Wells of Langflood"]={}
mapdata["Wells of Langfloodc"] = WellsOfLangfloodCoords;
mapdata["Wells of Langflood"]["21.8N, 52.1W"]= WellsOfLangfloodCoords(21.8, -52.1)
mapdata["Wells of Langflood"]["21.5N, 50.3W"]= WellsOfLangfloodCoords(21.5, -50.3)
mapdata["Wells of Langflood"]["17.6N, 54.3W"]= WellsOfLangfloodCoords(17.6, -54.3)
mapdata["Wells of Langflood"]["20.6N, 57.1W"]= WellsOfLangfloodCoords(20.6, -57.1)
mapdata["Wells of Langflood"]["23.4N, 56.6W"]= WellsOfLangfloodCoords(23.4, -56.6)
mapdata["Wells of Langflood"]["19.9N, 62.4W"]= WellsOfLangfloodCoords(19.9, -62.4)
mapdata["Wells of Langflood"]["21.6N, 63.2W"]= WellsOfLangfloodCoords(21.6, -63.2)
mapdata["Wells of Langflood"]["21.1N, 60.2W"]= WellsOfLangfloodCoords(21.1, -60.2)
mapdata["Wells of Langflood"]["25.9N, 55.8W"]= WellsOfLangfloodCoords(25.9, -55.8)
mapdata["Wells of Langflood"]["30.2N, 58.3W"]= WellsOfLangfloodCoords(30.2, -58.3)
mapdata["Wells of Langflood"]["27.1N, 60.5W"]= WellsOfLangfloodCoords(27.1, -60.5)
mapdata["Wells of Langflood"]["32.0N, 60.0W"]= WellsOfLangfloodCoords(32.0, -61.0)

