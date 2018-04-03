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
mapdata["Misty Mountains"]["28.5S 4.1E"] = MistyCoords(-38.5, 4.1);
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
mapdata["Gorgoroth"]["43.9S 0.7E"] = GorgorothCoords(-43.9, 0.7);
mapdata["Gorgoroth"]["44.1S 0.1E"] = GorgorothCoords(-44.1, 0.1);
mapdata["Gorgoroth"]["47.0S 3.2E"] = GorgorothCoords(-47.0, 3.2);
mapdata["Gorgoroth"]["41.7S 4.0E"] = GorgorothCoords(-41.7, 4.0);
mapdata["Gorgoroth"]["43.6S 8.7E"] = GorgorothCoords(-43.6, 8.7);

mapdata["Gorgoroth"]["51.3S 11.5E"] = GorgorothCoords(-51.3, 11.5);
mapdata["Gorgoroth"]["51.1S 13.6E"] = GorgorothCoords(-51.1, 13.6);
mapdata["Gorgoroth"]["46.7S 12.6E"] = GorgorothCoords(-46.7, 12.6);
mapdata["Gorgoroth"]["52.1S 17.0E"] = GorgorothCoords(-52.1, 17.0);
mapdata["Gorgoroth"]["47.4S 18.9E"] = GorgorothCoords(-47.4, 18.9);

mapdata["Gorgoroth"]["55.0S 8.0E"] = GorgorothCoords(-55.0, 8.0);
mapdata["Gorgoroth"]["56.4S 6.1E"] = GorgorothCoords(-56.4, 6.1);
mapdata["Gorgoroth"]["58.2S 4.6E"] = GorgorothCoords(-58.2, 4.6);
mapdata["Gorgoroth"]["64.9S 8.8E"] = GorgorothCoords(-64.9, 8.8);
mapdata["Gorgoroth"]["64.2S 10.7E"] = GorgorothCoords(-64.2, 10.7);

mapdata["Gorgoroth"]["53.7S 10.1E"] = GorgorothCoords(-53.7, 10.1);
mapdata["Gorgoroth"]["58.8S 18.3E"] = GorgorothCoords(-58.8, 18.3);
mapdata["Gorgoroth"]["58.8S 24.2E"] = GorgorothCoords(-58.8, 24.2);
mapdata["Gorgoroth"]["64.3S 19.4E"] = GorgorothCoords(-64.3, 19.4);
mapdata["Gorgoroth"]["58.8S 25.3E"] = GorgorothCoords(-58.8, 25.3);

mapdata["Gorgoroth"]["53.8S 25.1E"] = GorgorothCoords(-53.8, 25.1);
mapdata["Gorgoroth"]["49.0S 33,0E"] = GorgorothCoords(-49.0, 33.0);
mapdata["Gorgoroth"]["48.3S 34.1E"] = GorgorothCoords(-48.3, 34.1);
mapdata["Gorgoroth"]["48.3S 32.9E"] = GorgorothCoords(-48.3, 32.9);
mapdata["Gorgoroth"]["46.4S 34.1E"] = GorgorothCoords(-46.4, 34.1);

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

