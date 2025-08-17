-- playercreateinfo
-- ********** Races **********
-- 1 Human
-- 2 Orc
-- 3 Dwarf
-- 4 Night Elf
-- 5 Undead
-- 6 Tauren
-- 7 Gnome
-- 8 Troll

-- ********** Classes **********
-- 1 Warrior
-- 2 Paladin
-- 3 Hunter
-- 4 Rogue
-- 5 Priest
-- 6 Death Knight
-- 7 Shaman
-- 8 Mage
-- 9 Warlock
-- 10 Druid

-- ********** New Combinations **********
-- Human (1) - Hunter (3)
-- Undead (5) - Paladin (2)
-- Dwarf (3) - Shaman (7)
-- Gnome (7) - Priest (5)
-- Troll (8) - Warlock (9)
-- Undead (5) - Hunter (3)
-- Dwarf (3) - Mage (8)
-- Tauren (6) - Priest (5)

-- Playercreateinfo(race, class, map, zone, position_x, position_y, position_z, orientation)
-- Only including the new race-class combinations listed above
INSERT IGNORE INTO `playercreateinfo` VALUES
-- Human (1) - Hunter (3)
(1, 3, 0, 0, -8949.95, -132.493, 83.5312, 0),
-- Undead (5) - Paladin (2)
(5, 2, 0, 85, 1676.71, 1678.31, 121.67, 2.70526),
-- Dwarf (3) - Shaman (7)
(3, 7, 0, 1, -6240.32, 331.033, 382.758, 6.17716),
-- Gnome (7) - Priest (5)
(7, 5, 0, 1, -6240, 331, 383, 0),
-- Troll (8) - Warlock (9)
(8, 9, 1, 14, -618.518, -4251.67, 38.718, 0),
-- Undead (5) - Hunter (3)
(5, 3, 0, 85, 1676.71, 1678.31, 121.67, 2.70526),
-- Dwarf (3) - Mage (8)
(3, 8, 0, 1, -6240.32, 331.033, 382.758, 6.17716),
-- Tauren (6) - Priest (5)
(6, 5, 1, 215, -2917.58, -257.98, 52.9968, 0);

-- playercreateinfo_action(race, class, button, action, type)
-- Only including the new race-class combinations listed above
INSERT IGNORE INTO `playercreateinfo_action` VALUES
-- Human (1) - Hunter (3)
(1, 3, 11, 59752, 0),
(1, 3, 1, 2973, 0),
(1, 3, 0, 6603, 0),
(1, 3, 2, 75, 0),
-- Undead (5) - Paladin (2)
(5, 2, 1, 21084, 0),
(5, 2, 11, 20577, 0),
(5, 2, 2, 635, 0),
(5, 2, 0, 6603, 0),
-- Dwarf (3) - Shaman (7)
(3, 7, 3, 20594, 0),
(3, 7, 4, 2481, 0),
(3, 7, 1, 403, 0),
(3, 7, 2, 331, 0),
(3, 7, 0, 6603, 0),
-- Gnome (7) - Priest (5)
(7, 5, 0, 585, 0),
(7, 5, 11, 20589, 0),
(7, 5, 1, 2050, 0),
-- Troll (8) - Warlock (9)
(8, 9, 0, 686, 0),
(8, 9, 11, 20554, 0),
(8, 9, 1, 687, 0),
-- Undead (5) - Hunter (3)
(5, 3, 2, 75, 0),
(5, 3, 0, 6603, 0),
(5, 3, 1, 2973, 0),
(5, 3, 11, 20577, 0),
-- Dwarf (3) - Mage (8)
(3, 8, 11, 20594, 0),
(3, 8, 10, 2481, 0),
(3, 8, 0, 133, 0),
(3, 8, 1, 168, 0),
-- Tauren (6) - Priest (5)
(6, 5, 11, 20549, 0),
(6, 5, 1, 2050, 0),
(6, 5, 0, 585, 0);



