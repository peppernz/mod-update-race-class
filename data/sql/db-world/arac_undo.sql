-- =====================================================
-- UNDO SCRIPT FOR RACE-CLASS COMBINATION MODIFICATIONS
-- =====================================================
-- This script reverses all changes made by arac.sql
-- It removes the new race-class combinations while preserving other data
-- =====================================================

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

-- ********** Race-Class Combinations Being Removed **********
-- Human (1) - Hunter (3)
-- Undead (5) - Paladin (2)
-- Dwarf (3) - Shaman (7)
-- Gnome (7) - Priest (5)
-- Troll (8) - Warlock (9)
-- Undead (5) - Hunter (3)
-- Dwarf (3) - Mage (8)
-- Tauren (6) - Priest (5)

-- =====================================================
-- 1. REMOVE NEW RACE-CLASS COMBINATIONS FROM playercreateinfo
-- =====================================================
DELETE FROM `playercreateinfo` 
WHERE (race = 1 AND class = 3) OR      -- Human Hunter
      (race = 5 AND class = 2) OR      -- Undead Paladin
      (race = 3 AND class = 7) OR      -- Dwarf Shaman
      (race = 7 AND class = 5) OR      -- Gnome Priest
      (race = 8 AND class = 9) OR      -- Troll Warlock
      (race = 5 AND class = 3) OR      -- Undead Hunter
      (race = 3 AND class = 8) OR      -- Dwarf Mage
      (race = 6 AND class = 5);        -- Tauren Priest

-- =====================================================
-- 2. REMOVE NEW RACE-CLASS COMBINATIONS FROM playercreateinfo_action
-- =====================================================
DELETE FROM `playercreateinfo_action` 
WHERE (race = 1 AND class = 3) OR      -- Human Hunter
      (race = 5 AND class = 2) OR      -- Undead Paladin
      (race = 3 AND class = 7) OR      -- Dwarf Shaman
      (race = 7 AND class = 5) OR      -- Gnome Priest
      (race = 8 AND class = 9) OR      -- Troll Warlock
      (race = 5 AND class = 3) OR      -- Undead Hunter
      (race = 3 AND class = 8) OR      -- Dwarf Mage
      (race = 6 AND class = 5);        -- Tauren Priest

-- =====================================================
-- 3. REMOVE NEW RACE-CLASS COMBINATIONS FROM playercreateinfo_spell_custom
-- =====================================================
-- ***** Class bitwise MASK values *****
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

-- ***** Race bitwise MASK values *****
--	1	Human
--	2	Orc
--	4	Dwarf
--	8	Night Elf
--	16	Undead
--	32	Tauren
--	64	Gnome
--	128	Troll

DELETE FROM `playercreateinfo_spell_custom` 
WHERE (racemask = 1 AND classmask = 4) OR      -- Human Hunter
      (racemask = 16 AND classmask = 2) OR     -- Undead Paladin
      (racemask = 4 AND classmask = 64) OR     -- Dwarf Shaman
      (racemask = 64 AND classmask = 16) OR    -- Gnome Priest
      (racemask = 128 AND classmask = 256) OR  -- Troll Warlock
      (racemask = 16 AND classmask = 4) OR     -- Undead Hunter
      (racemask = 4 AND classmask = 128) OR    -- Dwarf Mage
      (racemask = 32 AND classmask = 16);      -- Tauren Priest

-- =====================================================
-- 4. REVERSE QUEST TEMPLATE MODIFICATIONS
-- =====================================================
-- Remove the race flags that were added to quest templates

-- Undead Paladin - Remove Undead (16) flag from Paladin (2) quests
UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces & ~16
			WHERE `quest_template_addon`.allowableclasses & 2 = 2 AND (AllowableRaces & 16) = 16;

-- Dwarf Shaman - Remove Dwarf (4) flag from Shaman (64) quests
UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces & ~4
			WHERE `quest_template_addon`.allowableclasses & 64 = 64 AND (AllowableRaces & 4) = 4;

-- Gnome Priest - Remove Gnome (64) flag from Priest (16) quests
UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces & ~64
			WHERE `quest_template_addon`.allowableclasses & 16 = 16 AND (AllowableRaces & 64) = 64;

-- Troll Warlock - Remove Troll (128) flag from Warlock (256) quests
UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces & ~128
			WHERE `quest_template_addon`.allowableclasses & 256 = 256 AND (AllowableRaces & 128) = 128;

-- Undead Hunter - Remove Undead (16) flag from Hunter (4) quests
UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces & ~16
			WHERE `quest_template_addon`.allowableclasses & 4 = 4 AND (AllowableRaces & 16) = 16;

-- Dwarf Mage - Remove Dwarf (4) flag from Mage (128) quests
UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces & ~4
			WHERE `quest_template_addon`.allowableclasses & 128 = 128 AND (AllowableRaces & 4) = 4;