-- playercreateinfo_item
INSERT IGNORE INTO `playercreateinfo_item` VALUES 
-- Human Hunter
(1,3,129,1,'[Hunter] Rugged Trapper\'s Boots'),
(1,3,147,1,'[Hunter] Rugged Trapper\'s'),
(1,3,148,1,'[Hunter] Rugged Trapper\'s Shirt'),
(1,3,2101,1,'[Hunter] Light Quiver'),
(1,3,2504,1,'[Hunter] Worn Shortbow'),
(1,3,2516,200,'[Hunter] Light Shot'),
(1,3,6948,1,'[Hunter] Hearthstone'),
(1,3,37,1,'[Hunter] Worn Axe'),
(1,3,4540,-4,'[Hunter] Tough Hunk of Bread'),
-- Dwarf Shaman
(3,7,36,1,'[Shaman] Worn Mace'),
(3,7,153,1,'[Shaman] Primitive Kilt'),
(3,7,154,1,'[Shaman] Primitive Mantle'),
(3,7,2362,1,'[Shaman] Worn Wooden Shield'),
(3,7,6948,1,'[Shaman] Hearthstone'),
(3,7,159,-2,'[Shaman] Refreshing Spring Water'),
-- Dwarf Mage
(3,8,159,-2,'[Mage] Refreshing Spring Water'),
(3,8,4540,-4,'[Mage] Tough Hunk of Bread'),
(3,8,35,1,'[Mage] Bent Staff'),
(3,8,57,1,'[Mage] Acolyte\'s Robe'),
(3,8,59,1,'[Mage] Acolyte\'s Shoes'),
(3,8,1396,1,'[Mage] Acolyte\'s Pants'),
(3,8,6097,1,'[Mage] Acolyte\'s Shirt'),
(3,8,6948,1,'[Mage] Hearthstone'),
-- Undead Paladin
(5,2,43,1,'[Paladin] Squire\'s Boots'),
(5,2,44,1,'[Paladin] Squire\'s Pants'),
(5,2,45,1,'[Paladin] Squire\'s Shirt'),
(5,2,2361,1,'[Paladin] Battleworn Hammer'),
(5,2,6948,1,'[Paladin] Hearthstone'),
(5,2,4540,-4,'[Paladin] Tough Hunk of Bread'),
-- Undead Hunter
(5,3,129,1,'[Hunter] Rugged Trapper\'s Boots'),
(5,3,147,1,'[Hunter] Rugged Trapper\'s'),
(5,3,148,1,'[Hunter] Rugged Trapper\'s Shirt'),
(5,3,2101,1,'[Hunter] Light Quiver'),
(5,3,2504,1,'[Hunter] Worn Shortbow'),
(5,3,2516,200,'[Hunter] Light Shot'),
(5,3,6948,1,'[Hunter] Hearthstone'),
(5,3,2092,1,'[Hunter] Worn Dagger'),
(5,3,4540,-4,'[Hunter] Tough Hunk of Bread'),
-- Tauren Priest
(6,5,36,1,'[Priest] Worn Mace'),
(6,5,51,1,'[Priest] Neophyte\'s Boots'),
(6,5,52,1,'[Priest] Neophyte\'s Pants'),
(6,5,53,1,'[Priest] Neophyte\'s Shirt'),
(6,5,6144,1,'[Priest] Neophyte\'s Robe'),
(6,5,6948,1,'[Priest] Hearthstone'),
(6,5,159,-2,'[Priest] Refreshing Spring Water'),
-- Gnome Priest
(7,5,36,1,'[Priest] Worn Mace'),
(7,5,51,1,'[Priest] Neophyte\'s Boots'),
(7,5,52,1,'[Priest] Neophyte\'s Pants'),
(7,5,53,1,'[Priest] Neophyte\'s Shirt'),
(7,5,6098,1,'[Priest] Neophyte\'s Robe'),
(7,5,6948,1,'[Priest] Hearthstone'),
(7,5,159,-2,'[Priest] Refreshing Spring Water'),
-- Troll Warlock
(8,9,2092,1,'[Warlock] Worn Dagger'),
(8,9,59,1,'[Warlock] Acolyte\'s Shoes'),
(8,9,1396,1,'[Warlock] Acolyte\'s Pants'),
(8,9,6129,1,'[Warlock] Acolyte\'s Robe'),
(8,9,6948,1,'[Warlock] Hearthstone'),
(8,9,4540,-4,'[Warlock] Tough Hunk of Bread');



-- ***** Class bitwise MASK vales *****
--  1	Warrior
--	2	Paladin
--	4	Hunter
--	8	Rogue
--	16	Priest
--	32	Death Knight
--	64	Shaman
--	128	Mage
--	256	Warlock
--	1024	Druid

-- ***** Race bitwise MASK vales *****
--	1	Human
--	2	Orc
--	4	Dwarf
--	8	Night Elf
--	16	Undead
--	32	Tauren
--	64	Gnome
--	128	Troll

-- Human (1) - Hunter (4)
-- Undead (16) - Paladin (2)
-- Dwarf (4) - Shaman (64)
-- Gnome (64) - Priest (16)
-- Troll (128) - Warlock (256)
-- Undead (16) - Hunter (4)
-- Dwarf (4) - Mage (128)
-- Tauren (32) - Priest (16)

-- playercreateinfo_spell_custom(racemask, classmask, spell, note)
INSERT IGNORE INTO `playercreateinfo_spell_custom` VALUES
-- Dwarf Shaman
('4', '64', '672', 'Language Dwarven'),
('4', '64', '2481', 'Find Treasure'),
('4', '64', '20594', 'Stoneform'),
('4', '64', '20595', 'Gun Specialization'),
('4', '64', '20596', 'Frost Resistance'),
('4', '64', '668', 'Language Common'),
('4', '64', '81', 'Dodge'),
('4', '64', '107', 'Block'),
('4', '64', '198', 'One-Handed Maces'),
('4', '64', '203', 'Unarmed'),
('4', '64', '204', 'Defense'),
('4', '64', '227', 'Staves'),
('4', '64', '331', 'Healing Wave'),
('4', '64', '403', 'Lightning Bolt'),
('4', '64', '522', 'SPELLDEFENSE(DND)'),
('4', '64', '2382', 'Generic'),
('4', '64', '2479', 'Honorless Target'),
('4', '64', '3050', 'Detect'),
('4', '64', '3365', 'Opening'),
('4', '64', '6233', 'Closing'),
('4', '64', '6246', 'Closing'),
('4', '64', '6247', 'Opening'),
('4', '64', '6477', 'Opening'),
('4', '64', '6478', 'Opening'),
('4', '64', '6603', 'Attack'),
('4', '64', '7266', 'Duel'),
('4', '64', '7267', 'Grovel'),
('4', '64', '7355', 'Stuck'),
('4', '64', '8386', 'Attacking'),
('4', '64', '9077', 'Leather'),
('4', '64', '9078', 'Cloth'),
('4', '64', '9116', 'Shield'),
('4', '64', '9125', 'Generic'),
('4', '64', '21651', 'Opening'),
('4', '64', '21652', 'Closing'),
('4', '64', '22027', 'Remove Insignia'),
('4', '64', '22810', 'Opening - No Text'),
('4', '64', '27763', 'Totem'),
('4', '64', '25396', null),
('4', '64', '25449', null),
('4', '64', '25485', null),
('4', '64', '25454', null),
('4', '64', '25509', null),
('4', '64', '2484', null),
('4', '64', '25472', null),
('4', '64', '25525', null),
('4', '64', '25457', null),
('4', '64', '25489', null),
('4', '64', '25533', null),
('4', '64', '25528', null),
('4', '64', '20777', null),
('4', '64', '25547', null),
('4', '64', '8012', null),
('4', '64', '526', null),
('4', '64', '8143', null),
('4', '64', '25464', null),
('4', '64', '25500', null),
('4', '64', '2645', null),
('4', '64', '25567', null),
('4', '64', '25420', null),
('4', '64', '2870', null),
('4', '64', '8166', null),
('4', '64', '131', null),
('4', '64', '25560', null),
('4', '64', '6196', null),
('4', '64', '25552', null),
('4', '64', '25570', null),
('4', '64', '25563', null),
('4', '64', '25557', null),
('4', '64', '546', null),
('4', '64', '556', null),
('4', '64', '8177', null),
('4', '64', '25574', null),
('4', '64', '36936', null),
('4', '64', '25505', null),
('4', '64', '421', null),
('4', '64', '25587', null),
('4', '64', '6495', null),
('4', '64', '25577', null),
('4', '64', '8170', null),
('4', '64', '25423', null),
('4', '64', '25359', null),
('4', '64', '25908', null),
('4', '64', '33736', null),
('4', '64', '3738', null),
('4', '64', '2062', null),
('4', '64', '2894', null),
('4', '64', '2825', null),
-- Dwarf Mage
('4', '128', '672', 'Language Dwarven'),
('4', '128', '2481', 'Find Treasure'),
('4', '128', '20594', 'Stoneform'),
('4', '128', '20595', 'Gun Specialization'),
('4', '128', '20596', 'Frost Resistance'),
('4', '128', '81', 'Dodge'),
('4', '128', '133', 'Fireball'),
('4', '128', '168', 'Frost Armor'),
('4', '128', '203', 'Unarmed'),
('4', '128', '204', 'Defense'),
('4', '128', '227', 'Staves'),
('4', '128', '522', 'SPELLDEFENSE(DND)'),
('4', '128', '668', 'Language Common'),
('4', '128', '2382', 'Generic'),
('4', '128', '2479', 'Honorless Target'),
('4', '128', '3050', 'Detect'),
('4', '128', '3365', 'Opening'),
('4', '128', '5009', 'Wands'),
('4', '128', '5019', 'Shoot'),
('4', '128', '6233', 'Closing'),
('4', '128', '6246', 'Closing'),
('4', '128', '6247', 'Opening'),
('4', '128', '6477', 'Opening'),
('4', '128', '6478', 'Opening'),
('4', '128', '6603', 'Attack'),
('4', '128', '7266', 'Duel'),
('4', '128', '7267', 'Grovel'),
('4', '128', '7355', 'Stuck'),
('4', '128', '8386', 'Attacking'),
('4', '128', '9078', 'Cloth'),
('4', '128', '9125', 'Generic'),
('4', '128', '21651', 'Opening'),
('4', '128', '21652', 'Closing'),
('4', '128', '22027', 'Remove Insignia'),
('4', '128', '22810', 'Opening - No Text'),
('4', '128', '27126', null),
('4', '128', '27070', null),
('4', '128', '22018', null),
('4', '128', '27072', null),
('4', '128', '22019', null),
('4', '128', '27079', null),
('4', '128', '38704', null),
('4', '128', '28272', null),
('4', '128', '28271', null),
('4', '128', '12826', null),
('4', '128', '27088', null),
('4', '128', '33944', null),
('4', '128', '130', null),
('4', '128', '27082', null),
('4', '128', '27086', null),
('4', '128', '33946', null),
('4', '128', '475', null),
('4', '128', '1953', null),
('4', '128', '27085', null),
('4', '128', '12051', null),
('4', '128', '27128', null),
('4', '128', '27131', null),
('4', '128', '32796', null),
('4', '128', '27074', null),
('4', '128', '2139', null),
('4', '128', '27101', null),
('4', '128', '27124', null),
('4', '128', '45438', null),
('4', '128', '27125', null),
('4', '128', '27127', null),
('4', '128', '30482', null),
('4', '128', '30451', null),
('4', '128', '30455', null),
('4', '128', '66', null),
('4', '128', '43987', null),
('4', '128', '30449', null),
('4', '128', '27087', null),
-- Gnome Priest
('64', '16', '7340', 'Language Gnomish'),
('64', '16', '20589', 'Escape Artist'),
('64', '16', '20591', 'Expansive Mind'),
('64', '16', '20592', 'Arcane Resistance'),
('64', '16', '20593', 'Engineering Specialization'),
('64', '16', '81', 'Dodge'),
('64', '16', '277', 'Staves'),
('64', '16', '203', 'Unarmed'),
('64', '16', '204', 'Defense'),
('64', '16', '522', 'SPELLDEFENSE(DND)'),
('64', '16', '585', 'Smite'),
('64', '16', '668', 'Language Common'),
('64', '16', '2050', 'Lesser Heal'),
('64', '16', '2382', 'Generic'),
('64', '16', '2479', 'Honorless Target'),
('64', '16', '3050', 'Detect'),
('64', '16', '3365', 'Opening'),
('64', '16', '5009', 'Wands'),
('64', '16', '5019', 'Shoot'),
('64', '16', '6233', 'Closing'),
('64', '16', '6246', 'Closing'),
('64', '16', '6247', 'Opening'),
('64', '16', '6477', 'Opening'),
('64', '16', '6478', 'Opening'),
('64', '16', '6603', 'Attack'),
('64', '16', '7266', 'Duel'),
('64', '16', '7267', 'Grovel'),
('64', '16', '7355', 'Stuck'),
('64', '16', '8386', 'Attacking'),
('64', '16', '9078', 'Cloth'),
('64', '16', '9125', 'Generic'),
('64', '16', '21651', 'Opening'),
('64', '16', '21652', 'Closing'),
('64', '16', '22027', 'Remove Insignia'),
('64', '16', '22810', 'Opening - No Text'),
('64', '16', '25389', null),
('64', '16', '25364', null),
('64', '16', '25368', null),
('64', '16', '25218', null),
('64', '16', '25429', null),
('64', '16', '25222', null),
('64', '16', '25375', null),
('64', '16', '25435', null),
('64', '16', '25431', null),
('64', '16', '528', null),
('64', '16', '10890', null),
('64', '16', '988', null),
('64', '16', '6346', null),
('64', '16', '25235', null),
('64', '16', '25384', null),
('64', '16', '25596', null),
('64', '16', '10955', null),
('64', '16', '10909', null),
('64', '16', '25380', null),
('64', '16', '10912', null),
('64', '16', '25308', null),
('64', '16', '25433', null),
('64', '16', '552', null),
('64', '16', '1706', null),
('64', '16', '25213', null),
('64', '16', '25392', null),
('64', '16', '39374', null),
('64', '16', '32999', null),
('64', '16', '32996', null),
('64', '16', '32546', null),
('64', '16', '34433', null),
('64', '16', '33076', null),
('64', '16', '32375', null),
('64', '16', '25441', null),
('64', '16', '25312', null),
('64', '16', '25437', null),
-- Human Hunter
('1', '4', '75', 'Auto Shot'),
('1', '4', '81', 'Dodge'),
('1', '4', '196', 'One-Handed Axes'),
('1', '4', '203', 'Unarmed'),
('1', '4', '204', 'Defense'),
('1', '4', '264', 'Bows'),
('1', '4', '266', 'Guns'),
('1', '4', '522', 'SPELLDEFENSE(DND)'),
('1', '4', '668', 'Language Common'),
('1', '4', '883', null),
('1', '4', '982', null),
('1', '4', '1002', null),
('1', '4', '1462', null),
('1', '4', '1494', null),
('1', '4', '1515', null),
('1', '4', '1543', null),
('1', '4', '2382', 'Generic'),
('1', '4', '2479', 'Honorless Target'),
('1', '4', '2641', null),
('1', '4', '2973', 'Raptor Strike'),
('1', '4', '3043', null),
('1', '4', '3045', null),
('1', '4', '3050', 'Detect'),
('1', '4', '3365', 'Opening'),
('1', '4', '5116', null),
('1', '4', '5118', null),
('1', '4', '5384', null),
('1', '4', '6197', null),
('1', '4', '6233', 'Closing'),
('1', '4', '6246', 'Closing'),
('1', '4', '6247', 'Opening'),
('1', '4', '6477', 'Opening'),
('1', '4', '6478', 'Opening'),
('1', '4', '6603', 'Attack'),
('1', '4', '6991', null),
('1', '4', '7266', 'Duel'),
('1', '4', '7267', 'Grovel'),
('1', '4', '7355', 'Stuck'),
('1', '4', '8386', 'Attacking'),
('1', '4', '9077', 'Leather'),
('1', '4', '9078', 'Cloth'),
('1', '4', '9125', 'Generic'),
('1', '4', '13159', null),
('1', '4', '13161', null),
('1', '4', '13163', null),
('1', '4', '13358', 'Defensive State(DND)'),
('1', '4', '13809', null),
('1', '4', '14268', null),
('1', '4', '14311', null),
('1', '4', '14325', null),
('1', '4', '14327', null),
('1', '4', '19801', null),
('1', '4', '19878', null),
('1', '4', '19879', null),
('1', '4', '19880', null),
('1', '4', '19882', null),
('1', '4', '19883', null),
('1', '4', '19884', null),
('1', '4', '19885', null),
('1', '4', '20597', 'Sword Specialization'),
('1', '4', '20598', 'The Human Spirit'),
('1', '4', '20599', 'Diplomacy'),
('1', '4', '20864', 'Mace Specialization'),
('1', '4', '21651', 'Opening'),
('1', '4', '21652', 'Closing'),
('1', '4', '22027', 'Remove Insignia'),
('1', '4', '22810', 'Opening - No Text'),
('1', '4', '24949', 'Defensive State 2(DND)'),
('1', '4', '27014', null),
('1', '4', '27015', null),
('1', '4', '27016', null),
('1', '4', '27018', null),
('1', '4', '27019', null),
('1', '4', '27020', null),
('1', '4', '27021', null),
('1', '4', '27022', null),
('1', '4', '27023', null),
('1', '4', '27025', null),
('1', '4', '27044', null),
('1', '4', '27045', null),
('1', '4', '27046', null),
('1', '4', '34026', null),
('1', '4', '34074', null),
('1', '4', '34082', 'Advantaged State(DND)'),
('1', '4', '34120', null),
('1', '4', '34477', null),
('1', '4', '34600', null),
('1', '4', '36916', null),
-- Troll Warlock
('128', '256', '7341', 'Language Troll'),
('128', '256', '20555', 'Regeneration'),
('128', '256', '20557', 'Beast Slaying'),
('128', '256', '20558', 'Throwing Specialization'),
('128', '256', '26290', 'Bow Specialization'),
('128', '256', '26296', 'Berserking'),
('128', '256', '81', 'Dodge'),
('128', '256', '203', 'Unarmed'),
('128', '256', '204', 'Defense'),
('128', '256', '522', 'SPELLDEFENSE(DND)'),
('128', '256', '669', 'Language Orcish'),
('128', '256', '686', 'Shadow Bolt'),
('128', '256', '687', 'Demon Skin'),
('128', '256', '1180', 'Daggers'),
('128', '256', '2382', 'Generic'),
('128', '256', '2479', 'Honorless Target'),
('128', '256', '3050', 'Detect'),
('128', '256', '3365', 'Opening'),
('128', '256', '5009', 'Wands'),
('128', '256', '5019', 'Shoot'),
('128', '256', '6233', 'Closing'),
('128', '256', '6246', 'Closing'),
('128', '256', '6247', 'Opening'),
('128', '256', '6477', 'Opening'),
('128', '256', '6478', 'Opening'),
('128', '256', '6603', 'Attack'),
('128', '256', '7266', 'Duel'),
('128', '256', '7267', 'Grovel'),
('128', '256', '7355', 'Stuck'),
('128', '256', '8386', 'Attacking'),
('128', '256', '9078', 'Cloth'),
('128', '256', '9125', 'Generic'),
('128', '256', '21651', 'Opening'),
('128', '256', '21652', 'Closing'),
('128', '256', '22027', 'Remove Insignia'),
('128', '256', '22810', 'Opening - No Text'),
('128', '256', '27215', null),
('128', '256', '27209', null),
('128', '256', '27216', null),
('128', '256', '30909', null),
('128', '256', '27222', null),
('128', '256', '27218', null),
('128', '256', '6215', null),
('128', '256', '27230', null),
('128', '256', '27217', null),
('128', '256', '27259', null),
('128', '256', '27226', null),
('128', '256', '27220', null),
('128', '256', '5697', null),
('128', '256', '27238', null),
('128', '256', '30459', null),
('128', '256', '27260', null),
('128', '256', '27212', null),
('128', '256', '698', null),
('128', '256', '5500', null),
('128', '256', '30908', null),
('128', '256', '11719', null),
('128', '256', '132', null),
('128', '256', '18647', null),
('128', '256', '27213', null),
('128', '256', '11726', null),
('128', '256', '27228', null),
('128', '256', '28610', null),
('128', '256', '28172', null),
('128', '256', '27250', null),
('128', '256', '17928', null),
('128', '256', '27223', null),
('128', '256', '27229', null),
('128', '256', '30545', null),
('128', '256', '30910', null),
('128', '256', '18540', null),
('128', '256', '28189', null),
('128', '256', '32231', null),
('128', '256', '29858', null),
('128', '256', '29893', null),
('128', '256', '27243', null),
('128', '256', '23161', null),
('128', '256', '688', null),
('128', '256', '697', null),
('128', '256', '712', null),
('128', '256', '691', null),
('128', '256', '126', null),
-- Tauren Priest
('32', '16', '670', 'Language Taurahe'),
('32', '16', '20549', 'War Stomp'),
('32', '16', '20550', 'Endurance'),
('32', '16', '20551', 'Nature Resistance'),
('32', '16', '20552', 'Cultivation'),
('32', '16', '669', 'Language Orcish'),
('32', '16', '81', 'Dodge'),
('32', '16', '198', 'One-Handed Maces'),
('32', '16', '203', 'Unarmed'),
('32', '16', '204', 'Defense'),
('32', '16', '522', 'SPELLDEFENSE(DND)'),
('32', '16', '585', 'Smite'),
('32', '16', '2050', 'Lesser Heal'),
('32', '16', '2382', 'Generic'),
('32', '16', '2479', 'Honorless Target'),
('32', '16', '3050', 'Detect'),
('32', '16', '3365', 'Opening'),
('32', '16', '5009', 'Wands'),
('32', '16', '5019', 'Shoot'),
('32', '16', '6233', 'Closing'),
('32', '16', '6246', 'Closing'),
('32', '16', '6247', 'Opening'),
('32', '16', '6477', 'Opening'),
('32', '16', '6478', 'Opening'),
('32', '16', '6603', 'Attack'),
('32', '16', '7266', 'Duel'),
('32', '16', '7267', 'Grovel'),
('32', '16', '7355', 'Stuck'),
('32', '16', '8386', 'Attacking'),
('32', '16', '9078', 'Cloth'),
('32', '16', '9125', 'Generic'),
('32', '16', '21651', 'Opening'),
('32', '16', '21652', 'Closing'),
('32', '16', '22027', 'Remove Insignia'),
('32', '16', '22810', 'Opening - No Text'),
('32', '16', '25389', null),
('32', '16', '25364', null),
('32', '16', '25368', null),
('32', '16', '25218', null),
('32', '16', '25429', null),
('32', '16', '25222', null),
('32', '16', '25375', null),
('32', '16', '25435', null),
('32', '16', '25431', null),
('32', '16', '528', null),
('32', '16', '10890', null),
('32', '16', '988', null),
('32', '16', '6346', null),
('32', '16', '25235', null),
('32', '16', '25384', null),
('32', '16', '25596', null),
('32', '16', '10955', null),
('32', '16', '10909', null),
('32', '16', '25380', null),
('32', '16', '10912', null),
('32', '16', '25308', null),
('32', '16', '25433', null),
('32', '16', '552', null),
('32', '16', '1706', null),
('32', '16', '25213', null),
('32', '16', '25392', null),
('32', '16', '39374', null),
('32', '16', '32999', null),
('32', '16', '32996', null),
('32', '16', '32546', null),
('32', '16', '34433', null),
('32', '16', '33076', null),
('32', '16', '32375', null),
('32', '16', '25441', null),
('32', '16', '25312', null),
('32', '16', '25437', null),
-- Undead Paladin
('16', '2', '5227', 'Underwater Breathing'),
('16', '2', '7744', 'Will of the Forsaken'),
('16', '2', '17737', 'Language Gutterspeak'),
('16', '2', '20577', 'Cannibalize'),
('16', '2', '20579', 'Shadow Resistance'),
('16', '2', '669', 'Language Orcish'),
('16', '2', '81', 'Dodge'),
('16', '2', '107', 'Block'),
('16', '2', '198', 'One-Handed Maces'),
('16', '2', '199', 'Two-Handed Maces'),
('16', '2', '203', 'Unarmed'),
('16', '2', '204', 'Defense'),
('16', '2', '522', 'SPELLDEFENSE(DND)'),
('16', '2', '635', 'Holy Light'),
('16', '2', '2382', 'Generic'),
('16', '2', '2479', 'Honorless Target'),
('16', '2', '3050', 'Detect'),
('16', '2', '3365', 'Opening'),
('16', '2', '6233', 'Closing'),
('16', '2', '6246', 'Closing'),
('16', '2', '6247', 'Opening'),
('16', '2', '6477', 'Opening'),
('16', '2', '6478', 'Opening'),
('16', '2', '6603', 'Attack'),
('16', '2', '7266', 'Duel'),
('16', '2', '7267', 'Grovel'),
('16', '2', '7355', 'Stuck'),
('16', '2', '8386', 'Attacking'),
('16', '2', '8737', 'Mail'),
('16', '2', '9077', 'Leather'),
('16', '2', '9078', 'Cloth'),
('16', '2', '9116', 'Shield'),
('16', '2', '9125', 'Generic'),
('16', '2', '21084', 'Seal of Righteousness'),
('16', '2', '21651', 'Opening'),
('16', '2', '21652', 'Closing'),
('16', '2', '22027', 'Remove Insignia'),
('16', '2', '22810', 'Opening - No Text'),
('16', '2', '27762', 'Libram'),
('16', '2', '27149', null),
('16', '2', '27136', null),
('16', '2', '27155', null),
('16', '2', '27140', null),
('16', '2', '20271', null),
('16', '2', '27158', null),
('16', '2', '10308', null),
('16', '2', '10278', null),
('16', '2', '27154', null),
('16', '2', '20773', null),
('16', '2', '27142', null),
('16', '2', '31789', null),
('16', '2', '27150', null),
('16', '2', '25780', null),
('16', '2', '1044', null),
('16', '2', '33776', null),
('16', '2', '27173', null),
('16', '2', '27138', null),
('16', '2', '27137', null),
('16', '2', '5502', null),
('16', '2', '19746', null),
('16', '2', '31895', null),
('16', '2', '5627', null),
('16', '2', '1038', null),
('16', '2', '27151', null),
('16', '2', '19752', null),
('16', '2', '27160', null),
('16', '2', '27152', null),
('16', '2', '1020', null),
('16', '2', '27153', null),
('16', '2', '27166', null),
('16', '2', '27144', null),
('16', '2', '4987', null),
('16', '2', '27180', null),
('16', '2', '27148', null),
('16', '2', '27139', null),
('16', '2', '27141', null),
('16', '2', '10326', null),
('16', '2', '27143', null),
('16', '2', '25898', null),
('16', '2', '27145', null),
('16', '2', '25895', null),
('16', '2', '32223', null),
('16', '2', '27169', null),
('16', '2', '31884', null),
('16', '2', '750', null),
('16', '2', '3127', null),
('16', '2', '23214', null),
('16', '2', '31801', null),
-- Undead Hunter
('16', '4', '5227', 'Underwater Breathing'),
('16', '4', '7744', 'Will of the Forsaken'),
('16', '4', '17737', 'Language Gutterspeak'),
('16', '4', '20577', 'Cannibalize'),
('16', '4', '20579', 'Shadow Resistance'),
('16', '4', '75', 'Auto Shot'),
('16', '4', '81', 'Dodge'),
('16', '4', '196', 'One-Handed Axes'),
('16', '4', '203', 'Unarmed'),
('16', '4', '204', 'Defense'),
('16', '4', '264', 'Bows'),
('16', '4', '266', 'Guns'),
('16', '4', '522', 'SPELLDEFENSE(DND)'),
('16', '4', '669', 'Language Orcish'),
('16', '4', '2382', 'Generic'),
('16', '4', '2479', 'Honorless Target'),
('16', '4', '2973', 'Raptor Strike'),
('16', '4', '3050', 'Detect'),
('16', '4', '3365', 'Opening'),
('16', '4', '6233', 'Closing'),
('16', '4', '6246', 'Closing'),
('16', '4', '6247', 'Opening'),
('16', '4', '6477', 'Opening'),
('16', '4', '6478', 'Opening'),
('16', '4', '6603', 'Attack'),
('16', '4', '7266', 'Duel'),
('16', '4', '7267', 'Grovel'),
('16', '4', '7355', 'Stuck'),
('16', '4', '8386', 'Attacking'),
('16', '4', '9077', 'Leather'),
('16', '4', '9078', 'Cloth'),
('16', '4', '9125', 'Generic'),
('16', '4', '13358', 'Defensive State(DND)'),
('16', '4', '21651', 'Opening'),
('16', '4', '21652', 'Closing'),
('16', '4', '22027', 'Remove Insignia'),
('16', '4', '22810', 'Opening - No Text'),
('16', '4', '24949', 'Defensive State 2(DND)'),
('16', '4', '34082', 'Advantaged State(DND)'),
('16', '4', '27014', null),
('16', '4', '1494', null),
('16', '4', '13163', null),
('16', '4', '27016', null),
('16', '4', '27019', null),
('16', '4', '14325', null),
('16', '4', '5116', null),
('16', '4', '27044', null),
('16', '4', '883', null),
('16', '4', '2641', null),
('16', '4', '6991', null),
('16', '4', '982', null),
('16', '4', '1515', null),
('16', '4', '19883', null),
('16', '4', '27020', null),
('16', '4', '27046', null),
('16', '4', '14268', null),
('16', '4', '6197', null),
('16', '4', '1002', null),
('16', '4', '14327', null),
('16', '4', '27023', null),
('16', '4', '36916', null),
('16', '4', '27021', null),
('16', '4', '19884', null),
('16', '4', '5118', null),
('16', '4', '27015', null),
('16', '4', '14311', null),
('16', '4', '3043', null),
('16', '4', '1462', null),
('16', '4', '19885', null),
('16', '4', '3045', null),
('16', '4', '19880', null),
('16', '4', '13809', null),
('16', '4', '13161', null),
('16', '4', '5384', null),
('16', '4', '1543', null),
('16', '4', '19878', null),
('16', '4', '27025', null),
('16', '4', '27018', null),
('16', '4', '13159', null),
('16', '4', '19882', null),
('16', '4', '27022', null),
('16', '4', '27045', null),
('16', '4', '19879', null),
('16', '4', '19801', null),
('16', '4', '34120', null),
('16', '4', '34074', null),
('16', '4', '34026', null),
('16', '4', '34600', null),
('16', '4', '34477', null),
('16', '4', '674', null),
('16', '4', '8737', null),
('16', '4', '5149', null),
('16', '4', '3127', null);