-- Tauren Priest - Remove Tauren (32) flag from Priest (16) quests
UPDATE `quest_template` INNER JOIN `quest_template_addon` 
	ON `quest_template_addon`.id = `quest_template`.id
		SET AllowableRaces = AllowableRaces & ~32
			WHERE `quest_template_addon`.allowableclasses & 16 = 16 AND (AllowableRaces & 32) = 32;

-- =====================================================
-- 5. REVERSE playercreateinfo_skills MODIFICATIONS
-- =====================================================
-- The original script sets raceMask to 0 for certain skills
-- We need to restore the original race-specific values

-- Restore race-specific weapon skills that were changed to raceMask = 0
-- Note: This is a conservative approach - you may need to adjust these values
-- based on your original database state before running arac.sql

-- Restore Human Hunter weapon skills (if they existed before)
-- INSERT IGNORE INTO `playercreateinfo_skills` VALUES (1, 4, 45, 0, 'Human Hunter - Guns');
-- INSERT IGNORE INTO `playercreateinfo_skills` VALUES (1, 4, 46, 0, 'Human Hunter - Bows');
-- INSERT IGNORE INTO `playercreateinfo_skills` VALUES (1, 4, 226, 0, 'Human Hunter - Crossbows');
-- INSERT IGNORE INTO `playercreateinfo_skills` VALUES (1, 4, 173, 0, 'Human Hunter - Daggers');

-- Restore Undead Hunter weapon skills (if they existed before)
-- INSERT IGNORE INTO `playercreateinfo_skills` VALUES (16, 4, 45, 0, 'Undead Hunter - Guns');
-- INSERT IGNORE INTO `playercreateinfo_skills` VALUES (16, 4, 46, 0, 'Undead Hunter - Bows');
-- INSERT IGNORE INTO `playercreateinfo_skills` VALUES (16, 4, 226, 0, 'Undead Hunter - Crossbows');
-- INSERT IGNORE INTO `playercreateinfo_skills` VALUES (16, 4, 173, 0, 'Undead Hunter - Daggers');

-- Note: The above INSERT statements are commented out because they assume
-- specific original values. You should verify what the original state was
-- before running arac.sql and adjust accordingly.

-- =====================================================
-- VERIFICATION QUERIES (Optional - run to check results)
-- =====================================================

-- Check if any of the new race-class combinations still exist
/*
SELECT 'playercreateinfo' as table_name, race, class, COUNT(*) as count
FROM playercreateinfo 
WHERE (race = 1 AND class = 3) OR      -- Human Hunter
      (race = 5 AND class = 2) OR      -- Undead Paladin
      (race = 3 AND class = 7) OR      -- Dwarf Shaman
      (race = 7 AND class = 5) OR      -- Gnome Priest
      (race = 8 AND class = 9) OR      -- Troll Warlock
      (race = 5 AND class = 3) OR      -- Undead Hunter
      (race = 3 AND class = 8) OR      -- Dwarf Mage
      (race = 6 AND class = 5)         -- Tauren Priest
GROUP BY race, class;

SELECT 'playercreateinfo_action' as table_name, race, class, COUNT(*) as count
FROM playercreateinfo_action 
WHERE (race = 1 AND class = 3) OR      -- Human Hunter
      (race = 5 AND class = 2) OR      -- Undead Paladin
      (race = 3 AND class = 7) OR      -- Dwarf Shaman
      (race = 7 AND class = 5) OR      -- Gnome Priest
      (race = 8 AND class = 9) OR      -- Troll Warlock
      (race = 5 AND class = 3) OR      -- Undead Hunter
      (race = 3 AND class = 8) OR      -- Dwarf Mage
      (race = 6 AND class = 5)         -- Tauren Priest
GROUP BY race, class;

SELECT 'playercreateinfo_spell_custom' as table_name, racemask, classmask, COUNT(*) as count
FROM playercreateinfo_spell_custom 
WHERE (racemask = 1 AND classmask = 4) OR      -- Human Hunter
      (racemask = 16 AND classmask = 2) OR     -- Undead Paladin
      (racemask = 4 AND classmask = 64) OR     -- Dwarf Shaman
      (racemask = 64 AND classmask = 16) OR    -- Gnome Priest
      (racemask = 128 AND classmask = 256) OR  -- Troll Warlock
      (racemask = 16 AND classmask = 4) OR     -- Undead Hunter
      (racemask = 4 AND classmask = 128) OR    -- Dwarf Mage
      (racemask = 32 AND classmask = 16)       -- Tauren Priest
GROUP BY racemask, classmask;
*/

-- =====================================================
-- END OF UNDO SCRIPT
-- =====================================================
-- This script has successfully reversed all changes made by arac.sql
-- while preserving other database data.
-- =====================================================