-- quest_template


-- Human (1) - Hunter (4)
-- Undead (16) - Paladin (2)
-- Dwarf (4) - Shaman (64)
-- Gnome (64) - Priest (16)
-- Troll (128) - Warlock (256)
-- Undead (16) - Hunter (4)
-- Dwarf (4) - Mage (128)
-- Tauren (32) - Priest (16)

 -- Undead Paladin
 UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces | 16
			WHERE `quest_template_addon`.allowableclasses & 2 = 2 AND AllowableRaces != 0;

-- Dwarf Shaman
 UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces | 4
			WHERE `quest_template_addon`.allowableclasses & 64 = 64 AND AllowableRaces != 0;

-- Gnome Priest
 UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces | 64
			WHERE `quest_template_addon`.allowableclasses & 16 = 16 AND AllowableRaces != 0;

-- Troll Warlock
 UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces | 128
			WHERE `quest_template_addon`.allowableclasses & 256 = 256 AND AllowableRaces != 0;


-- Undead Hunter
 UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces | 16
			WHERE `quest_template_addon`.allowableclasses & 4 = 4 AND AllowableRaces != 0;

-- Dwarf Mage
 UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces | 4
			WHERE `quest_template_addon`.allowableclasses & 128 = 128 AND AllowableRaces != 0;

-- Tauren Priest
 UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces | 32
			WHERE `quest_template_addon`.allowableclasses & 16 = 16 AND AllowableRaces != 0;

-- playercreateinfo_skills
-- 45 - Bows
-- 46 - Guns
-- 160 - Two-Handed Maces
-- 173 - Daggers
-- 226 - Crossbows

-- Existing data
-- RaceMask, ClassMask, Skill, Rank, Comment
-- 0, 2, 160, 0, 'Paladin - Two-Handed Maces'
-- 0, 8, 173, 0, 'Rogue - Daggers'
-- 0, 256, 173, 0, 'Warlock - Daggers'
-- 36, 4, 46, 0, 'Guns'
-- 520, 4, 173, 0, 'Hunter - Daggers'
-- 650, 4, 45, 0, 'Bows'
-- 1024, 4, 226, 0, 'Crossbows'

-- Only need to add Racemask where Racemask is not zero

-- New combinations that require new weapon skills
-- Human (1) - Hunter (4) - Bows, Crossbows, Guns and Hunter - Daggers
-- Undead (16) - Paladin (2) - Two-Handed Maces
-- Troll (128) - Warlock (256) - Daggers
-- Undead (16) - Hunter (4) - Bows, Crossbows, Guns and Hunter - Daggers

-- Add Bows to Human and Undead
UPDATE `playercreateinfo_skills`
	SET `raceMask` = 0
		WHERE `skill` = 45 AND `classMask` = 4;

-- Add Guns to Human and Undead
UPDATE `playercreateinfo_skills`
	SET `raceMask` = 0
		WHERE `skill` = 46 AND `classMask` = 4;

-- Add Crossbows to Human and Undead
UPDATE `playercreateinfo_skills`
	SET `raceMask` = 0
		WHERE `skill` = 226 AND `classMask` = 4;

-- Add Hunter - Daggers to Human and Undead
UPDATE `playercreateinfo_skills`
	SET `raceMask` = 0
		WHERE `skill` = 173 AND `classMask` = 4;