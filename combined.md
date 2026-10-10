
## Bindings.xml
```xml
<Bindings>
	<!-- User interface key bindings -->
	<Binding name="NUN_OPTIONS" description="Toggle NotesUNeed Options" runOnUp="false" header="NUN">
		if (NuNOptionsFrame:IsVisible()) then
				HideUIPanel(NuNOptionsFrame);
		else
				NuN_Options();
		end
	</Binding>
	<Binding name="NUN_TARGET" description="Create Note from Target Without Showing" runOnUp="false">
		NuN_FromTarget(true);
	</Binding>
	<Binding name="NUN_MICRO" description="Toggle NotesUNeed MicroButtons" runOnUp="false">
		NuN_ToggleMicroButtons();
	</Binding>
	<Binding name="NUN_LAST" description="Re-Open Last Note" runOnUp="false">
		NuN_ReOpen();
	</Binding>
</Bindings>

```

## Localisation.de.lua
```lua
-- Thanks to Eike and Leftaf for the following translations, and guidance with the required program changes :)


if ( GetLocale() == "deDE" ) then

	-- Text Inserts

	NUN_NEW_NOTE = "Neue Notiz";
	NUN_SAVED_NOTE = "Gespeicherte Notiz";
	NUN_QUEST_NOTE = "Quest Logbuch Detail";
	NUN_SAVE = "Speichern";
	NUN_CANCEL = "Abbruch";
	NUN_DELETE = "L\195\182schen";
	NUN_WHO = "Wer Info";
	NUN_TARGET = "Ziel Info";
	NUN_NPC_TARGET = "NPC Info";
	NUN_CLASS = "Klasse";
	NUN_RACE = "Rasse";
	NUN_SEX = "Geschlecht";
	NUN_PROF1 = "Prim\195\164rberuf";
	NUN_PROF2 = "Sekund\195\164rberuf";
	NUN_CURR_RANK = "Aktueller PvP Rang";
	NUN_HIGH_RANK = "H\195\182chster PvP Rang";
	NUN_EDIT_DETAIL = "Detail Bearbeiten";
	NUN_SAVE_DETAIL = "Speichern";
	NUN_CANCEL_DETAIL = "Abbruch";
	NUN_CONFIRM = "Best\195\164tigen";
	NUN_RESTORE_DETAIL = "Standardwert";
	NUN_OPTIONS = "Optionen";
	NUN_OPTIONS_HEADER = "NotesUNeed Optionen";
	NUN_IMPORT = "Importiere Freunde & Ignorierte aus Notizen";
	NUN_EXPORT = "Erstelle Notizen aus Freundes- & Ignoriertenliste";
	NUN_AUTO_GUILD = "Gildenmitglieder auch in Freundesliste aufnehmen";
	NUN_AUTO_ADD = "Automatische Notizen f\195\188r Freunde/Ignorierte";
	NUN_AUTO_DELETE = "L\195\182sche Auto-Notiz wenn Freund/Ignorierter entfernt wird";
	NUN_AUTO_DELETE2 = "(Manuell erstellte Notizen werden nicht gel\195\182scht)";
	NUN_AUTO_IGNORE = "Ignoriert. Auto-Notiz vom : ";
	NUN_AUTO_FRIEND = "Freund. Auto-Notiz vom : ";
	NUN_AUTO_PARTIED = "Gruppe. Auto-Notiz vom : ";
	NUN_RESET = "Werte Zur\195\188cksetzen";
	NUN_SEARCH = "Suche";
	NUN_CLOSE = "Schlie\195\159en";
	NUN_SEARCH_CRITERIA = "Suche nach : ";
	NUN_NOTE_HEIGHT = 16;
	NUN_SHOWN = 23;
	NUN_GOBACK = "Zur\195\188ck";
	NUN_HELP = "-h";				-- must be lowercase; command to display help
	NUN_NOTE_NAME = "<Kontakt-/Notizname>";		-- must be Capitalised when searching for Contacts, else use given case for General Note search
	NUN_ALL = "-a";					-- must be lowercase; command to search all notes
	NUN_CONTACT = "-t";
	NUN_NOTE = "-g <Notiztitel>";
	NUN_CC = "-ca <Kontaktname>  OR  -ch <Kontaktname>";			-- must Capitalise
	NUN_HTT = "-tt";
	NUN_TMICRO = "-micro";
	NUN_HELP_TEXT  = " ";
	NUN_HELP_TEXT0  = "|cffffff00NotesUNeed Befehlshilfe :|r";
	NUN_HELP_TEXT1  = "|cff00ff00Verwende |r|cffffffff/nun|r|cff00ff00 ohne Argumente um das Optionenfenster an und auszustellen.|r";
	NUN_HELP_TEXT2  = "|cff00ff00Verwende |r|cffffffff/nun <Befehl>|r|cff00ff00 um folgende Befehle auszuf\195\188hren:|r";
	NUN_HELP_TEXT3  = " |cffffffff"..NUN_HELP.."|r|cff00ff00: zeigt diese Hilfe an.|r";
	NUN_HELP_TEXT4  = " |cffffffff"..NUN_ALL.."|r|cff00ff00: zeigt eine Liste aller Kontakte und anderer Notizen an.|r";
	NUN_HELP_TEXT5  = " |cffffffff"..NUN_NOTE_NAME.."|r|cff00ff00: Eingeben eines Spielernamens zeigt seine Notiz an falls eine gespeichert wurde. Bei Eingabe eines Notiznamens wird diese Notiz angezeigt sofern sie existiert.|r";
	NUN_HELP_TEXT6  = " |cffffffff"..NUN_CONTACT.."|r|cff00ff00: legt eine Notiz f\195\188r das aktuelle Ziel an, wenn man einen zul\195\164ssigen Spielergesteuerten Charakter angew\195\164hlt hat.|r";
	NUN_HELP_TEXT7  = " |cffffffff"..NUN_NOTE.."|r|cff00ff00: erstellt eine Notiz mit dem angegebenen Titel oder zeigt sie an, wenn eine Notiz mit diesem Titel bereits existiert.|r";
	NUN_HELP_TEXT8 = " |cffffffff"..NUN_HTT.."|r|cff00ff00: schaltet NotesUNeed ToolTips an/aus.|r";
	NUN_HELP_TEXT9 = " |cffffffff"..NUN_CC.."|r|cff00ff00: erstellt eine Alliance oder Horden Kontaktnotiz passend zu benutzten Namen, ohne Pr\195\188fung !r";
	NUN_HELP_TEXT10 = " |cffffffff"..NUN_TMICRO.."|r|cff00ff00: schaltet die NotesUNeed MicroButtons an/aus.|r";
	NUN_FINISHED = "NotesUNeed hat die Verarbeitung beendet";
	NUN_STAMP = "Zeitmarke";
	NUN_LOC = "Ortsangabe";
	NUN_LVL_REACHED = "\nErreichte Level ";
	NUN_QLVL = "Quest Stufe : ";
	NUN_CLRDD = "DropdownLeeren";
	NUN_SAVE_AS_DEFAULT = "Als Standard speichern";



	NUN_NEW = "Neu";
	NUN_PLAYER = "Ich";
	NUN_AUTO = "Auto";
	NUN_SELF = "Alt";
	NUN_MANU = "Manuell";
	NUN_PARTY = "Gruppe";


	NUN_DFLTHEADINGS = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_DFLTHEADINGS = {
		"Gilde : ",
		"Gilden Rang  : ",
		"Echter Name : ",
		"e-mail : ",
		"WWW : "
	};

	NUN_HRACES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_HRACES = {
		"Orc",
		"Taure",
		"Troll",
		"Untoter"
	};

	NUN_ARACES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_ARACES = {
		"Gnom",
		"Mensch",
		"Nachtelf",
		"Zwerg"
	};

	NUN_ALLCLASSES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_ALLCLASSES = {
		"Druide",
		"Hexenmeister",
		"J\195\164ger",
		"Krieger",
		"Magier",
		"Paladin",
		"Priester",
		"Schamane",
		"Schurke"
	};

	NUN_HCLASSES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_HCLASSES = {
		"Druide",
		"Hexenmeister",
		"J\195\164ger",
		"Krieger",
		"Magier",
		"Priester",
		"Schamane",
		"Schurke"
	};

	NUN_ACLASSES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_ACLASSES = {
		"Druide",
		"Hexenmeister",
		"J\195\164ger",
		"Krieger",
		"Magier",
		"Paladin",
		"Priester",
		"Schurke"
	};

	NUN_HRANKS = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_HRANKS = {
		"Sp\195\164her",
		"Grunzer",
		"Waffentr\195\164ger",
		"Schlachtrufer",
		"Rottenmeister",
		"Steingardist",
		"Blutgardist",
		"Zornbringer",
		"Klinge der Horde",
		"Feldherr",
		"Sturmreiter",
		"Kriegsherr",
		"Kriegsf\195\188rst",
		"Oberster Kriegsf\195\188rst"
	};

	NUN_ARANKS = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_ARANKS = {
		"Gefreiter",
		"Fu\195\159knecht",
		"Landsknecht",
		"Feldwebel",
		"F\195\164hnrich",
		"Leutnant",
		"Hauptmann",
		"K\195\188rassier",
		"Ritter der Allianz",
		"Feldkommandant",
		"Rittmeister",
		"Marschall",
		"Feldmarschall",
		"Gro\195\159marschall"
	};

	NUN_PROFESSIONS = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_PROFESSIONS = {
		"Alchimie",
		"Bergbau",
		"Ingenieurskunsth",
		"Ingenieurskunst: Gnomisch",
		"Ingenieurskunst: Goblin",
		"Kr\195\164uterkunde",
		"K\195\188rschnerei",
		"Lederverarbeitung",
		"Lederverarbeitung: Elementar",
		"Lederverarbeitung: Drachenschuppen",
		"Lederverarbeitung: Stammesleder",
		"Schmiedekunst",
		"Schmiedekunst:R\195\188stungsschmied",
		"Schmiedekunst:\195\132xte",
		"Schmiedekunst:H\195\164mmer",
		"Schmiedekunst:Schwerter",
		"Schneiderei",
		"Verzauberkunst"
	};


	-- The following array can be rearranged and sorted by the Translated Display values, BUT the Command Values must NOT be Translated

	NUN_SEARCHFOR = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_SEARCHFOR = {
		{	Display = "Alles",				-- Only translate Display
			Command = "All"},
		{	Display = "Beruf",				-- Only translate Display
			Command = "Profession"},
		{	Display = "Klasse",				-- Only translate Display
			Command = "Class"},
		{	Display = "Notizen",				-- Only translate Display
			Command = "Notes"},
		{	Display = "Notizen:Generisch",			-- Only translate Display
			Command = "Notes:Generic"},
		{	Display = "Notizen:Gegenst\195\164nde",		-- Only translate Display
			Command = "Notes:Items"},
		{	Display = "Notizen:Logs",			-- Only translate Display
			Command = "Notes:Logs"},
		{	Display = "Notizen:NPCs",			-- Only translate Display
			Command = "Notes:NPCs"},
		{	Display = "Notizen:Quests",			-- Only translate Display
			Command = "Notes:Quests"},
		{	Display = "Quest-Logbuch",			-- Only translate Display
			Command = "Quest History"},
		{	Display = "Text",				-- Only translate Display
			Command = "Text"}
	};

	NUN_SEXES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_SEXES = {
		"M\195\164nnlich",
		"Weiblich"
	};


	-- The following array can be rearranged and sorted by the Translated Display values, BUT the Command Values must NOT be Translated

	NUN_TRANSMITTO = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_TRANSMITTO = {
		{ 	Display = "Gilde",				-- Only translate Display
			Command = "GUILD" },
		{ 	Display = "Gruppe",				-- Only translate Display
			Command = "PARTY" },
		{	Display = "Schlachtzug",			-- Only translate Display
			Command = "RAID" },
		{	Display = "Sagen",				-- Only translate Display
			Command = "SAY" },
		{	Display = "Selbst",				-- Only translate Display
			Command = "SELF" },
		{	Display = "Fl\195\188stern",			-- Only translate Display
			Command = "WHISPER" },
	--	{	Display = "NotesUNeed User",			-- Future Development
	--		Command = "NuN" }				-- Future Development
	};



	-- The following array can be rearranged and sorted by the Translated Display values, BUT the Command Values must NOT be Translated
	-- Keep Blank Entry at the top.

	NUN_NOTETYPES = {};		-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_NOTETYPES = {
		{	Display = "   ",				-- Keep first
			Command = "   "},
		{	Display = "ITM",				-- Only translate Display
			Command = "ITM"},
		{	Display = "LOG",				-- Only translate Display
			Command = "LOG"},
		{	Display = "NPC",				-- Only translate Display
			Command = "NPC"},
		{	Display = "QST",				-- Only translate Display
			Command = "QST"}
	};



	-- Equipment Order, not Alphabetical, and NOT to be rearranged in Translation

	NUN_INVENTORY_SLOT_LIST = {};				-- Should fix a Game-Hanging Issue that occurs on some German Client Installations

	NUN_INVENTORY_SLOT_LIST = {
		{ name = "Kopf : " },
		{ name = "Hals : " },
		{ name = "Schulter : " },
		{ name = "Hemd : " },
		{ name = "Brust : " },
		{ name = "Taille : " },
		{ name = "Beine : " },
		{ name = "F\195\188\195\159e : " },
		{ name = "Handgelenke : " },
		{ name = "H\195\164nde : " },
		{ name = "Finger : " },
		{ name = "Finger : " },
		{ name = "Schmuck : " },
		{ name = "Schmuck : " },
		{ name = "R\195\188cken : " },
		{ name = "Waffenhand : " },
		{ name = "Schildhand : " },
		{ name = "Distanz : " },			-- Distanz / Fernwaffe ??
		{ name = "Wappenrock : " },
	};




	NUN_MALE = "M\195\164nnlich";
	NUN_FEMALE = "Weiblich";

	NUN_MICROOPTIONS_TOOLTIP_TXT1 = "NotesUNeed Optionen";
	NUN_MICROOPTIONS_TOOLTIP_TXT2 = "  Anklicken um die NotesUNeed Optionen zu \195\182ffnen/schlie\195\159en";
	NUN_MICROBROWSEA_TOOLTIP_TXT1 = "NotesUNeed Browser";
	NUN_MICROBROWSEA_TOOLTIP_TXT2 = "  Anklicken um ALLE Notizen zu sehen";
	NUN_MICROCONTACT_TOOLTIP_TXT1 = "NotesUNeed Kontakt";
	NUN_MICROCONTACT_TOOLTIP_TXT2 = "  Anklicken um f\195\188r das Ziel eine Notiz anzulegen";
	NUN_MICROCONTACT_TOOLTIP_TXT3 = "   oder ohne Ziel seine eigene Notiz anzusehen.";
	NUN_MICROGENNOTE_TOOLTIP_TXT1 = "NotesUNeed allgemeine Notiz";
	NUN_MICROGENNOTE_TOOLTIP_TXT2 = "  Anklicken, um eine leere allgemeine Notiz anzulegen";
	NUN_RESETBUTTON_TOOLTIP_TXT1 = "Kontakt Detail\195\188berschriften zur\195\188cksetzen auf :";
	NUN_RESETBUTTON_TOOLTIP_TXT2 = "  Gilde, Gildenrang, Echter Name, e-mail, WWW.";
	NUN_LOCBUTTON_TOOLTIP_TXT1 = "Aktuellen Ort eintragen";
	NUN_LOCBUTTON_TOOLTIP_TXT2 = "  Eure aktuelle Position wird im Haupttextfeld eingef\195\188gt";
	NUN_GNOTETITLE_TOOLTIP_TXT1 = "Ein Notiztitel muss angegeben werden";
	NUN_GNOTETITLE_TOOLTIP_TXT2 = " Dr\195\188cke <Enter> um den Titel zu \195\188bernehmen und die Notiz zu editieren";
	NUN_SAVEDEF_TOOLTIP_TXT1 = "Ausw\195\164hlen, um eine neue Standard\195\188berschrift zu speichern";
	NUN_SAVEDEF_TOOLTIP_TXT2 = "  \195\132nderung wird sofort wirksam.";
	NUN_RESTOREDEF_TOOLTIP_TXT1 = "Anklicken, um derzeitigen Text durch Standard\195\188berschrift zu ersetzen";
	NUN_RESTOREDEF_TOOLTIP_TXT2 = "  Um die NotesUNeed Original\195\188berschrifen wiederherzustellen benutze";
	NUN_RESTOREDEF_TOOLTIP_TXT3 = "  den 'Werte Zur\195\188cksetzen'  Knopf im Optionsfenster";
	NUN_RESTOREDEF_TOOLTIP_TXT4 = "  \195\132nderung wird sofort wirksam.";
	NUN_TARGETBUTTON_TOOLTIP_TXT1 = "Informationen zur Ausr\195\188stung des Kontakts einf\195\188gen";
	NUN_TARGETBUTTON_TOOLTIP_TXT2 = "  Distanz zum Ziel schr\195\164nkt die Informationen ein. Falls der";
	NUN_TARGETBUTTON_TOOLTIP_TXT3 = "  der derzeitige Kontakt nicht das Ziel ist, versucht NotesUNeed ";
	NUN_TARGETBUTTON_TOOLTIP_TXT4 = "  ihn als Ziel zu w\195\164hlen.";
	NUN_NPCTARGETBUTTON_TOOLTIP_TXT1 = "Ziel Informationen einholen";
	NUN_NPCTARGETBUTTON_TOOLTIP_TXT2 = "  Muss NPC als Ziel haben";
	NUN_WHOBUTTON_TOOLTIP_TXT1 = "Wer-Information abrufen";
	NUN_WHOBUTTON_TOOLTIP_TXT2 = "  Der Kontakt muss online sein, damit der /wer Befehl funktioniert";
	NUN_WHOBUTTON_TOOLTIP_TXT3 = "  Mehrere klicks k\195\182nnen notwendig sein w\195\164hrend der /wer Befehl abklingt";
	NUN_USERBUTTON_TOOLTIP_TXT1 = "Benutzerdefinierbare \195\156berschriften & Details";
	NUN_USERBUTTON_TOOLTIP_TXT2 = "  Anklicken zum \195\132ndern. \195\156berschriften k\195\182nnen f\195\188r einzelne Spieler";
	NUN_USERBUTTON_TOOLTIP_TXT3 = "  angepasst werden oder als neue Standardwerte gespeichert werden.";
	NUN_CLEARDD_TOOLTIP_TXT1 = "Drop-down Liste leeren";
	NUN_CLEARDD_TOOLTIP_TXT2 = " Leert die zuletzt ver\195\164nderte Drop-down Liste";
	NUN_FFBUTTON_TOOLTIP_TXT1 = "Editiert NotesUNeed Notiz";
	NUN_FFBUTTON_TOOLTIP_TXT2 = " Ein Kontakt muss makiert sein";
	NUN_TT_PIN_TOOLTIP_TXT1 = "NotesUNeed Tooltip anpinnen";
	NUN_TT_PIN_TOOLTIP_TXT2 = " Anklicken, um einen verschiebbaren";
	NUN_TT_PIN_TOOLTIP_TXT3 = " Tooltip der aktuellen Notiz zu erstellen";
	NUN_TT_PIN_EDIT_TXT1 = "Notiz Editieren";
	NUN_TT_PIN_EDIT_TXT2 = " Editiere die Details dieser Tooltipnotiz";
	NUN_TT_OPENCHAT_TXT1 = "Notiz Senden";
	NUN_TT_OPENCHAT_TXT2 = " Sende Notiz mittels Fl\195\188stern, Gruppenchat,";
	NUN_TT_OPENCHAT_TXT3 = " Gildenchat, etc.";
	NUN_TT_CHATCHECK_TXT1 = "Sende nur Haupftfenstertext";
	NUN_TT_CHATCHECK_TXT2 = " Ausw\195\164hlen um die Informationen in den DropDown Listen";
	NUN_TT_CHATCHECK_TXT3 = " und den Spielerdetail-Feldern zu \195\188berspringen.";
	NUN_TT_LEVEL_TXT1 = "Speichere auf Account-Ebene";
	NUN_TT_LEVEL_TXT2 = " Ausw\195\164hlen um diese Notiz auch auf anderen Realms(Servern)";
	NUN_TT_LEVEL_TXT3 = " lesen zu k\195\182nnen.";
	NUN_TT_GTYPE_TXT1 = "W\195\164hle allgemeinen Notiztyp";
	NUN_TT_GTYPE_TXT2 = "  Den Notiztyp zu \195\164ndern kann helfen eine Notiz wiederzufinden.";
	NUN_TT_GTYPE_TXT3 = "  Kann leer gelassen oder nachtr\195\164glich geleert werden.";
	NUN_TT_SCALE_TXT1 = "\195\132ndere Fenstergr\195\182\195\159e";
	NUN_TT_SCALE_TXT2 = "  Benutzen, um die Fenster und/oder die NotesUNeed Tooltips zu";
	NUN_TT_SCALE_TXT3 = "  vergr\195\182\195\159ern und zu verkleinern um sie den Bed\195\188rfnissen anzupassen";
	NUN_TT_GDELETE_TXT1 = "!! BITTE BEACHTEN !!";
	NUN_TT_GDELETE_TXT2 = "  Derzeit l\195\182scht dieser Knopf NICHT die";
	NUN_TT_GDELETE_TXT3 = "  Quest Notiz - sondern er l\195\182scht nur den";
	NUN_TT_GDELETE_TXT4 = "  Eintrag im Questverlauf dieses Charakters";
	NUN_TT_PDOWN_TXT1 = "Verringern des Gruppenz\195\132hlers";
	NUN_TT_PDOWN_TXT2 = "  Anklicken um den Gruppenz\195\164hler manuell";
	NUN_TT_PDOWN_TXT3 = "  zu reduzieren. (Wie oft zusammen gespielt wurde)";
	NUN_TT_BHAVE_TXT1 = "\195\132ndere Verhalten des Notizeditierungsfensters";
	NUN_TT_BHAVE_TXT2 = "Unmarkiert lassen, damit das Editierungsfenster sich so verh\195\164lt,";
	NUN_TT_BHAVE_TXT3 = "  wie in fr\195\188heren Versionen. Markieren, um zu verhindern,";
	NUN_TT_BHAVE_TXT4 = "  da\195\159 die Textbox automatisch angew\195\164hlt wird,";
	NUN_TT_BHAVE_TXT5 = "  und durch einmaliges Dr\195\188cken von ESC geschlossen wird.";
	NUN_TT_MAPNOTES_TXT1 = "MapNotes Notiz Erstellen";					
	NUN_TT_MAPNOTES_TXT2 = "  Anklicken, um eine KartenNotiz an DEINER aktuellen";		
	NUN_TT_MAPNOTES_TXT3 = "  Position mit diesem Notiznamen zu erstellen.";		
	NUN_TT_MAPCHECK_TXT1 = "Automatisch NPC Kartennotizen erstellen";			
	NUN_TT_MAPCHECK_TXT2 = "  Ben\195\182tigt das MapNotes Add-On.";
	NUN_TT_MAPCHECK_TXT3 = "  Ausw\195\164hlen um automatisch MapNote";
	NUN_TT_MAPCHECK_TXT4 = "  Symbole auf der Karte zu erstellen wenn man NPC-Notizen";
	NUN_TT_MAPCHECK_TXT5 = "  anlegt. Markiert zus\195\164tzlich Questgeber.";		
	NUN_TT_HYPERLINKS_TXT1 = "Notiz Hyperlinks";						
	NUN_TT_HYPERLINKS_TXT2 = "  Gibt HyperLinks der Notiz im Chat-Fenster";		
	NUN_TT_HYPERLINKS_TXT3 = "  aus, um leicht auf sie zuzugreifen.";


	NUN_NOTESUNEED_INFO = "NotesUNeed Notiz";

	NUN_TT_KEYPHRASE = "TT::";
	NUN_TT_PIN_TXT = "Pin Up Tooltip";

	NUN_LEVEL_TXT = "Account-Ebene";

	NUN_CHAT_HEADER = "Sende Notiz";
	NUN_CHAT_NOTETITLE_LABEL = "Notiztitel : ";
	NUN_CHAT_DROPDOWN_LABEL = "Sende Notiz an...";
	NUN_CHAT_SEND = "Senden";
	NUN_CHATCHECKBOX_LABEL = "Nur Hauptfenstertext senden";
	NUN_TRANSMISSION_PREFIX1 = "NotesUNeed NOTIZ\195\156BERTRAGUNG VON : ";
	NUN_TRANSMISSION_PREFIX2 = "NotesUNeed NOTIZANFANG : ";
	NUN_TRANSMISSION_POSTFIX = "NotesUNeed NOTIZENDE   : ";


	NUN_TRANSMISSION_ERROR = "Ein Fehler trat bei der Erstellung der zu sendenden NotesUNeed Notiz auf : ";
	NUN_TRANSMISSION_MISSING = "Notiz nicht gefunden !";
	NUN_COLOUR_ERROR_REPORT = "Falsch formattierte Farbcodes im Haupttext : Senden \195\188ber den Chat w\195\188rde wahrscheinlich zu einem Verbindungsverlust f\195\188hren !";
	NUN_NONCRITICAL_ERROR = "Unkritische(r) Fehler trat(en) auf. Beachte \195\156bertragungsaufzeichnung in Notiz : ";
	NUN_LINEERROR_TEXT = "Fehler in Zeile ";

	NUN_CONFLICT_LABEL1 = "Speichern dieser Notiz auf Account-Ebene wird Server-Ebenen Notizen";
	NUN_CONFLICT_LABEL2 = "  Auf folgeneden Realms \195\188berschreiben :";


	NUN_FRAME_SCALE_TXT = "Rahmen";
	NUN_FONT_SCALE_TXT = "Tooltips";
	NUN_MAPNOTES_TXT = "Kartennotiz";					
	NUN_NOMAPNOTES = "|cffff0000MapNotes Add-On  NICHT  vorhanden|r";

	NUN_REWARDS = "Quest Belohnungen : ";
	NUN_CHOICES = "Belohnung ausw\195\164hlen : ";
	NUN_CREATED = "ERSTELLT";
	NUN_COMPLETE = "ABGESCHLOSSEN";
	NUN_FINISHED = "ABGEGEBEN";
	NUN_QUEST = "Quest : ";

	NUN_DUPLICATE = "Eine NotesUNeed Notiz existiert bereits\nmit diesem Namen";
	NUN_TEXTLIM1 = "NotesUNeed Text Limit von ";
	NUN_TEXTLIM2 = " \195\188berschritten Teile\ndes Texts k\195\182nnten in der gespeicherten Version fehlen.\n";


	NUN_TTLENGTH_TEXTBOX_LABEL = "Gib die maximale Zahl von Buchstaben in den Tooltips an : ";
	NUN_DEFAULTLEVEL_CHECKBOX_LABEL = "Speichere standardm\195\164\195\159ig allgemeine Notizen auf der Account-Ebene";
	NUN_SHOWHELPTT_CHECKBOX_LABEL = "Zeige NotesUNeed Tooltips";
	NUN_MINOVERTT_CHECKBOX_LABEL = "Unterdr\195\188cke MouseOver Ziel Tooltip";
	NUN_AUTONOTE_CHECKBOX_LABEL = "Automatisch eine Notiz f\195\188r aktuellen Charakter verwalten";
	NUN_QUESTNOTE_CHECKBOX_LABEL = "Automatisch eine Notiz \195\188ber Questlog und Verlauf verwalten";
	NUN_AUTOPARTY_CHECKBOX_LABEL = "Automatisch eine Notiz \195\188ber Gruppenmitglieder verwalten";
	NUN_BEHAVE_CHECKBOX_LABEL = "Alternatives Verhalten des Notiz Editierungsfensters";
	NUN_TTTOTAL_LABEL = "     Gesamt";	-- This Translation is DELIBERATELY prefixed with extra Spaces for Frame Positioning of Label
	NUN_TTLINEL_LABEL = "~Pro Zeile";
	NUN_AUTOMAP_CHECKBOX_LABEL = "Auto-MapNote NPCs";

	NUN_QUESTS_TEXT = "Quests";
	NUN_STAGE_TEXT = "Queststatus ";
	NUN_QUEST_GIVER = "Questgeber";

	BINDING_HEADER_NUN = "NotesUNeed";
	BINDING_NAME_NUN_OPTIONS = "NotesUNeed Optionen anzeigen/schlie\195\159en";
	BINDING_NAME_NUN_TARGET = "Erzeuge Notiz zum Ziel ohne sie zu \195\182ffnen";
	BINDING_NAME_NUN_MICRO = "NotesUNeed MicroButtons an-/ausschalten";
	BINDING_NAME_NUN_LAST = "\195\150ffne letzte Notiz";

	NUN_AUTONOTED = " : Notiert von NotesUNeed";

	NUN_COMPLETED = " abgeschlossen.";



	-- WoW Tooltip Text Search Patterns : Care should be taken to ensure that Translation of the following words
	--   is equivalent to the words used in-game by WoW. For example there may be several translations for the
	--   word "Damage", but the word required is the one that appears in Tooltips to indicate the amount of damage
	--   that a weapon does. Or a given translation might not use the plural for "Legs", but equal "Leg" instead.
	--   These words are used to search the WoW in-game tooltip text and must be based on the
	--   words Blizzard uses in that translation. Therefore correct translations MUST be taken from the tooltip
	--   text that appears when hovering over the corresponding slots in the character sheet, or over weapons/armour.

	NUN_HEAD = "Kopf";
	NUN_NECK = "Hals";
	NUN_SHOULDER = "Schulter";
	NUN_SHIRT = "Hemd";
	NUN_CHEST = "Brust";
	NUN_WAIST = "Taille";
	NUN_LEGS = "Beine";
	NUN_FEET = "F\195\188\195\159e";
	NUN_WRIST = "Handgelenke";
	NUN_HANDS = "H\195\164nde";			-- The text for the Hands Character Slot i.e. what gloves they are wearing
	NUN_FINGER = "Finger";
	NUN_TRINKET = "Schmuck";
	NUN_BACK = "R\195\188cken";
	NUN_HAND = "hand";				-- The text associated with the equipped weapon and shield slots
	NUN_HAND2 = "h\195\164ndig";
	NUN_GUN = "Schusswaffe";
	NUN_BOW_U = "Bogen";
	NUN_BOW_L = "bogen";
	NUN_WAND = "Zauberstab";
	NUN_THROWN = "Geworfen";
	NUN_TABARD = "Wappenrock";
	NUN_DAMAGE = "Schaden";
	NUN_RANGED = "Distanz";				-- Fernwaffe / Distanz / Distanzwaffe ??



	NUN_SLOWSERVER = "Hohe Latenz. Quest Text konnte nicht geladen werden. Bitte noch mal versuchen. ";
	NUN_NOROOM = "Kein Platz mehr im \195\156bertragungs Log";

	NUN_LEVEL = "Stufe";
	NUN_PROF = "Beruf";
	NUN_CONTACT_TXT = "Kontakt-Notiz";
	NUN_GENERAL_TXT = "Allgemeine Notiz";

	NUN_LIMITED = "(Limiterter Bestand)";

	NUN_PARTIED_WITH = "Gruppen :";

	NUN_LINKFAILURE = "Unbekannter Notiztyp : Kann HyperLinks nicht verarbeiten";	
	NUN_NOLINKS = "Keine HyperLinks in Notiz gefunden";				

	NUN_POPUP_TITLE = "NotesUNeed";				
	NUN_MERGING = "Verbinde...";						

	NUN_LOADED = "Geladen";								
	NUN_MAX_MERGED = "Maximum von 5 Notizverbindungen erreicht!";				

	NUN_MAPNOTESVERSION_WARNING = "ACHTUNG : NotesUNeed wurde NICHT mit der installierten Version von MapNotes getestet. (Siehe NotesUNeed Readme.txt wegen unterst\195\188tzter Versionen)";

	NUN_DAY_LIST = {
	  "Montag",
	  "Dienstag",
	  "Mittwoch",
	  "Donnerstag",
	  "Freitag",
	  "Samstag",
	  "Sontag"
	};

	NUN_MONTH_LIST = {
	  "Jannuar",
	  "Februar",
	  "M\195\164rz",
	  "April",
	  "Mai",
	  "Juni",
	  "Juli",
	  "August",
	  "September",
	  "Oktober",
	  "November",
	  "Dezember"
	};

end
```

## Localisation.lua
```lua
-- Text Inserts

NUN_NEW_NOTE = "New Note";
NUN_SAVED_NOTE = "Saved Note";
NUN_QUEST_NOTE = "Quest History Detail";
NUN_SAVE = "Save";
NUN_CANCEL = "Cancel";
NUN_DELETE = "Delete";
NUN_WHO = "Who Info";
NUN_TARGET = "Target Info";
NUN_NPC_TARGET = "NPC Info";
NUN_CLASS = "Class";
NUN_RACE = "Race";
NUN_SEX = "Sex";
NUN_PROF1 = "Primary Profession";
NUN_PROF2 = "Secondary Profession";
NUN_CURR_RANK = "Current PvP Rank";
NUN_HIGH_RANK = "Highest PvP Rank";
NUN_EDIT_DETAIL = "Edit Detail";
NUN_SAVE_DETAIL = "Save";
NUN_CANCEL_DETAIL = "Cancel";
NUN_CONFIRM = "Confirm";
NUN_RESTORE_DETAIL = "Restore Default";
NUN_OPTIONS = "Options";
NUN_OPTIONS_HEADER = "NotesUNeed Options";
NUN_IMPORT = "Add to Friend & Ignore Lists from Notes";
NUN_EXPORT = "Create Notes from Friend & Ignore Lists";
NUN_AUTO_GUILD = "Add to Friends even when in same Guild";
NUN_AUTO_ADD = "Auto-create Notes for Friends/Ignores";
NUN_AUTO_DELETE = "Auto-delete Notes when Friends/Ignores are Removed";
NUN_AUTO_DELETE2 = "(Manually Saved notes will not be deleted)";
NUN_AUTO_IGNORE = "Ignore. Auto-Noted on : ";
NUN_AUTO_FRIEND = "Friend. Auto-Noted on : ";
NUN_AUTO_PARTIED = "Party. Auto-Noted on : ";
NUN_RESET = "Reset Defaults";
NUN_SEARCH = "Search";
NUN_CLOSE = "Close";
NUN_SEARCH_CRITERIA = "Search for : ";
NUN_NOTE_HEIGHT = 16;
NUN_SHOWN = 23;
NUN_GOBACK = "Back";
NUN_HELP = "-h";				-- must be lowercase; command to display help
NUN_NOTE_NAME = "<Contact/Note Name>";		-- must be Capitalised when searching for Contacts, else use given case for General Note search
NUN_ALL = "-a";					-- must be lowercase; command to search all notes
NUN_CONTACT = "-t";
NUN_NOTE = "-g <Note Title>";
NUN_CC = "-ca <Contact Name>  OR  -ch <Contact Name>";			-- must Capitalise
NUN_HTT = "-tt";
NUN_TMICRO = "-micro";
NUN_HELP_TEXT  = " ";
NUN_HELP_TEXT0  = "|cffffff00NotesUNeed command help :|r";
NUN_HELP_TEXT1  = "|cff00ff00Use |r|cffffffff/nun|r|cff00ff00 without any arguments to toggle the NotesUNeed Options Window.|r";
NUN_HELP_TEXT2  = "|cff00ff00Use |r|cffffffff/nun <command>|r|cff00ff00 to perform the following commands:|r";
NUN_HELP_TEXT3  = " |cffffffff"..NUN_HELP.."|r|cff00ff00: displays these help messages.|r";
NUN_HELP_TEXT4  = " |cffffffff"..NUN_ALL.."|r|cff00ff00: displays a list of all Contact and General notes for you to browse.|r";
NUN_HELP_TEXT5  = " |cffffffff"..NUN_NOTE_NAME.."|r|cff00ff00: entering a note name will display that Contact's note if one has been saved, or display the General note of that name if one has been saved.|r";
NUN_HELP_TEXT6  = " |cffffffff"..NUN_CONTACT.."|r|cff00ff00: will Generate a Contact note for your current target, if you have targetted a valid player controlled character.|r";
NUN_HELP_TEXT7  = " |cffffffff"..NUN_NOTE.."|r|cff00ff00: will Generate a Generic note with the title provided, or display the note if it already exists.|r";
NUN_HELP_TEXT8 = " |cffffffff"..NUN_HTT.."|r|cff00ff00: will Toggle NotesUNeed ToolTips on/off.|r";
NUN_HELP_TEXT9 = " |cffffffff"..NUN_CC.."|r|cff00ff00: will Create an Alliance or Horde Contact note respectively for the provided name, without Validation !|r";
NUN_HELP_TEXT10 = " |cffffffff"..NUN_TMICRO.."|r|cff00ff00: will Toggle the NotesUNeed MicroButtons.|r";

NUN_STAMP = "TimeStamp";
NUN_LOC = "Location";
NUN_LVL_REACHED = "\nReached Level ";
NUN_QLVL = "Quest Lvl : ";
NUN_CLRDD = "ClearDropDown";
NUN_SAVE_AS_DEFAULT = "Save as Default";



NUN_NEW = "New";
NUN_PLAYER = "Me";
NUN_AUTO = "Auto";
NUN_SELF = "Alt";
NUN_MANU = "Manual";
NUN_PARTY = "Party";


NUN_DFLTHEADINGS = {};

NUN_DFLTHEADINGS = {
	"Guild : ",
	"Guild Rank : ",
	"Real Name : ",
	"e-mail : ",
	"WWW : "
};

NUN_HRACES = {};

NUN_HRACES = {
	"Orc",
	"Tauren",
	"Troll",
	"Undead"
};

NUN_ARACES = {};

NUN_ARACES = {
	"Dwarf",
	"Gnome",
	"Human",
	"Night Elf"
};

NUN_ALLCLASSES = {};

NUN_ALLCLASSES = {
	"Druid",
	"Hunter",
	"Mage",
	"Paladin",
	"Priest",
	"Rogue",
	"Shaman",
	"Warlock",
	"Warrior"
};

NUN_HCLASSES = {};

NUN_HCLASSES = {
	"Druid",
	"Hunter",
	"Mage",
	"Priest",
	"Rogue",
	"Shaman",
	"Warlock",
	"Warrior"
};

NUN_ACLASSES = {};

NUN_ACLASSES = {
	"Druid",
	"Hunter",
	"Mage",
	"Paladin",
	"Priest",
	"Rogue",
	"Warlock",
	"Warrior"
};

NUN_HRANKS = {};

NUN_HRANKS = {
	"Scout",
	"Grunt",
	"Sergeant",
	"Senior Sergeant",
	"First Sergeant",
	"Stone Guard",
	"Blood Guard",
	"Legionnaire",
	"Centurion",
	"Champion",
	"Lieutenant General",
	"General",
	"Warlord",
	"High Warlord"
};

NUN_ARANKS = {};

NUN_ARANKS = {
	"Private",
	"Corporal",
	"Sergeant",
	"Master Sergeant",
	"Sergeant Major",
	"Knight",
	"Knight Lieutenant",
	"Knight Captain",
	"Knight Champion",
	"Lieutenant Commander",
	"Commander",
	"Marshal",
	"Field Marshal",
	"Grand Marshal"
};

NUN_PROFESSIONS = {};

NUN_PROFESSIONS = {
	"Alchemist",
	"Blacksmith",
	"Blacksmith:Armoursmith",
	"Blacksmith:Weaponsmith:Axe",
	"Blacksmith:Weaponsmith:Hammer",
	"Blacksmith:Weaponsmith:Sword",
	"Enchanter",
	"Engineer",
	"Engineer: Gnomish",
	"Engineer: Goblin",
	"Herbalist",
	"Leatherworker",
	"Leatherworker: Elemental",
	"Leatherworker: Dragonscale",
	"Leatherworker: Tribal",
	"Miner",
	"Skinner",
	"Tailor"
};


-- The following array can be rearranged and sorted by the Translated Display values, BUT the Command Values must NOT be Translated

NUN_SEARCHFOR = {};

NUN_SEARCHFOR = {
	{	Display = "All",			-- Only translate Display
		Command = "All"},
	{	Display = "Class",			-- Only translate Display
		Command = "Class"},
	{	Display = "Notes",			-- Only translate Display
		Command = "Notes"},
	{	Display = "Notes:Generic",		-- Only translate Display
		Command = "Notes:Generic"},
	{	Display = "Notes:Items",		-- Only translate Display
		Command = "Notes:Items"},
	{	Display = "Notes:Logs",			-- Only translate Display
		Command = "Notes:Logs"},
	{	Display = "Notes:NPCs",			-- Only translate Display
		Command = "Notes:NPCs"},
	{	Display = "Notes:Quests",		-- Only translate Display
		Command = "Notes:Quests"},
	{	Display = "Profession",			-- Only translate Display
		Command = "Profession"},
	{	Display = "Quest History",		-- Only translate Display
		Command = "Quest History"},
	{	Display = "Text",			-- Only translate Display
		Command = "Text"}
};

NUN_SEXES = {};

NUN_SEXES = {
	"Male",
	"Female"
};


-- The following array can be rearranged and sorted by the Translated Display values, BUT the Command Values must NOT be Translated

NUN_TRANSMITTO = {};

NUN_TRANSMITTO = {
	{ 	Display = "Guild",			-- Only translate Display
		Command = "GUILD" },
	{ 	Display = "Party",			-- Only translate Display
		Command = "PARTY" },
	{	Display = "Raid",			-- Only translate Display
		Command = "RAID" },
	{	Display = "Say",			-- Only translate Display
		Command = "SAY" },
	{	Display = "Self",			-- Only translate Display
		Command = "SELF" },
	{	Display = "Whisper",			-- Only translate Display
		Command = "WHISPER" },
--	{	Display = "NotesUNeed User",			-- Future Development
--		Command = "NuN" }				-- Future Development
};



-- The following array can be rearranged and sorted by the Translated Display values, BUT the Command Values must NOT be Translated
-- Keep Blank Entry at the top.

NUN_NOTETYPES = {};

NUN_NOTETYPES = {
	{	Display = "   ",			-- Keep first
		Command = "   "},
	{	Display = "ITM",			-- Only translate Display
		Command = "ITM"},
	{	Display = "LOG",			-- Only translate Display
		Command = "LOG"},
	{	Display = "NPC",			-- Only translate Display
		Command = "NPC"},
	{	Display = "QST",			-- Only translate Display
		Command = "QST"}
};



-- Equipment Order, not Alphabetical, and NOT to be rearranged in Translation

NUN_INVENTORY_SLOT_LIST = {};

NUN_INVENTORY_SLOT_LIST = {
	{ name = "Head : " },
	{ name = "Neck : " },
	{ name = "Shoulder : " },
	{ name = "Shirt : " },
	{ name = "Chest : " },
	{ name = "Waist : " },
	{ name = "Legs : " },
	{ name = "Feet : " },
	{ name = "Wrists : " },
	{ name = "Hands : " },
	{ name = "Finger : " },
	{ name = "Finger : " },
	{ name = "Trinket : " },
	{ name = "Trinket : " },
	{ name = "Back : " },
	{ name = "MainHand : " },
	{ name = "OffHand : " },
	{ name = "Ranged : " },
	{ name = "Tabard : " },
};




NUN_MALE = "Male";
NUN_FEMALE = "Female";

NUN_MICROOPTIONS_TOOLTIP_TXT1 = "NotesUNeed Options";
NUN_MICROOPTIONS_TOOLTIP_TXT2 = "  Click to Toggle the NotesUNeed Options Frame";
NUN_MICROBROWSEA_TOOLTIP_TXT1 = "NotesUNeed Browse";
NUN_MICROBROWSEA_TOOLTIP_TXT2 = "  Click to Browse ALL Notes";
NUN_MICROCONTACT_TOOLTIP_TXT1 = "NotesUNeed Contact";
NUN_MICROCONTACT_TOOLTIP_TXT2 = "  Click to check/create a note for current Target";
NUN_MICROCONTACT_TOOLTIP_TXT3 = "   or View Own Contact note if no Target";
NUN_MICROGENNOTE_TOOLTIP_TXT1 = "NotesUNeed General Note";
NUN_MICROGENNOTE_TOOLTIP_TXT2 = "  Click to create a new blank General Note";
NUN_RESETBUTTON_TOOLTIP_TXT1 = "Reset Checkboxes, & Contact Detail Headings to :";
NUN_RESETBUTTON_TOOLTIP_TXT2 = "  Guild, Guild Rank, Real Name, e-mail, WWW.";
NUN_LOCBUTTON_TOOLTIP_TXT1 = "Record Current Location";
NUN_LOCBUTTON_TOOLTIP_TXT2 = "  Your Current Location will be added to the Main Text Box";
NUN_GNOTETITLE_TOOLTIP_TXT1 = "Note Title must be Specified";
NUN_GNOTETITLE_TOOLTIP_TXT2 = " Press <Enter> to Confirm and Edit Note";
NUN_SAVEDEF_TOOLTIP_TXT1 = "Check to Save a New Default Heading";
NUN_SAVEDEF_TOOLTIP_TXT2 = "  Change will take affect immediately.";
NUN_RESTOREDEF_TOOLTIP_TXT1 = "Click to Replace Current text with Default Heading";
NUN_RESTOREDEF_TOOLTIP_TXT2 = "  To Restore NotesUNeed Original Headings use the";
NUN_RESTOREDEF_TOOLTIP_TXT3 = "    'Reset Defaults'  button in the Options Frame";
NUN_RESTOREDEF_TOOLTIP_TXT4 = "  Change will take affect immediately.";
NUN_TARGETBUTTON_TOOLTIP_TXT1 = "Retrieve Target-style Information";
NUN_TARGETBUTTON_TOOLTIP_TXT2 = "  Distance to target restricts the information. If the";
NUN_TARGETBUTTON_TOOLTIP_TXT3 = "  current Contact is not Targetted, NotesUNeed will ";
NUN_TARGETBUTTON_TOOLTIP_TXT4 = "  attempt to Target them";
NUN_NPCTARGETBUTTON_TOOLTIP_TXT1 = "Retrieve Target-style Information";
NUN_NPCTARGETBUTTON_TOOLTIP_TXT2 = "  Must have an NPC Targetted";
NUN_WHOBUTTON_TOOLTIP_TXT1 = "Retrieve Who-style Information";
NUN_WHOBUTTON_TOOLTIP_TXT2 = "  The Contact must be online for the /who command to work";
NUN_WHOBUTTON_TOOLTIP_TXT3 = "  Several clicks may be required while the /who command refreshes.";
NUN_USERBUTTON_TOOLTIP_TXT1 = "User Definable Headings & Details";
NUN_USERBUTTON_TOOLTIP_TXT2 = "  Click to alter. Headings may be saved for individuals";
NUN_USERBUTTON_TOOLTIP_TXT3 = "  or new Defaults Saved";
NUN_CLEARDD_TOOLTIP_TXT1 = "Clear Drop Down List";
NUN_CLEARDD_TOOLTIP_TXT2 = " Clears the Last Changed Drop Down Box";
NUN_FFBUTTON_TOOLTIP_TXT1 = "Edit NotesUNeed Note";
NUN_FFBUTTON_TOOLTIP_TXT2 = " Must have a contact selected";
NUN_TT_PIN_TOOLTIP_TXT1 = "Pin Up NotesUNeed Tooltip";
NUN_TT_PIN_TOOLTIP_TXT2 = " Click to display a draggable";
NUN_TT_PIN_TOOLTIP_TXT3 = " tooltip for the current Note";
NUN_TT_PIN_EDIT_TXT1 = "Edit Note";
NUN_TT_PIN_EDIT_TXT2 = " Edit the details of this Tooltips Note";
NUN_TT_OPENCHAT_TXT1 = "Send Note";
NUN_TT_OPENCHAT_TXT2 = " Send Note via Whisper, or Party Chat,  or";
NUN_TT_OPENCHAT_TXT3 = " Guild Chat, etc.";
NUN_TT_CHATCHECK_TXT1 = "Only send Scroll Box Text";
NUN_TT_CHATCHECK_TXT2 = " Check here if you wish to skip the information";
NUN_TT_CHATCHECK_TXT3 = " in the DropDown boxes and User Details Buttons";
NUN_TT_LEVEL_TXT1 = "Save at Account Level";
NUN_TT_LEVEL_TXT2 = " Leave Unchecked to save and view this note only";
NUN_TT_LEVEL_TXT3 = " on this Server Realm";
NUN_TT_GTYPE_TXT1 = "Select General Note Type";
NUN_TT_GTYPE_TXT2 = "  Redefining a note type can help when searching";
NUN_TT_GTYPE_TXT3 = "  for it again. May leave/select blank type.";
NUN_TT_SCALE_TXT1 = "Change Frame Scale";
NUN_TT_SCALE_TXT2 = "  Use to shrink or enlarge the Frames and / or ";
NUN_TT_SCALE_TXT3 = " the NotesUNeed Tooltip Text to suit your needs";
NUN_TT_GDELETE_TXT1 = "!! PLEASE NOTE !!";
NUN_TT_GDELETE_TXT2 = "  Currently this button will NOT delete the";
NUN_TT_GDELETE_TXT3 = "    Quest Note - but WILL delete the entry";
NUN_TT_GDELETE_TXT4 = "    in this character's Quest History";
NUN_TT_PDOWN_TXT1 = "Decrement Party Count";
NUN_TT_PDOWN_TXT2 = "  Click to manually reduce the counter of the";
NUN_TT_PDOWN_TXT3 = "  number of times you have partied together.";
NUN_TT_BHAVE_TXT1 = "Change Edit Note Frame Behaviour";
NUN_TT_BHAVE_TXT2 = "Leave Unchecked for Edit Frames to behave as";
NUN_TT_BHAVE_TXT3 = "  they have in earlier versions. Check to stop";
NUN_TT_BHAVE_TXT4 = "  Note Edit Boxes automatically getting focus,";
NUN_TT_BHAVE_TXT5 = "  and to lose Focus when Escape is pressed.";
NUN_TT_MAPNOTES_TXT1 = "MapNotes Note Creation";
NUN_TT_MAPNOTES_TXT2 = "  Click to create a MapNote at YOUR current";
NUN_TT_MAPNOTES_TXT3 = "  location, based on this Notes Name.";
NUN_TT_MAPCHECK_TXT1 = "Auto Create NPC MapNotes";
NUN_TT_MAPCHECK_TXT2 = "  Requires separate MapNotes AddOn.";
NUN_TT_MAPCHECK_TXT3 = "  Check to automatically create MapNote";
NUN_TT_MAPCHECK_TXT4 = "  Icons on the Map when Noting NPCs.";
NUN_TT_MAPCHECK_TXT5 = "  Also marks NPC Quest Givers";
NUN_TT_HYPERLINKS_TXT1 = "Note Hyperlinks";
NUN_TT_HYPERLINKS_TXT2 = "  Outputs the Note's HyperLinks to";
NUN_TT_HYPERLINKS_TXT3 = "  the Chat Frame for easy access";
NUN_TT_RUN_TXT1 = "Run Script";
NUN_TT_RUN_TXT2 = " Execute note as Lua Script";


NUN_NOTESUNEED_INFO = "NotesUNeed Noted";

NUN_TT_PIN_TXT = "Pin Up Tooltip";

NUN_LEVEL_TXT = "Account Level";

NUN_CHAT_HEADER = "Send Note";
NUN_CHAT_NOTETITLE_LABEL = "Note Title : ";
NUN_CHAT_DROPDOWN_LABEL = "Send Note to...";
NUN_CHAT_SEND = "Transmit";
NUN_CHATCHECKBOX_LABEL = "Only send Scroll Box Text";
NUN_TRANSMISSION_PREFIX1 = "NotesUNeed NOTE TRANSMISSION FROM : ";
NUN_TRANSMISSION_PREFIX2 = "NotesUNeed NOTE BEGINS : ";
NUN_TRANSMISSION_POSTFIX = "NotesUNeed NOTE ENDS   : ";


NUN_TRANSMISSION_ERROR = "Error Occurred constructing NotesUNeed message for Transmission : ";
NUN_TRANSMISSION_MISSING = "Note not Found !";
NUN_COLOUR_ERROR_REPORT = "Malformed Colour Codes in Body of Scroll Text : Sending via Chat would probably result in Disconnect From Server !";
NUN_NONCRITICAL_ERROR = "Non-critical Error(s) occurred. See transmission log in Note : ";
NUN_LINEERROR_TEXT = "Line in Error ";

NUN_CONFLICT_LABEL1 = "Saving this Note at Account Level will replace";
NUN_CONFLICT_LABEL2 = "  Server Level Notes on the following Realms :";


NUN_FRAME_SCALE_TXT = "Frames";
NUN_FONT_SCALE_TXT = "Tooltips";
NUN_MAPNOTES_TXT = "MapNote";
NUN_NOMAPNOTES = "|cffff0000MapNotes AddOn  NOT  Present|r";

NUN_REWARDS = "Quest Rewards : ";
NUN_CHOICES = "Choose From : ";
NUN_CREATED = "CREATED";
NUN_COMPLETE = "COMPLETED";
NUN_FINISHED = "HANDED IN";
NUN_QUEST = "Quest : ";

NUN_DUPLICATE = "A NotesUNeed Note Already\nExists with that Name";
NUN_TEXTLIM1 = "NotesUNeed Text Limit of ";
NUN_TEXTLIM2 = " Exceeded\nSome text may not be saved.\n";


NUN_TTLENGTH_TEXTBOX_LABEL = "Enter the maximum number of characters to appear in Tooltips : ";
NUN_DEFAULTLEVEL_CHECKBOX_LABEL = "Save General Notes at Account Level by Default";
NUN_SHOWHELPTT_CHECKBOX_LABEL = "Show NotesUNeed Tooltips";
NUN_MINOVERTT_CHECKBOX_LABEL = "Minimise MouseOver Target Tooltips";
NUN_AUTONOTE_CHECKBOX_LABEL = "Auto-maintain a note for current character";
NUN_QUESTNOTE_CHECKBOX_LABEL = "Auto-maintain notes on Quest Log entries & History";
NUN_AUTOPARTY_CHECKBOX_LABEL = "Auto-maintain notes on Party Members";
NUN_BEHAVE_CHECKBOX_LABEL = "Alternative Note Edit Frame Behaviour";
NUN_TTTOTAL_LABEL = "Total";
NUN_TTLINEL_LABEL = "~ Per Line";
NUN_AUTOMAP_CHECKBOX_LABEL = "Auto-MapNote NPCs";

NUN_QUESTS_TEXT = "Quests";
NUN_STAGE_TEXT = "Quest Stage ";
NUN_QUEST_GIVER = "Quest Giver";

BINDING_HEADER_NUN = "NotesUNeed";
BINDING_NAME_NUN_OPTIONS = "Toggle NotesUNeed Options";
BINDING_NAME_NUN_TARGET = "Create Note from Target Without Opening Note";
BINDING_NAME_NUN_MICRO = "Toggle NotesUNeed MicroButtons";
BINDING_NAME_NUN_LAST = "Re-Open Last Note";

NUN_AUTONOTED = " : Noted by NotesUNeed";

NUN_COMPLETED = " completed.";



-- WoW Tooltip Text Search Patterns : Care should be taken to ensure that Translation of the following words
--   is equivalent to the words used in-game by WoW. For example there may be several translations for the
--   word "Damage", but the word required is the one that appears in Tooltips to indicate the amount of damage
--   that a weapon does. Or a given translation might not use the plural for "Legs", but equal "Leg" instead.
--   These words are used to search the WoW in-game tooltip text and must be based on the
--   words Blizzard uses in that translation. Therefore correct translations MUST be taken from the tooltip
--   text that appears when hovering over the corresponding slots in the character sheet, or over weapons/armour.

NUN_HEAD = "Head";
NUN_NECK = "Neck";
NUN_SHOULDER = "Shoulder";
NUN_SHIRT = "Shirt";
NUN_CHEST = "Chest";
NUN_WAIST = "Waist";
NUN_LEGS = "Legs";
NUN_FEET = "Feet";
NUN_WRIST = "Wrist";
NUN_HANDS = "Hands";			-- The text for the Hands Character Slot i.e. what gloves they are wearing
NUN_FINGER = "Finger";
NUN_TRINKET = "Trinket";
NUN_BACK = "Back";
NUN_HAND = "Hand";			-- The text associated with the equipped weapon and shield slots
NUN_HAND2 = "~~~~~";			-- Only used in German Localisation; Never want to find this string in English Version
NUN_GUN = "Gun";
NUN_BOW_U = "Bow";
NUN_BOW_L = "bow";
NUN_WAND = "Wand";
NUN_THROWN = "Thrown";
NUN_RANGED = "Ranged";
NUN_TABARD = "Tabard";
NUN_DAMAGE = "Damage";



NUN_SLOWSERVER = "Slow Server Response Retrieving Quest Text. Please try again. ";
NUN_NOROOM = "No Room to store entire transmission log";

NUN_LEVEL = "Level";
NUN_PROF = "Profession";
NUN_CONTACT_TXT = "Contact Note";
NUN_GENERAL_TXT = "General Note";

NUN_LIMITED = "(Limited Availibility)";

NUN_PARTIED_WITH = "Parties :";

NUN_LINKFAILURE = "Unknown Note Type : Can not process HyperLinks";
NUN_NOLINKS = "No HyperLinks detected in Note";

NUN_POPUP_TITLE = "NotesUNeed";
NUN_MERGING = "Merging...";

NUN_LOADED = "Loaded";
NUN_MAX_MERGED = "Maximum of 5 Notes Merged Already";

NUN_MAPNOTESVERSION_WARNING = "CAUTION : NotesUNeed has  NOT  been Tested with the Installed Version of MapNotes. (See NotesUNeed Readme.txt for Approved Versions)";

NUN_RUN = "Run Script";		-- ??
```

## NotesUNeed.lua
```lua



-- Saved Data

NuNData = {};
NuNSettings = {};




-- Arrays

local dfltHeadings = NUN_DFLTHEADINGS;
local HRaces = NUN_HRACES;
local ARaces = NUN_ARACES;
local AllClasses = NUN_ALLCLASSES;
local HClasses = NUN_HCLASSES;
local AClasses = NUN_ACLASSES;
local HRanks = NUN_HRANKS;
local ARanks = NUN_ARANKS;
local Professions = NUN_PROFESSIONS;
local Sexes = NUN_SEXES;
local searchFor = NUN_SEARCHFOR;
local transmitTo = NUN_TRANSMITTO;
local invSlotList = NUN_INVENTORY_SLOT_LIST;
local noteTypes = NUN_NOTETYPES;

local Races = {};
local Ranks = {};
local Classes = {};

local foundNuN = {};
local c_continents = {};
local foundHNuN = {};
local foundANuN = {};
local foundNNuN = {};
local NuNQuestLog = {};

local NuN_Filtered = {};

local NuN_MapNotesValidVersions = {
	"1800.7",
};
local NuN_MapNotesPlayedVersions = {};

local NuN_LastOpen = {};



-- Local Variables

local bttnChanges = {};
local uBttns = getn(dfltHeadings);
local detlOffset = uBttns;
local hdngOffset = (uBttns * 2);
local pHead = "~Hdng";
local pDetl = "~Detl";
local discard;
local c_name;
local prevName;
local c_class;
local c_race;
local c_guild;
local c_route;
local c_text;
local c_text_len;
local g_text;
local g_text_len;
local txtTxt = "txt";
local pName;
local pKey;
local pFaction;
local hdNbr;
local nameHdNbr;
local nameDtNbr;
local oriTxt;
local isTitle;
local bttnNumb;
local lastDD;
local switch;
local parm1;
local Notes = "notes~";
local itmIndex = "ItmIndex~";
local mrgIndex = "merged~";
local c_note;
local c_type;
local prevNote;
local tryI;
local lastBttn;
local lastBttnIndex;
local deletedE;
local visibles;
local lastVisible;
local lastBttnDetl;
local NuN_importing;
local updateInterval = 10;
local popUpUpdateInterval = 1;
local timeSinceLastUpdate = 0;
local popUpTimeSinceLastUpdate = 0;
local NuNRaceDropDown;
local NuNClassDropDown;
local NuNCRankDropDown;
local NuNHRankDropDown;
local unitTest;
local NuN_rType;
local ttName;
local gtName;
local NuN_Fade = "False";
local NuN_TT_Y_Offset = 0;
local NUN_TT_LEN = 80;
local NuN_GNote_OriTitle = nil;
local prevLink;
local NuN_PinUpHeader = false;
local lastPinned;
local pinnedTTMoved = true;
local typeIndex;
local NuN_Fingers;
local NuN_Trinkets;
local NuN_Hand;
local sendTo;
local msgSeq = 0;
local NuNSearchTitle = NUN_SEARCH;
local NuN_Parties = "parties~";
local NuN_MouseOver = false;
local NuN_QuestsUpdating = "False";
local oneDone = false;
local NuN_AtStartup = "True";
local popUpHide = true;
local NuN_IgnoreNextQUpdate = nil;
local qTriggs = 0;
local noTipAnchor = nil;
local inBG = false;
local NuN_FirstTime = true;
local NuN_QuestAccepted = nil;




-- Local Function Hooks

local NuNOri_FriendsFrameFriendButton_OnClick;
local NuNOri_FriendsFrameIgnoreButton_OnClick;
local NuNOri_FriendsFrameGuildPlayerStatusButton_OnClick;
local NuNOri_FriendsFrameGuildStatusButton_OnClick;
local NuNOri_FriendsFrameWhoButton_OnClick;

local NuNOri_FriendsList_Update;
local NuNOri_IgnoreList_Update;
local NuNOri_GuildStatus_Update;
local NuNOri_WhoList_Update;
local NuNOri_ContainerFrameItemButton_OnClick;
local NuNOri_SetItemRef;
local NuNOri_PaperDollItemSlotButton_OnClick;
local NuNOri_QuestLog_Update;
local NuNOri_QuestLogRewardItem_OnClick;
local NuNOri_QuestItem_OnClick;
local NuNOri_QuestRewardItem_OnClick;
local NuNOri_AbandonQuest;
local NuNOri_QuestDetailAcceptButton_OnClick;
local NuNOri_QuestRewardCompleteButton_OnClick;

-- Hook the MapNotes Function
local NuNOri_MapNotes_OnEnter;
local NuNOri_MapNotes_OnLeave;
local NuNOri_MapNotes_DeleteNote;
local NuNOri_MetaMapNotes_OnEnter;
local NuNOri_MetaMapNotes_OnLeave;
local NuNOri_MetaMapNotes_DeleteNote;
local NuN_GetZoneTableSize;



-- Constants

NUN_VERSION = "3.21";
NUN_MAX_PARTY_MEMBERS = 4;
NUN_AUTO_C = "A";
NUN_SELF_C = "S";
NUN_MANU_C = "M";
NUN_HORD_C = "H";
NUN_ALLI_C = "A";
NUN_NOTE_C = "N";
NUN_QUEST_C = "Q";
NUN_PARTY_C = "P";
NUN_MAX_ADD_TXT = 4;
NUN_MAX_TXT_CHR = 1012;
NUN_MAX_TXT_LIM = (NUN_MAX_ADD_TXT + 1) * NUN_MAX_TXT_CHR;
NUN_MAX_TXT_C = tostring(NUN_MAX_TXT_LIM);
NUN_MAX_TXT_BUF = NUN_MAX_TXT_LIM - 225;
NUN_SEP = " ";
NUN_OFF = "Offline";
NUN_TT_HDNG = "tooltip";
NUN_TT_MAX = 1012;
NUN_TT_KEYPHRASE = "TT::";
NUN_TT_END = "::";
NUN_TT_LINES_TRIGGER = 6;
NUN_TT_Y_SHIFT = 12;
NUN_TT_KEYPHRASE_LEN = string.len(NUN_TT_KEYPHRASE);
NUN_TT_ETC = " .....";
NUN_TXT_LABEL = "0 / "..NUN_MAX_TXT_LIM;
NUN_SPEED = "Speed";
NUN_GOLD = "|cffffB300|h";
NUN_GREEN = "|cff00ee00|h";
NUN_WHITE = "|cffffffff|h";
NUN_C_END = "|h|r";
NUN_PINNED_TT_PADDING = "           ";
NUN_PLACE_HOLDER = "<Place Holder>";
NUN_CHAT_LIMIT = 180;
NUN_FRAMESCALE_MIN = 0.75;
NUN_FRAMESCALE_MAX = 1.75;
NUN_FRAMESCALE_STEP = 0.01;
NUN_TT_FONTSCALE_MIN = 0.90;
NUN_TT_FONTSCALE_MAX = 2.00;
NUN_FONTSCALE_STEP = 0.01;
NUN_TT_MAPFONTSCALE_MIN = 0.25;
NUN_TT_MAPFONTSCALE_MAX = 1.75;
NUN_MAPFONTSCALE_STEP = 0.01;
NUN_FRAMESCALE_MIN_TXT = tostring( NUN_FRAMESCALE_MIN * 100 ) .. "%";
NUN_FRAMESCALE_MAX_TXT = tostring( NUN_FRAMESCALE_MAX * 100 ) .. "%";
NUN_TT_FONTSCALE_MIN_TXT = tostring ( NUN_TT_FONTSCALE_MIN * 100 ) .. "%";
NUN_TT_FONTSCALE_MAX_TXT = tostring ( NUN_TT_FONTSCALE_MAX * 100 ) .. "%";
NUN_TT_MAPFONTSCALE_MIN_TXT = tostring ( NUN_TT_MAPFONTSCALE_MIN * 100 ) .. "%";
NUN_TT_MAPFONTSCALE_MAX_TXT = tostring ( NUN_TT_MAPFONTSCALE_MAX * 100 ) .. "%";
NUN_REPLACEQNAME_TXT = "$N";
NUN_REPLACEQCLASS_TXT = "$C";





-- MapNotes Version Warning

StaticPopupDialogs["NUN_MAPNOTES_VERSION_ALERT"] = {
	text = TEXT(NUN_MAPNOTESVERSION_WARNING),
	button1 = TEXT(OKAY),
	showAlert = 1,
	timeout = 0,
};

-- NotesUNeed Note Limit Exceeded

StaticPopupDialogs["NUN_NOTELIMIT_EXCEEDED"] = {
	text = TEXT(NUN_TEXTLIM1..NUN_MAX_TXT_LIM..NUN_TEXTLIM2),
	button1 = TEXT(OKAY),
	showAlert = 1,
	timeout = 0,
};








-- Mod Functions


function NuN_OnLoad()
	local continentID, zoneID, continent, zone;
	local c_zones = {};

	NuNOri_FriendsFrameFriendButton_OnClick = FriendsFrameFriendButton_OnClick;
	FriendsFrameFriendButton_OnClick = NuNNew_FriendsFrameFriendButton_OnClick;
	NuNOri_FriendsFrameIgnoreButton_OnClick = FriendsFrameIgnoreButton_OnClick;
	FriendsFrameIgnoreButton_OnClick = NuNNew_FriendsFrameIgnoreButton_OnClick;
	NuNOri_FriendsFrameGuildPlayerStatusButton_OnClick = FriendsFrameGuildPlayerStatusButton_OnClick;
	FriendsFrameGuildPlayerStatusButton_OnClick = NuNNew_FriendsFrameGuildPlayerStatusButton_OnClick;
	NuNOri_FriendsFrameGuildStatusButton_OnClick = FriendsFrameGuildStatusButton_OnClick;
	FriendsFrameGuildStatusButton_OnClick = NuNNew_FriendsFrameGuildStatusButton_OnClick;
	NuNOri_FriendsFrameWhoButton_OnClick = FriendsFrameWhoButton_OnClick;
	FriendsFrameWhoButton_OnClick = NuNNew_FriendsFrameWhoButton_OnClick;

	NuNOri_FriendsList_Update = FriendsList_Update;
	FriendsList_Update = NuNNew_FriendsList_Update;
	NuNOri_IgnoreList_Update = IgnoreList_Update;
	IgnoreList_Update = NuNNew_IgnoreList_Update;
	NuNOri_GuildStatus_Update = GuildStatus_Update;
	GuildStatus_Update = NuNNew_GuildStatus_Update;
	NuNOri_WhoList_Update = WhoList_Update;
	WhoList_Update = NuNNew_WhoList_Update;
	NuNOri_ContainerFrameItemButton_OnClick = ContainerFrameItemButton_OnClick;
	ContainerFrameItemButton_OnClick = NuNNew_ContainerFrameItemButton_OnClick;
	NuNOri_SetItemRef = SetItemRef;
	SetItemRef = NuNNew_SetItemRef;
	NuNOri_PaperDollItemSlotButton_OnClick = PaperDollItemSlotButton_OnClick;
	PaperDollItemSlotButton_OnClick = NuNNew_PaperDollItemSlotButton_OnClick;
	NuNOri_QuestLog_Update = QuestLog_Update;
	QuestLog_Update = NuNNew_QuestLog_Update;
	NuNOri_QuestLogRewardItem_OnClick = QuestLogRewardItem_OnClick;
	QuestLogRewardItem_OnClick = NuNNew_QuestLogRewardItem_OnClick;
	NuNOri_QuestItem_OnClick = QuestItem_OnClick;
	QuestItem_OnClick = NuNNew_QuestItem_OnClick;
	NuNOri_QuestRewardItem_OnClick = QuestRewardItem_OnClick;
	QuestRewardItem_OnClick = NuNNew_QuestRewardItem_OnClick;
	NuNOri_AbandonQuest = AbandonQuest;
	AbandonQuest = NuNNew_AbandonQuest;
	NuNOri_QuestDetailAcceptButton_OnClick = QuestDetailAcceptButton_OnClick;
	QuestDetailAcceptButton_OnClick = NuNNew_QuestDetailAcceptButton_OnClick;
	NuNOri_QuestRewardCompleteButton_OnClick = QuestRewardCompleteButton_OnClick;
	QuestRewardCompleteButton_OnClick = NuNNew_QuestRewardCompleteButton_OnClick;

	this:RegisterEvent("IGNORELIST_UPDATE");
	this:RegisterEvent("FRIENDLIST_UPDATE");
	this:RegisterEvent("PLAYER_ENTERING_WORLD");
	this:RegisterEvent("PLAYER_LEVEL_UP");
	this:RegisterEvent("QUEST_LOG_UPDATE");
	this:RegisterEvent("UPDATE_FACTION");
	this:RegisterEvent("UNIT_QUEST_LOG_CHANGED");
	this:RegisterEvent("QUEST_PROGRESS");
	this:RegisterEvent("QUEST_COMPLETE");
	this:RegisterEvent("QUEST_FINISHED");
	this:RegisterEvent("QUEST_ITEM_UPDATE");
	this:RegisterEvent("CHAT_MSG_SYSTEM");
	this:RegisterEvent("PARTY_MEMBERS_CHANGED");
	this:RegisterEvent("RAID_ROSTER_UPDATE");
	this:RegisterEvent("VARIABLES_LOADED");

	SlashCmdList["NOTEUN"] = function(pList)
		local gap = string.find(pList, NUN_SEP);
		if ( gap ) then
			switch = string.sub(pList, 1, (gap - 1));
			parm1 = string.sub(pList, (gap + 1));
		else
			switch = pList;
			parm1 = nil;
		end
		NuN_CmdLine(switch, parm1, pList);
	end
	SLASH_NOTEUN1 = "/nun";

	tryI = true;
	pName = UnitName("player");

	NuN_InitialiseSavedVariables();

	ClearButtonChanges();

	c_continents[1] = {};
	c_continents[2] = {};
	for continentID, continent in ipairs{GetMapContinents()} do
		c_zones = {};
		c_continents[continentID].name = continent;
		for zoneID, zone in ipairs{GetMapZones(continentID)} do
			c_zones[zoneID] = zone;
		end
		c_continents[continentID].zones = c_zones;
	end
end



function NuN_CmdLine(option, parm1, pList)
	local index;
	local value;
	local initial;
	local remainder;
	local contactName;
	local switch;
	local theUnitID = "target";

	if ( ( option == "" ) or ( option == nil ) ) then
		NuN_Options();
	else
		switch = string.lower(option);
		if ( switch == "-h" ) then
			DEFAULT_CHAT_FRAME:AddMessage(NUN_HELP_TEXT);
			index = 0;
			value = getglobal("NUN_HELP_TEXT"..index);
			while( value ) do
				DEFAULT_CHAT_FRAME:AddMessage(value);
				index = index + 1;
				value = getglobal("NUN_HELP_TEXT"..index);
			end
			DEFAULT_CHAT_FRAME:AddMessage(NUN_HELP_TEXT);
		elseif ( switch == NUN_HTT ) then
			NuN_ToggleToolTips();
		elseif  ( ( switch == "-ca" ) or ( switch == "-ch" ) ) then
			initial = string.upper( string.sub(parm1, 1, 1) );
			remainder = string.lower( string.sub(parm1,2) );
			contactName = initial..remainder;
			if ( NuNData[pKey][contactName] ) then
				if ( NuNFrame:IsVisible() ) then
					NuN_HideFrame();
				end
				NuN_ShowSavedNote(contactName);
			else
				NuN_CreateContact(contactName, switch);
			end
		elseif ( switch == "-a" ) then
			NuN_DisplayAll();
		elseif ( switch == "-micro" ) then
			NuN_ToggleMicroButtons();
		elseif ( switch == "-g" ) then
			if ( ( parm1 ~= nil ) and ( parm1 ~= "") ) then
				NuN_GNoteExists(parm1);
				NuNGNoteFrame.fromQuest = nil;
				if ( c_note ) then
					NuN_ShowSavedGNote();
				else
					c_note = parm1;
					c_type = NuNGet_CommandID(noteTypes, "   ");
					NuN_ShowTitledGNote("");
				end
			else
				NuN_ShowNewGNote();
			end
		elseif ( switch == "-t" ) then
			NuN_FromTarget(false);
		elseif ( ( switch == "->de" ) or ( switch == "->en" ) ) then
			NuN_LangPatch(switch);
		else
			initial = string.upper( string.sub(switch, 1, 1) );
			remainder = string.lower( string.sub(switch,2) );
			contactName = initial..remainder;
			if ( NuNData[pKey][contactName] ) then
				if ( NuNFrame:IsVisible() ) then
					NuN_HideFrame();
				end
				NuN_ShowSavedNote(contactName);
			elseif ( NuN_GNoteExists(pList) ) then
				NuNGNoteFrame.fromQuest = nil;
				NuN_ShowSavedGNote();
			else
				c_name = contactName;
				unitTest = true;
				theUnitID = NuN_Target();
				if ( theUnitID ~= nil ) then
					NuN_NewContact(theUnitID);
				else
					NuN_Options();
				end
			end
		end
	end
end


function NuN_FromTarget(autoHide)
	local tstValue = NuN_CheckTarget();
	local theUnitID = "target";
	local npcText;

	if ( IsAltKeyDown() ) then
		NuN_LastOpen.type = "Contact";
		NuN_ReOpen();
		return;
	end

	if ( IsShiftKeyDown() ) then
		autoHide = true;
	end

	if ( tstValue == "N" ) then
		NuNGNoteFrame.fromQuest = nil;
		if ( ( NuNData[pKey][Notes][c_note] ) or ( NuNData[Notes][c_note] ) ) then
			if ( autoHide ~= true ) then
				NuN_ShowSavedGNote();
			end
		else
			npcText = NuN_NPCInfo();
			c_type = NuNGet_CommandID(noteTypes, "NPC");
			NuN_ShowTitledGNote(npcText);
			if ( autoHide == true ) then
				NuNGNote_WriteNote();
				if ( not NuN_ConfirmFrame:IsVisible() ) then
					HideUIPanel(NuNGNoteFrame);
					NuN_Message(c_note..NUN_AUTONOTED);
				end
			end
		end
	else
		if ( NuNData[pKey][c_name] ) then
			if ( autoHide ~= true ) then
				NuN_ShowSavedNote(c_name);
			end
		else
			NuN_NewContact(theUnitID);
			if ( autoHide == true ) then
				NuN_WriteNote();
				HideUIPanel(NuNFrame);
				NuN_Message(c_name..NUN_AUTONOTED);
			end
		end
	end
end


function NuN_CheckTarget()
	local chkName = UnitName("target");

	if ( ( ( UnitPlayerControlled("target") )  and (not UnitIsUnit("player", "target") ) ) or ( UnitInParty("target") ) or ( UnitInRaid("target") ) )then
		c_name = chkName;
		return "F";
	elseif ( ( not UnitPlayerControlled("target") ) and ( chkName ) ) then
		c_note = chkName;
		return "N";
	else
		c_name = pName;
		return "S";
	end
end



function NuN_DisplayAll()
	if ( NuNSearchFrame:IsVisible() ) then
		NuNSearchFrame:Hide();
	else
		NuNSearchFrameBackButton:Disable();
		NuNSearchFrame.backEnabled = nil;
		ddSearch = NuNGet_CommandID(searchFor, "All");
		searchType = searchFor[ddSearch].Command;
		NuNOptions_Search();
	end
end



function NuN_Options()
	if ( NuNOptionsFrame:IsVisible() ) then
		HideUIPanel(NuNOptionsFrame);
	else
		if ( ( MapNotes_OnLoad ) or ( MetaMapNotes_OnLoad ) ) then
			NuN_AutoMapCheckBox:Enable();
			if ( NuNSettings[pKey].autoMapNotes ) then
				NuN_AutoMapCheckBox:SetChecked(1);
			else
				NuN_AutoMapCheckBox:SetChecked(0);
			end
		else
			NuN_AutoMapCheckBox:SetChecked(0);
			NuN_AutoMapCheckBoxLabel:SetText(NUN_NOMAPNOTES);
			NuN_AutoMapCheckBox:Disable();
		end
		if ( NuNFrame:IsVisible() ) then
			NuN_HideFrame();
		end
		if ( NuNSearchFrame:IsVisible() ) then
			HideUIPanel(NuNSearchFrame);
		end
		if ( NuNGNoteFrame:IsVisible() ) then
			HideUIPanel(NuNGNoteFrame);
		end
		UIDropDownMenu_SetSelectedID(NuNOptionsSearchDropDown, 1);
		UIDropDownMenu_SetText(searchFor[1].Display, NuNOptionsSearchDropDown);
		ddSearch = NuNGet_CommandID(searchFor, "All");
		if ( NuNSettings[pKey].autoG ) then
			NuNOptionsGuildCheckButton:SetChecked(1);
		else
			NuNOptionsGuildCheckButton:SetChecked(0);
		end
		if ( NuNSettings[pKey].autoA ) then
			NuNOptionsAddCheckButton:SetChecked(1);
		else
			NuNOptionsAddCheckButton:SetChecked(0);
		end
		if ( NuNSettings[pKey].autoD ) then
			NuNOptionsDeleteCheckButton:SetChecked(1);
		else
			NuNOptionsDeleteCheckButton:SetChecked(0);
		end
		if ( NuNSettings[pKey].autoQ ) then
			NuN_AutoQuestCheckBox:SetChecked(1);
		else
			NuN_AutoQuestCheckBox:SetChecked(0);
		end
		if ( NuNSettings[pKey].autoN ) then
			NuN_AutoNoteCheckBox:SetChecked(1);
		else
			NuN_AutoNoteCheckBox:SetChecked(0);
		end
		if ( NuNSettings[pKey].dLevel ) then
			NuN_DefaultLevelCheckBox:SetChecked(1);
		else
			NuN_DefaultLevelCheckBox:SetChecked(0);
		end
		if ( NuNSettings[pKey].toolTips ) then
			NuN_HelpTTCheckBox:SetChecked(1);
		else
			NuN_HelpTTCheckBox:SetChecked(0);
		end
		if ( NuNSettings[pKey].autoP ) then
			NuN_AutoPartyCheckBox:SetChecked(1);
		else
			NuN_AutoPartyCheckBox:SetChecked(0);
		end
		if ( NuNSettings[pKey].minOver ) then
			NuN_OverTTCheckBox:SetChecked(1);
		else
			NuN_OverTTCheckBox:SetChecked(0);
		end
		if ( NuNSettings[pKey].bHave ) then
			NuN_BehaveCheckBox:SetChecked(1);
		else
			NuN_BehaveCheckBox:SetChecked(0);
		end
		NuNOptionsTTLengthTextBox:SetText( NuNSettings[pKey].ttLen );
		NuNOptionsTTLineLengthTextBox:SetText( NuNSettings[pKey].ttLLen );
		NuNSearchFrameBackButton:Enable();
		NuNSearchFrame.backEnabled = true;
		NuNOptionsFrame:SetScale(NuNSettings[pKey].pScale);
		ShowUIPanel(NuNOptionsFrame);
	end
end



function ClearButtonChanges()
	for i = 1, (uBttns * 2), 1 do
		bttnChanges[i] = "";
	end
end


function NuN_ShowSavedNote(cName)
	c_name = cName;
	c_class = nil;
	c_race = nil;
	c_guild = nil;
	gRank = nil;
	gRankIndex = nil;
	gNote = nil;
	gOfficerNote = nil;
	c_route = "Saved";
	if ( NuNData[pKey][c_name].faction == "Horde" ) then
		NuN_HordeSetup();
	else
		NuN_AllianceSetup();
	end
	NuN_ShowNote();
end



function NuN_ShowWhoNote(cName)
	c_name = cName;
	c_class = nil;
	c_race = nil;
	c_guild = nil;
	gRank = nil;
	gRankIndex = nil;
	gNote = nil;
	gOfficerNote = nil;
	c_route = "Who";
	if ( horde ) then
		NuN_HordeSetup();
	else
		NuN_AllianceSetup();
	end
	NuN_ShowNote();
end



function NuN_ShowNote()
	local hText;
	local theText;

	if ( ( NuNFrame:IsVisible() ) and ( prevName == c_name ) ) then
		NuNFrame:Hide();
	else
		prevName = c_name;

		if ( NuNOptionsFrame:IsVisible() ) then
			HideUIPanel(NuNOptionsFrame);
		end

		lastDD = nil;
		NuNButtonClrDD:Disable();

		ClearButtonChanges();

		NuNHeader:SetText(c_name);

		if ( NuNData[pKey][c_name] ) then
			c_text = NuN_GetCText(c_name);
			if ( ( c_text == nil ) or ( c_text == "" ) ) then
				c_text = "\n";
			end
			NuNText:SetText( c_text );
			NuNButtonDelete:Enable();
			NuNCOpenChatButton:Enable();
			NuNCTTCheckBoxLabel:Show();
			NuN_CTTCheckBox:Show();
			NuN_CTTCheckBox:SetChecked(0);
			if ( NuN_PinnedTooltip.type == "Contact" ) then
				NuN_CTTCheckBox:SetChecked( NuN_CheckPinnedBox(c_name) );
			end
			if ( c_name == pName ) then
				NuNHeader:SetText(NUN_PLAYER.." : "..c_name);
			elseif ( NuNData[pKey][c_name].type == NUN_AUTO_C ) then
				NuNHeader:SetText(NUN_AUTO.." : "..c_name);
			elseif ( NuNData[pKey][c_name].type == NUN_MANU_C ) then
				NuNHeader:SetText(NUN_MANU.." : "..c_name);
			elseif ( NuNData[pKey][c_name].type == NUN_PARTY_C ) then
				NuNHeader:SetText(NUN_PARTY.." : "..c_name );
			elseif ( NuNData[pKey][c_name].type == NUN_SELF_C ) then
				NuNHeader:SetText(NUN_SELF.." : "..c_name);
			else
				NuNHeader:SetText(c_name);
			end
		else
			theText = "";
			NuNHeader:SetText(NUN_NEW.." : "..c_name);
			if ( gNote ~= nil ) then
				theText = "\n"..gNote;
			end
			if ( gOfficerNote ~= nil ) then
				theText = theText.."\n"..gOfficerNote;
			end
			if ( theText == "" ) then
				theText = "\n";
			end
			NuNText:SetText(theText);
			NuNButtonDelete:Disable();
			NuNCOpenChatButton:Disable();
			NuNCTTCheckBoxLabel:Hide();
			NuN_CTTCheckBox:Hide();
		end

		UserButtons_Initialise();
		DropDowns_Initialise();

		ddRace = nil;
		ddClass = nil;
		ddSex = nil;
		ddProf1 = nil;
		ddProf2 = nil;
		ddCRank = nil;
		ddHRank = nil;

		if ( NuNEditDetailsFrame:IsVisible() ) then
			HideUIPanel(NuNEditDetailsFrame);
		end
		if ( NuNcDeleteFrame:IsVisible() ) then
			HideUIPanel(NuNcDeleteFrame);
		end

		if ( ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name][pName] ) and ( NuNData[pKey][c_name][pName].partied ) ) then
			NuNPartiedLabel:Show();
			NuNPartiedNumberLabel:SetText("(x"..tostring(NuNData[pKey][c_name][pName].partied)..")");
			NuNPartiedNumberLabel:Show();
			NuNFramePartyDownButton:Show();
		else
			NuNPartiedLabel:Hide();
			NuNPartiedNumberLabel:SetText("(0)");
			NuNPartiedNumberLabel:Hide();
			NuNFramePartyDownButton:Hide();
		end

		NuNFrame:SetScale(NuNSettings[pKey].pScale);
		ShowUIPanel(NuNFrame);
		if ( not NuNSettings[pKey].bHave ) then
			NuNText:SetFocus();
		else
			NuNText:ClearFocus();
		end
	end
end




function NuN_Update_Ignored()
	local index;
	local value;
	local x;
	local iName;

	if ( pFaction ~= nil ) then
		-- Check every Ignored player to make sure we have a Saved note

		if ( NuNSettings[pKey].autoA ) then
			for i = 1, GetNumIgnores(), 1 do
				iName = GetIgnoreName(i);
				if ( ( iName ~= nil ) and ( not NuNData[pKey][iName] ) ) then
					NuNData[pKey][iName] = {};
					NuNData[pKey][iName].type = NUN_AUTO_C;
					NuNData[pKey][iName].faction = pFaction;
					NuNData[pKey][iName][txtTxt] = NUN_AUTO_IGNORE..NuN_GetDateStamp();
					NuNData[pKey][iName].ignoreLst = {};
					NuNData[pKey][iName].ignoreLst[1] = pName;
				end
			end
		end



		-- Check every Saved entry to see if it is ignored, and upated Saved inofrmation on that basis

		for index, value in NuNData[pKey] do
			if ( ( NuNData[pKey][index].faction) and ( NuNData[pKey][index].faction == pFaction ) and ( index ~= pName ) ) then
				if ( NuN_Is_Ignored(index) ) then
					if ( not NuNData[pKey][index].ignoreLst ) then		-- Ignored but no ignore list currently
						x = 1;
						NuNData[pKey][index].ignoreLst = {};
						NuNData[pKey][index].ignoreLst[x] = pName;
					else								-- Ignored but not on ignore list yet
						if (not NuNGet_TableID(NuNData[pKey][index].ignoreLst, pName) ) then
						x = getn( NuNData[pKey][index].ignoreLst ) + 1;
							NuNData[pKey][index].ignoreLst[x] = pName;
						end
					end
				else
					if ( NuNData[pKey][index].ignoreLst ) then
						x = NuNGet_TableID(NuNData[pKey][index].ignoreLst, pName);
						if ( x ~= nil ) then					-- Not ignored, but on ignore list > come off list
						    local tmpTable = Remove_Entry(NuNData[pKey][index].ignoreLst, x);
						    NuNData[pKey][index].ignoreLst = tmpTable;
						    if ( getn(NuNData[pKey][index].ignoreLst) == 0 ) then
						    	-- If no more ignore list, and auto-deleting, and Auto-note, then delete note entirely
							if ((NuNData[pKey][index].type == NUN_AUTO_C) and (NuNSettings[pKey].autoD) and (not NuNData[pKey][index].friendLst)) then
							    NuNData[pKey][index] = nil;
							else
							    NuNData[pKey][index].ignoreLst = nil;
							end
						    end
						elseif ( getn(NuNData[pKey][index].ignoreLst) > 0 ) then

							-- If (Not Ignored) & (There is an Ignore List we are NOT On) & (Settings say we should try to Ignore)
							--  & (Only 1 attempt per 'log on'  OR  Manual refresh ) then....

							if ( ( tryI == true ) and ( NuN_NotInfiniteIgored(index) ) ) then
								if ( AddIgnore(index) ) then
									x = getn(NuNData[pKey][index].ignoreLst) + 1;
									NuNData[pKey][index].ignoreLst[x] = pName;
								end
							end
						end
					end
				end
			end
		end
	tryI = false;
	end
end



function NuN_Update_Friends()
	local index;
	local value;
	local x;
	local iName;

	if ( pFaction ~= nil ) then
		if ( NuNSettings[pKey].autoA ) then
			for i = 1, GetNumFriends(), 1 do
				iName = GetFriendInfo(i);
				if ( ( iName ~= nil ) and ( not NuNData[pKey][iName] ) ) then
					NuNData[pKey][iName] = {};
					NuNData[pKey][iName].type = NUN_AUTO_C;
					NuNData[pKey][iName].faction = pFaction;
					NuNData[pKey][iName][txtTxt] = NUN_AUTO_FRIEND..NuN_GetDateStamp();
					NuNData[pKey][iName].friendLst = {};
					NuNData[pKey][iName].friendLst[1] = pName;
				end
			end
		end

		-- Check every Saved entry to see if it is friendly, and upated Saved information on that basis

		for index, value in NuNData[pKey] do
			if  ( index == pName ) then
				NuNData[pKey][index].type = NUN_SELF_C;
			elseif ( ( NuNData[pKey][index].faction ) and ( NuNData[pKey][index].faction == pFaction ) ) then
				if ( NuN_Is_Friendly(index) ) then
					if ( not NuNData[pKey][index].friendLst ) then
						x = 1;
						NuNData[pKey][index].friendLst = {};
						NuNData[pKey][index].friendLst[x] = pName;
					else
						if (not NuNGet_TableID(NuNData[pKey][index].friendLst, pName) ) then
							x = getn( NuNData[pKey][index].friendLst ) + 1;
							NuNData[pKey][index].friendLst[x] = pName;
						end
					end
				else
					if ( NuNData[pKey][index].friendLst ) then
						x = NuNGet_TableID(NuNData[pKey][index].friendLst, pName);
						if ( x ~= nil ) then
						    local tmpTable = Remove_Entry(NuNData[pKey][index].friendLst, x);
						    NuNData[pKey][index].friendLst = tmpTable;
						    if ( getn(NuNData[pKey][index].friendLst) == 0 ) then
							if ((NuNData[pKey][index].type == NUN_AUTO_C) and (NuNSettings[pKey].autoD) and (not NuNData[pKey][index].ignoreLst)) then
								NuNData[pKey][index] = nil;
							else
								NuNData[pKey][index].friendLst = nil;
							end
						    end
						end
					end
				end
			end
		end

	end
end



function Remove_Entry(table, entry)
	local sorted = {};
	local innerI = 0;
	for i = 1, getn(table), 1 do
		if ( i ~= entry ) then
			innerI = innerI + 1;
			sorted[innerI] = table[i];
		end
	end
	return sorted;
end

function NuN_Is_Ignored(aName)
	for i = 1, GetNumIgnores(), 1 do
		iName = GetIgnoreName(i);
		if ( aName == GetIgnoreName(i) ) then
			return true;
		end
	end
	return false;
end

function NuN_Is_Friendly(aName)
	local iName;
	for i = 1, GetNumFriends(), 1 do
		iName = GetFriendInfo(i);
		if ( iName == aName ) then
			return true;
		end
	end
	return false;
end



function UserButtons_Initialise()
	for n = 1, uBttns, 1 do
		bttnHeadingText = getglobal("NuNTitleButton"..n.."ButtonTextHeading");
		bttnDetailText = getglobal("NuNInforButton"..n.."ButtonTextDetail");
		bttnDetail = getglobal("NuNInforButton"..n);
		hdNbr = pHead..n;
		nameHdNbr = c_name..hdNbr;
		nameDtNbr = c_name..pDetl..n;
		if ( NuNData[pKey][nameHdNbr] ) then
			bttnHeadingText:SetText(NuNData[pKey][nameHdNbr].txt);
		elseif (NuNSettings[pKey][hdNbr]) then
			bttnHeadingText:SetText(NuNSettings[pKey][hdNbr].txt);
		else
			bttnHeadingText:SetText(dfltHeadings[n]);
		end
		if ( bttnHeadingText:GetText() == nil ) then
			bttnDetailText:SetText("");
			bttnDetail:Disable();
		else
			bttnDetail:Enable();
			if ( NuNData[pKey][nameDtNbr] ) then
				bttnDetailText:SetText(NuNData[pKey][nameDtNbr].txt);
			else
				bttnDetailText:SetText("");
			end
		end

		if ( n == 1 ) and ( c_guild ~= nil ) then
			if ( bttnHeadingText:GetText() == dfltHeadings[n] ) and ( (bttnDetailText:GetText() == "") or (bttnDetailText:GetText() == nil) ) then
				bttnDetailText:SetText(c_guild);
				bttnChanges[n+detlOffset] = c_guild;
			end
		end
		if ( n == 2 ) and ( gRank ~= nil ) then
			if ( bttnHeadingText:GetText() == dfltHeadings[n] ) and ( (bttnDetailText:GetText() == "") or (bttnDetailText:GetText() == nil) ) then
				if ( gRankIndex == 0 ) then
					GuildRank = ("GM : "..gRank);
				else
					GuildRank = (gRankIndex.." : "..gRank);
				end
				bttnDetailText:SetText(GuildRank);
				bttnChanges[n+detlOffset] = GuildRank;
			end
		end
	end
end



function DropDowns_Initialise()
	if ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].race ~= nil ) then
		UIDropDownMenu_SetSelectedID(NuNRaceDropDown, NuNData[pKey][c_name].race);
		UIDropDownMenu_SetText(Races[ (NuNData[pKey][c_name].race) ], NuNRaceDropDown);
	elseif ( c_race ~= nil ) then
		ddRace = NuNGet_TableID(Races, c_race);
		UIDropDownMenu_SetSelectedID(NuNRaceDropDown, ddRace);
		UIDropDownMenu_SetText(c_race, NuNRaceDropDown);
	else
		UIDropDownMenu_ClearAll(NuNRaceDropDown);
	end

	if ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].cls ~= nil ) then
		UIDropDownMenu_SetSelectedID(NuNClassDropDown, NuNData[pKey][c_name].cls);
		UIDropDownMenu_SetText(Classes[ (NuNData[pKey][c_name].cls) ], NuNClassDropDown);
	elseif ( c_class ~= nil ) then
		ddClass = NuNGet_TableID(Classes, c_class);
		UIDropDownMenu_SetSelectedID(NuNClassDropDown, ddClass);
		UIDropDownMenu_SetText(c_class, NuNClassDropDown);
	else
		UIDropDownMenu_ClearAll(NuNClassDropDown);
	end

	if ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].sex ~= nil ) then
		UIDropDownMenu_SetSelectedID(NuNSexDropDown, NuNData[pKey][c_name].sex);
		UIDropDownMenu_SetText(Sexes[ (NuNData[pKey][c_name].sex) ], NuNSexDropDown);
	else
		UIDropDownMenu_ClearAll(NuNSexDropDown);
	end

	if ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].prof1 ~= nil ) then
		UIDropDownMenu_SetSelectedID(NuNProf1DropDown, NuNData[pKey][c_name].prof1);
		UIDropDownMenu_SetText(Professions[ (NuNData[pKey][c_name].prof1) ], NuNProf1DropDown);
	else
		UIDropDownMenu_ClearAll(NuNProf1DropDown);
	end

	if ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].prof2 ~= nil ) then
		UIDropDownMenu_SetSelectedID(NuNProf2DropDown, NuNData[pKey][c_name].prof2);
		UIDropDownMenu_SetText(Professions[ (NuNData[pKey][c_name].prof2) ], NuNProf2DropDown);
	else
		UIDropDownMenu_ClearAll(NuNProf2DropDown);
	end

	if ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].crank ~= nil ) then
		UIDropDownMenu_SetSelectedID(NuNCRankDropDown, NuNData[pKey][c_name].crank);
		UIDropDownMenu_SetText(Ranks[ (NuNData[pKey][c_name].crank) ], NuNCRankDropDown);
	else
		UIDropDownMenu_ClearAll(NuNCRankDropDown);
	end

	if ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].hrank ~= nil ) then
		UIDropDownMenu_SetSelectedID(NuNHRankDropDown, NuNData[pKey][c_name].hrank);
		UIDropDownMenu_SetText(Ranks[ (NuNData[pKey][c_name].hrank) ], NuNHRankDropDown);
	else
		UIDropDownMenu_ClearAll(NuNHRankDropDown);
	end
end



function NuNGet_TableID(tab, txt)
	for i = 1, getn(tab), 1 do
		if ( tab[i] == txt ) then return i; end
	end
	return nil;
end


function NuNGet_CommandID(tab, txt)
	for i = 1, getn(tab), 1 do
		if ( tab[i].Command == txt ) then return i; end
	end
	return nil;
end


function NuN_WriteNote()
	if (not NuNData[pKey][c_name]) then
		NuNData[pKey][c_name] = {};
	end

	if ( c_name == pName ) then
		NuNData[pKey][c_name].type = NUN_SELF_C;
		NuNHeader:SetText(NUN_PLAYER.." : "..c_name);
	elseif ( ( not NuNData[pKey][c_name].type ) or ( NuNData[pKey][c_name].type == NUN_AUTO_C ) ) then
		NuNData[pKey][c_name].type = NUN_MANU_C;
		NuNHeader:SetText(NUN_MANU.." : "..c_name);
	end

	if ( not NuNData[pKey][c_name].faction ) then
		if ( ( c_route == "Target" ) or ( c_route == "Create" ) ) then
			NuNData[pKey][c_name].faction = c_faction;
		else
			NuNData[pKey][c_name].faction = pFaction;
		end
	end

	if ( FriendsListFrame:IsVisible() ) then
		NuNNew_FriendsList_Update();
	elseif ( IgnoreListFrame:IsVisible() ) then
		NuNNew_IgnoreList_Update();
	elseif ( GuildPlayerStatusFrame:IsVisible() ) then
		NuNNew_GuildStatus_Update();
	elseif ( GuildStatusFrame:IsVisible() ) then
		NuNNew_GuildStatus_Update();
	elseif ( WhoFrame:IsVisible() ) then
		NuNNew_WhoList_Update();
	end

	if ( c_guild ~= nil ) then
		NuNData[pKey][c_name].guild = c_guild;
	end
	if ( not NuNData[pKey][c_name].guild ) then
		NuNData[pKey][c_name].guild = "";
	end

	if ( NuN_Is_Ignored(c_name) ) then
		if ( not NuNData[pKey][c_name].ignoreLst ) then
			NuNData[pKey][c_name].ignoreLst = {};
		end
		if (not NuNGet_TableID(NuNData[pKey][c_name].ignoreLst, pName) ) then
			local x = getn(NuNData[pKey][c_name].ignoreLst) + 1;
			NuNData[pKey][c_name].ignoreLst[x] = pName;
		end
	end

	if ( NuN_Is_Friendly(c_name) ) then
		if ( not NuNData[pKey][c_name].friendLst ) then
			NuNData[pKey][c_name].friendLst = {};
		end
		if ( not NuNGet_TableID(NuNData[pKey][c_name].friendLst, pName) ) then
			local x = getn(NuNData[pKey][c_name].friendLst) + 1;
			NuNData[pKey][c_name].friendLst[x] = pName;
		end
	end

	if (ddRace) then
		if ( ddRace == -1 ) then
			NuNData[pKey][c_name].race = nil;
		else
			NuNData[pKey][c_name].race = ddRace;
		end
		ddRace = nil;
	elseif ( c_race ~= nil ) then
		NuNData[pKey][c_name].race = NuNGet_TableID(Races, c_race);
	end
	if (ddClass) then
		if ( ddClass == -1 ) then
			NuNData[pKey][c_name].cls = nil;
		else
			NuNData[pKey][c_name].cls = ddClass;
		end
		ddClass = nil;
	elseif ( c_class ~= nil )  then
		NuNData[pKey][c_name].cls = NuNGet_TableID(Classes, c_class);
	end
	if (ddSex) then
		if ( ddSex == -1 ) then
			NuNData[pKey][c_name].sex = nil;
		else
			NuNData[pKey][c_name].sex = ddSex;
		end
		ddSex = nil;
	end
	if (ddProf1) then
		if ( ddProf1 == -1 ) then
			NuNData[pKey][c_name].prof1 = nil;
		else
			NuNData[pKey][c_name].prof1 = ddProf1;
		end
		ddProf1 = nil;
	end
	if (ddProf2) then
		if ( ddProf2 == -1 ) then
			NuNData[pKey][c_name].prof2 = nil;
		else
			NuNData[pKey][c_name].prof2 = ddProf2;
		end
		ddProf2 = nil;
	end
	if (ddCRank) then
		if ( ddCRank == -1 ) then
			NuNData[pKey][c_name].crank = nil;
		else
			NuNData[pKey][c_name].crank = ddCRank;
		end
		ddCRank = nil;
	end
	if (ddHRank) then
		if ( ddHRank == -1 ) then
			NuNData[pKey][c_name].hrank = nil;
		else
			NuNData[pKey][c_name].hrank = ddHRank;
		end
		ddHRank = nil;
	end

	c_text = NuNText:GetText();
	NuN_SetCText(c_name);

	for n = 1, uBttns, 1 do
		if (bttnChanges[n] ~= "") and (bttnChanges[n] ~= nil) then
			hdNbr = pHead..n;
			nameHdNbr = c_name..hdNbr;
			if (not NuNData[pKey][nameHdNbr]) then
				NuNData[pKey][nameHdNbr] = {};
			end
			if (bttnChanges[n] == 1) then
				NuNData[pKey][nameHdNbr].txt = "";
			else
				NuNData[pKey][nameHdNbr].txt = bttnChanges[n];
			end
		end
	end

	for n = 1, uBttns, 1 do
		b = n + detlOffset;
		if (bttnChanges[b] ~= "") and (bttnChanges[b] ~= nil) then
			nameDtNbr = c_name..pDetl..n;
			if (not NuNData[pKey][nameDtNbr]) then
				NuNData[pKey][nameDtNbr] = {};
			end
			if (bttnChanges[b] == 1) then
				NuNData[pKey][nameDtNbr].txt = nil;
			else
				NuNData[pKey][nameDtNbr].txt = bttnChanges[b];
			end
		end
	end

	if ( ( NuNSearchFrame:IsVisible() ) and ( not string.find(NuNSearchTitleText:GetText(), NUN_QUESTS_TEXT) ) ) then
		NuNSearch_Search();
	end

	ClearButtonChanges();
	NuNButtonDelete:Enable();
	NuNCOpenChatButton:Enable();
	NuNCTTCheckBoxLabel:Show();
	NuN_CTTCheckBox:Show();
end



function NuNGNote_WriteNote()
	local conflict = false;
	local value, index, pad;
	local conflicts = 0;
	local saveLvl;
	local NuN_Creating = nil;

	if ( NuNGNoteTitleButton:IsVisible() ) then
		c_note = NuNGNoteTitleButtonText:GetText();
	else
		c_note = NuNGNoteTextBox:GetText();
	end

	NuNConflictedRealmsLabel:SetText(" ");
	if ( ( NuN_GLevel_CheckBox:GetChecked() ) and ( not NuNGNoteFrame.confirmed ) ) then
		for index, value in NuNData do
			if ( ( index ~= pKey ) and ( NuNData[index][Notes] ) ) then
				if ( NuNData[index][Notes][c_note] ) then
					conflicts = conflicts + 1;
					if ( conflicts == 1 ) then
						pad = "";
					else
						pad = ", ";
					end
					if ( conflicts < 5 ) then
						NuNConflictedRealmsLabel:SetText( NuNConflictedRealmsLabel:GetText()..pad..index );
					end
					conflict = true;
				end
			end
		end
	end

	if ( ( conflict ) and ( not NuNGNoteFrame.confirmed ) ) then
		if ( conflicts > 4 ) then
			NuNConflictedRealmsLabel:SetText( NuNConflictedRealmsLabel:GetText().."..." );
		end
		ShowUIPanel(NuN_ConfirmFrame);
	else
		if ( NuN_ConfirmFrame:IsVisible() ) then
			HideUIPanel(NuN_ConfirmFrame);
		end
		if ( not NuN_GNote_OriTitle ) then
			NuN_Creating = true;
		end
		if ( ( ( NuN_GNote_OriTitle ) and ( NuN_GNote_OriTitle ~= c_note ) ) or ( not NuN_GNote_OriTitle ) ) then
			if ( ( NuNData[pKey][Notes][c_note] ) or ( NuNData[Notes][c_note] ) ) then
				message(NUN_DUPLICATE);
				return;
			else
				if ( NuNData[pKey][Notes][NuN_GNote_OriTitle] ) then
					NuNData[pKey][Notes][NuN_GNote_OriTitle] = nil;
				elseif ( NuNData[Notes][NuN_GNote_OriTitle] ) then
					NuNData[Notes][NuN_GNote_OriTitle] = nil;
				end
			end
		end

		NuN_GNote_OriTitle = c_note;
		g_text = NuNGNoteTextScroll:GetText();
		if ( g_text == nil ) then
			g_text = "";
		end

		if ( NuN_GLevel_CheckBox:GetChecked() ) then
			saveLvl = "Account";
			NuNData[Notes][c_note] = {};
			for index, value in NuNData do
				if ( NuNData[index][Notes] ) then
					if ( NuNData[index][Notes][c_note] ) then
						NuNData[index][Notes][c_note] = nil;
					end
				end
			end
		else
			saveLvl = "Realm";
			NuNData[pKey][Notes][c_note] = {};
			if ( NuNData[Notes][c_note] ) then
				NuNData[Notes][c_note] = nil;
			end
		end
		NuN_SetGText(saveLvl);

		if ( string.find(c_note, "|Hitem:") ) then
			simpleName = NuN_GetSimpleName(c_note);
			if ( simpleName ~= nil ) then
				NuNData[itmIndex][simpleName] = c_note;
			end
		end
		if ( NuNGNoteFrame.type ) then
			if ( NuN_GLevel_CheckBox:GetChecked() ) then
				NuNData[Notes][c_note].type = NuNGNoteFrame.type;
			else
				NuNData[pKey][Notes][c_note].type = NuNGNoteFrame.type;
			end
			if ( noteTypes[NuNGNoteFrame.type].Command == "QST"  ) then
				if ( not NuNData[pKey].QuestHistory[pName][c_note] ) then
					NuNData[pKey].QuestHistory[pName][c_note] = {};
					NuNData[pKey].QuestHistory[pName][c_note].sortDate = tostring(date("%Y%m%d%H%M%S"));
					NuNData[pKey].QuestHistory[pName][c_note].pLevel = UnitLevel("player");
					NuNData[pKey].QuestHistory[pName][c_note].txt = NUN_CREATED.."\n    "..NuN_GetDateStamp().."\n    "..NuN_GetLoc().."\n";
					NuN_UpdateQuestNotes("Write");
				end
			elseif ( ( noteTypes[NuNGNoteFrame.type].Command == "NPC" ) and ( NuN_Creating ) and ( NuNSettings[pKey].autoMapNotes ) ) then
				NuN_MapNote("Target", "", "", nil);
			end
		end

		if ( QuestLogFrame:IsVisible() ) then
			NuNNew_QuestLog_Update();
		end

		if ( ( NuNSearchFrame:IsVisible() ) and ( NuNGNoteFrame.fromQuest ) ) then
			NuN_FetchQuestHistory();
		elseif ( ( NuNSearchFrame:IsVisible() ) and ( not string.find(NuNSearchTitleText:GetText(), NUN_QUESTS_TEXT) ) ) then
			NuNSearch_Search();
		end

		NuNGNoteButtonDelete:Enable();
		if ( ( MapNotes_OnLoad ) or ( MetaMapNotes_OnLoad ) ) then
			NuNMapNoteButton:Enable();
		end
		NuNGOpenChatButton:Enable();
		NuN_GTTCheckBox:Show();
		NuN_GTTCheckBox:SetChecked(0);
		if ( NuN_PinnedTooltip.type == "General" ) then
			NuN_GTTCheckBox:SetChecked( NuN_CheckPinnedBox(c_note) );
		end
		NuNGTTCheckBoxLabel:Show();
		NuNGNoteTitleButtonText:SetText(c_note);
		NuNGNoteTextBox:Hide();
		NuNGNoteTitleButton:Show();
		NuNGNoteHeader:SetText(NUN_SAVED_NOTE);
	end
end



function NuN_HideFrame()
	HideUIPanel(NuNEditDetailsFrame);
	HideUIPanel(NuNFrame);
end

function NuNGNote_HideFrame()
	HideUIPanel(NuNGNoteFrame);
end



function NuN_OnEvent()
	if ( event == "VARIABLES_LOADED" ) then
		--NuN_Message("NotesUNeed "..NUN_VERSION.." "..NUN_LOADED);

	elseif ( ( event == "IGNORELIST_UPDATE" ) and ( not NuN_importing ) )then
		NuN_Update_Ignored();

	elseif ( event == "PLAYER_ENTERING_WORLD" ) then
		pFaction = UnitFactionGroup("player");
		if ( pFaction == "Horde" ) then
			horde = true;
		else
			horde = false;
		end

		tryI = true;
		pName = UnitName("player");

		NuN_InitialiseSavedVariables();

		if ( not NuNData[pKey][pName] ) then
			NuN_AutoNote();
		end
		NuN_Update_Friends();
		NuN_Update_Ignored();
		if ( not NuNSettings[pKey].hideMicro ) then
			ShowUIPanel(NuNMicroFrame);
		else
			HideUIPanel(NuNMicroFrame);
		end
		NuN_PinnedTooltip:SetScale(NuNSettings[pKey].tScale);
		NuN_Tooltip:SetScale(NuNSettings[pKey].tScale);
		WorldMapTooltip:SetScale(NuNSettings[pKey].mScale);
		NuN_MapTooltip:SetScale(NuNSettings[pKey].mScale);
		NuNPopup:SetScale(NuNSettings[pKey].mScale);
		if ( ( MapNotes_OnLoad ) or ( MetaMapNotes_OnLoad ) ) then
			NuN_MapIndexHouseKeeping();
		end
		NuN_AtStartup = "True";

		if ( NuN_FirstTime ) then
			NuN_FirstTime = nil;
			if ( MetaMapNotes_OnLoad ) then
				NuNOri_MetaMapNotes_OnEnter = MetaMapNotes_OnEnter;
				MetaMapNotes_OnEnter = NuNNew_MetaMapNotes_OnEnter;
				NuNOri_MetaMapNotes_OnLeave = MetaMapNotes_OnLeave;
				MetaMapNotes_OnLeave = NuNNew_MetaMapNotes_OnLeave;
				NuNOri_MetaMapNotes_DeleteNote = MetaMapNotes_DeleteNote;
				MetaMapNotes_DeleteNote = NuNNew_MetaMapNotes_DeleteNote;
				NuN_GetZoneTableSize = MetaMapNotes_GetZoneTableSize;
			elseif ( MapNotes_OnLoad ) then
				NuNOri_MapNotes_OnEnter = MapNotes_OnEnter;
				MapNotes_OnEnter = NuNNew_MapNotes_OnEnter;
				NuNOri_MapNotes_OnLeave = MapNotes_OnLeave;
				MapNotes_OnLeave = NuNNew_MapNotes_OnLeave;
				NuNOri_MapNotes_DeleteNote = MapNotes_DeleteNote;
				MapNotes_DeleteNote = NuNNew_MapNotes_DeleteNote;
				NuN_GetZoneTableSize = MapNotes_GetZoneTableSize;
			end
		end

	elseif ( ( event == "FRIENDLIST_UPDATE" ) and ( not NuN_importing ) ) then
		NuN_Update_Friends();

	elseif( event == "PLAYER_LEVEL_UP" ) then
		if ( NuNData[pKey][pName] ) then
			local lvl = UnitLevel("player");
			local cxp = UnitXP("player");
			local nxp = UnitXPMax("player");
			if ( cxp ) and ( nxp ) then
				local diff = nxp - cxp;
				if ( cxp > diff ) then
					lvl = lvl + 1;
				end
			end
			c_text = NuN_GetCText(pName);
			local len = string.len(c_text);
			if ( len < NUN_MAX_TXT_BUF ) then
				c_text = c_text..NUN_LVL_REACHED..lvl.." : ";
				c_text = c_text.."\n    "..NuN_GetDateStamp();
				c_text = c_text.."\n    "..NuN_GetLoc();
				NuN_SetCText(pName);
			end
		end

--	elseif ( event == "CHAT_MSG_SYSTEM" ) then
--		if ( arg1 ) then
--			local p = string.find(arg1, NUN_COMPLETED);
--			if ( p ) then
--				local q = string.sub(arg1, 1, (p-1));
--				NuN_QuestHandIn(q);
--				timeSinceLastUpdate = 0;
--				NuN_IgnoreNextQUpdate = true;
--			end
--		end

	elseif ( ( event == "PARTY_MEMBERS_CHANGED" ) or ( event == "RAID_ROSTER_UPDATE" ) ) then
		if ( NuNSettings[pKey].autoP ) then
			NuN_ProcessParty();
		end

	elseif ( ( NuN_QuestsUpdating == "False" ) and ( NuN_AtStartup == "False" ) and ( event == "QUEST_LOG_UPDATE" ) ) then
		if ( ( NuNGNoteFrame:IsVisible() ) and ( noteTypes[NuNGNoteFrame.type].Command == "QST" ) ) then
			HideUIPanel(NuNGNoteFrame);
		end
		if ( NuN_QuestAccepted ) then
			local qHeader = nil;
			local qCollapsed = nil;
			local qIndex, qLevel, qTag, qComplete = NuN_CheckQuestList(NuN_QuestAccepted);
			if ( qIndex > 0 ) then
				NuN_ProcessQuest(NuN_QuestAccepted, qLevel, qTag, qHeader, qCollapsed, qComplete, qIndex);
			end
			NuN_QuestAccepted = nil;
			return;
		end
		if ( NuN_IgnoreNextQUpdate ) then
			NuN_IgnoreNextQUpdate = nil;
		else
			NuN_UpdateQuestNotes(event);
		end
	end
end



function NuNHRaceDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNHRaceDropDown, NuNHRaceDropDown_Initialise);
	UIDropDownMenu_SetWidth(75);
end

function NuNHRaceDropDown_Initialise()
	local info;
	for i=1, getn(HRaces), 1 do
		info = {};
		info.text = HRaces[i];
		info.func = NuNHRaceButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNHRaceButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNHRaceDropDown, this:GetID());
	ddRace = this:GetID();
	lastDD = "Race";
	NuNButtonClrDD:Enable();
end

function NuNARaceDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNARaceDropDown, NuNARaceDropDown_Initialise);
	UIDropDownMenu_SetWidth(75);
end

function NuNARaceDropDown_Initialise()
	local info;
	for i=1, getn(ARaces), 1 do
		info = {};
		info.text = ARaces[i];
		info.func = NuNARaceButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNARaceButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNARaceDropDown, this:GetID());
	ddRace = this:GetID();
	lastDD = "Race";
	NuNButtonClrDD:Enable();
end



function NuNHClassDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNHClassDropDown, NuNHClassDropDown_Initialise);
	UIDropDownMenu_SetWidth(75);
end

function NuNHClassDropDown_Initialise()
	local info;
	for i=1, getn(HClasses), 1 do
		info = {};
		info.text = HClasses[i];
		info.func = NuNHClassButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNHClassButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNHClassDropDown, this:GetID());
	ddClass = this:GetID();
	lastDD = "Class";
	NuNButtonClrDD:Enable();
end

function NuNAClassDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNAClassDropDown, NuNAClassDropDown_Initialise);
	UIDropDownMenu_SetWidth(75);
end

function NuNAClassDropDown_Initialise()
	local info;
	for i=1, getn(AClasses), 1 do
		info = {};
		info.text = AClasses[i];
		info.func = NuNAClassButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNAClassButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNAClassDropDown, this:GetID());
	ddClass = this:GetID();
	lastDD = "Class";
	NuNButtonClrDD:Enable();
end



function NuNSexDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNSexDropDown, NuNSexDropDown_Initialise);
	UIDropDownMenu_SetWidth(75);
end

function NuNSexDropDown_Initialise()
	local info;
	for i=1, getn(Sexes), 1 do
		info = {};
		info.text = Sexes[i];
		info.func = NuNSexButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNSexButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNSexDropDown, this:GetID());
	ddSex = this:GetID();
	lastDD = "Sex";
	NuNButtonClrDD:Enable();
end



function NuNProf1DropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNProf1DropDown, NuNProf1DropDown_Initialise);
	UIDropDownMenu_SetWidth(210);
end

function NuNProf1DropDown_Initialise()
	local info;
	for i=1, getn(Professions), 1 do
		info = {};
		info.text = Professions[i];
		info.func = NuNProf1Button_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNProf1Button_OnClick()
	UIDropDownMenu_SetSelectedID(NuNProf1DropDown, this:GetID());
	ddProf1 = this:GetID();
	lastDD = "Prof1";
	NuNButtonClrDD:Enable();
end



function NuNProf2DropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNProf2DropDown, NuNProf2DropDown_Initialise);
	UIDropDownMenu_SetWidth(210);
end

function NuNProf2DropDown_Initialise()
	local info;
	for i=1, getn(Professions), 1 do
		info = {};
		info.text = Professions[i];
		info.func = NuNProf2Button_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNProf2Button_OnClick()
	UIDropDownMenu_SetSelectedID(NuNProf2DropDown, this:GetID());
	ddProf2 = this:GetID();
	lastDD = "Prof2";
	NuNButtonClrDD:Enable();
end



function NuNHCRankDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNHCRankDropDown, NuNHCRankDropDown_Initialise);
	UIDropDownMenu_SetWidth(125);
end

function NuNHCRankDropDown_Initialise()
	local info;
	for i=1, getn(HRanks), 1 do
		info = {};
		info.text = HRanks[i];
		info.func = NuNHCRankButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNHCRankButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNHCRankDropDown, this:GetID());
	ddCRank = this:GetID();
	lastDD = "CRank";
	NuNButtonClrDD:Enable();
end

function NuNACRankDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNACRankDropDown, NuNACRankDropDown_Initialise);
	UIDropDownMenu_SetWidth(125);
end

function NuNACRankDropDown_Initialise()
	local info;
	for i=1, getn(ARanks), 1 do
		info = {};
		info.text = ARanks[i];
		info.func = NuNACRankButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNACRankButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNACRankDropDown, this:GetID());
	ddCRank = this:GetID();
	lastDD = "CRank";
	NuNButtonClrDD:Enable();
end



function NuNHHRankDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNHHRankDropDown, NuNHHRankDropDown_Initialise);
	UIDropDownMenu_SetWidth(125);
end

function NuNHHRankDropDown_Initialise()
	local info;
	for i=1, getn(HRanks), 1 do
		info = {};
		info.text = HRanks[i];
		info.func = NuNHHRankButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNHHRankButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNHHRankDropDown, this:GetID());
	ddHRank = this:GetID();
	lastDD = "HRank";
	NuNButtonClrDD:Enable();
end

function NuNAHRankDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNAHRankDropDown, NuNAHRankDropDown_Initialise);
	UIDropDownMenu_SetWidth(125);
end

function NuNAHRankDropDown_Initialise()
	local info;
	for i=1, getn(ARanks), 1 do
		info = {};
		info.text = ARanks[i];
		info.func = NuNAHRankButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNAHRankButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNAHRankDropDown, this:GetID());
	ddHRank = this:GetID();
	lastDD = "HRank";
	NuNButtonClrDD:Enable();
end


function NuNOptionsSearchDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNOptionsSearchDropDown, NuNOptionsSearchDropDown_Initialise);
	UIDropDownMenu_SetWidth(165);
end

function NuNOptionsSearchDropDown_Initialise()
	local info;
	for i=1, getn(searchFor), 1 do
		info = {};
		info.text = searchFor[i].Display;
		info.func = NuNOptionsSearchDropDown_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNOptionsSearchDropDown_OnClick()
	UIDropDownMenu_SetSelectedID(NuNOptionsSearchDropDown, this:GetID());
	ddSearch = this:GetID();
end



function NuNSearchClassDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNSearchClassDropDown, NuNSearchClassDropDown_Initialise);
	UIDropDownMenu_SetWidth(204);
end

function NuNSearchClassDropDown_Initialise()
	local info;
	for i=1, getn(AllClasses), 1 do
		info = {};
		info.text = AllClasses[i];
		info.func = NuNSearchClassButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNSearchClassButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNSearchClassDropDown, this:GetID());
	ddClassSearch = this:GetID();
end



function NuNSearchProfDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNSearchProfDropDown, NuNSearchProfDropDown_Initialise);
	UIDropDownMenu_SetWidth(204);
end

function NuNSearchProfDropDown_Initialise()
	local info;
	for i=1, getn(Professions), 1 do
		info = {};
		info.text = Professions[i];
		info.func = NuNSearchProfButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNSearchProfButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNSearchProfDropDown, this:GetID());
	ddProfSearch = this:GetID();
end

function NuNChatDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNChatDropDown, NuNChatDropDown_Initialise);
	UIDropDownMenu_SetWidth(110);
end

function NuNChatDropDown_Initialise()
	local info;
	for i=1, getn(transmitTo), 1 do
		info = {};
		info.text = transmitTo[i].Display;
		info.func = NuNChatButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNChatButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNChatDropDown, this:GetID());
	sendTo = transmitTo[this:GetID()].Command;
	if ( sendTo == "WHISPER" ) or ( sendTo == "NuN" ) then
		NuNChatTextBox:SetText("");
		NuNChatTextBox:Show();
		NuNTransmit:Disable();
	else
		if ( NuNChatTextBox:IsVisible() ) then
			NuNChatTextBox:Hide();
		end
		NuNTransmit:Enable();
	end
end

function NuNGTypeDropDown_OnLoad()
	UIDropDownMenu_Initialize(NuNGTypeDropDown, NuNGTypeDropDown_Initialise);
	UIDropDownMenu_SetWidth(70);
end

function NuNGTypeDropDown_Initialise()
	local info;
	for i=1, getn(noteTypes), 1 do
		info = {};
		info.text = noteTypes[i].Display;
		info.func = NuNGTypeButton_OnClick;
		UIDropDownMenu_AddButton(info);
	end
end

function NuNGTypeButton_OnClick()
	UIDropDownMenu_SetSelectedID(NuNGTypeDropDown, this:GetID());
	NuNGNoteFrame.type = this:GetID();
	if ( noteTypes[NuNGNoteFrame.type].Command == "NPC" ) then
		NuNNPCTargetButton:Show();
	else
		NuNNPCTargetButton:Hide();
	end
end



function NuNEditDetails()
	local prntObj;
	local prntTxtObj;

	newTxt = (NuNEditDetailsBox:GetText());

	if (newTxt ~= oriTxt) then
		chldObj = getglobal("NuNInforButton"..bttnNumb);
		if ((newTxt == "") and (isTitle)) or ((newTxt == nil) and (isTitle)) then
			chldTxtObj = getglobal("NuNInforButton"..bttnNumb.."ButtonTextDetail");
			chldTxt = chldTxtObj:SetText("");
			chldObj:Disable();
		else
			chldObj:Enable();
		end
		bttnTxtObj:SetText(newTxt);

		if (isTitle) then
			if ( NuNEditDetail_CheckButton:GetChecked() ) then
				hdNbr = pHead..bttnNumb;
				nameHdNbr = c_name..hdNbr;
				if (not NuNSettings[pKey][hdNbr]) then
					NuNSettings[pKey][hdNbr] = {};
				end
				NuNSettings[pKey][hdNbr].txt = newTxt;
				if ( NuNData[pKey][nameHdNbr] ) then
					NuNData[pKey][nameHdNbr] = nil;
				end
			else
				index = tonumber(bttnNumb);
				if ( ( newTxt == "" ) or ( newTxt == nil ) )then
					bttnChanges[index] = 1;
				else
					bttnChanges[index] = newTxt;
				end
			end
		else
			index = bttnNumb + detlOffset;
			if ( newTxt == "" ) then
				bttnChanges[index] = 1;
			else
				bttnChanges[index] = newTxt;
			end
			if ( index == (detlOffset + 1) ) then
				prntTxtObj = getglobal("NuNTitleButton"..bttnNumb.."ButtonTextHeading");
				if ( prntTxtObj:GetText() == dfltHeadings[1] ) then
					c_guild = newTxt;
				end
			end
		end
		NuNEditDetails_HideFrame();
	else
		NuNEditDetails_HideFrame();
	end
end



function NuNEditDetails_HideFrame()
	NuNButtonSaveNote:Enable();
	HideUIPanel(NuNEditDetailsFrame);
end



function NuNUserButton_OnClick(bttn)
	local bttnName = bttn:GetName();
	local prfx = (string.sub(bttnName,  1, 8));

	bttnNumb = (string.sub(bttnName, 15,  15));

	if (prfx == "NuNTitle") then
		isTitle = true;
		bttnTxtObj = getglobal(bttnName.."ButtonTextHeading");
	else
		isTitle = false;
		bttnTxtObj = getglobal(bttnName.."ButtonTextDetail");
	end
	oriTxt = bttnTxtObj:GetText();

	NuNEditDetails_ShowFrame(isTitle);
end



function NuNEditDetails_ShowFrame(isTitle)
	NuNButtonSaveNote:Disable();

	NuNText:ClearFocus();
	if (oriTxt == nil) then
		NuNEditDetailsBox:SetText("");
	else
		NuNEditDetailsBox:SetText(oriTxt);
	end
	if (isTitle) then
		NuNCheckBoxLabel:SetText("Save as Default");
		NuNEditDetail_CheckButton:SetChecked(0);
		NuNEditDetailsRestoreButton:Enable();
		NuNEditDetail_CheckButton:Show();
		NuNEditDetailsRestoreButton:Show();
	else
		NuNCheckBoxLabel:SetText("");
		NuNEditDetail_CheckButton:Hide();
		NuNEditDetailsRestoreButton:Hide();
	end
	ShowUIPanel(NuNEditDetailsFrame);
	NuNEditDetailsBox:SetFocus();
end



function NuN_EditDetailCheckButtonOnClick()
	if ( NuNEditDetail_CheckButton:GetChecked() ) then
		NuNEditDetailsRestoreButton:Disable();
	else
		NuNEditDetailsRestoreButton:Enable();
	end
end



function NuNEditDetailsRestore()
	nameHdNbr = c_name..pHead..bttnNumb;
	if ( NuNData[pKey][nameHdNbr] ) then
		NuNData[pKey][nameHdNbr] = nil;
	end
	NuNEditDetails_HideFrame();
	NuN_HideFrame();
	NuN_ShowNote();
end





-------------------------------------------------------------------------------------------
-- Succesful Function Hooks



function NuNNew_FriendsFrameFriendButton_OnClick(button)
	NuNOri_FriendsFrameFriendButton_OnClick(button);
 	if ( ( button == "LeftButton" ) and ( NuNFrame:IsVisible() ) ) then
 		NuN_HideFrame();
 		NuN_ShowFriendNote();
 	end
end

function NuNNew_FriendsFrameIgnoreButton_OnClick()
	NuNOri_FriendsFrameIgnoreButton_OnClick();
	if ( ( button == "LeftButton" ) and ( NuNFrame:IsVisible() ) ) then
		NuN_HideFrame();
		NuN_ShowIgnoreNote();
	end
end

function NuNNew_FriendsFrameGuildPlayerStatusButton_OnClick(button)
	NuNOri_FriendsFrameGuildPlayerStatusButton_OnClick(button);
	if ( ( button == "LeftButton" ) and ( NuNFrame:IsVisible() ) ) then
		NuN_HideFrame();
		NuN_ShowGuildNote();
	end
end

function NuNNew_FriendsFrameGuildStatusButton_OnClick(button)
	NuNOri_FriendsFrameGuildStatusButton_OnClick(button);
	if ( ( button == "LeftButton" ) and ( NuNFrame:IsVisible() ) ) then
		NuN_HideFrame();
		NuN_ShowGuildNote();
	end
end

function NuNNew_FriendsFrameWhoButton_OnClick(button)
	NuNOri_FriendsFrameWhoButton_OnClick(button);
	if ( ( button == "LeftButton" ) and ( NuNFrame:IsVisible() ) ) then
		NuN_HideFrame();
		NuN_ShowWhoNote(WhoFrame.selectedName);
	end
end

function NuNNew_FriendsList_Update()
	local bttnIndx;

	NuNOri_FriendsList_Update();

	for i = 1, 10, 1 do
		bttnIndx = getglobal("NuN_FriendNotesButton"..i);
		NuN_UpdateNoteButton(bttnIndx, i, "F");
	end
end

function NuNNew_IgnoreList_Update()
	local bttnIndx;

	NuNOri_IgnoreList_Update();

	for i = 1, 20, 1 do
		bttnIndx = getglobal("NuN_IgnoreNotesButton"..i);
		NuN_UpdateNoteButton(bttnIndx, i, "I");
	end
end

function NuNNew_GuildStatus_Update()
	local bttnIndx;

	NuNOri_GuildStatus_Update();

	for i = 1, 13, 1 do
		bttnIndx = getglobal("NuN_GuildSNotesButton"..i);
		NuN_UpdateNoteButton(bttnIndx, i, "GS");
		bttnIndx = getglobal("NuN_GuildNotesButton"..i);
		NuN_UpdateNoteButton(bttnIndx, i, "G");
	end
end

function NuNNew_WhoList_Update()
	local bttnIndx;

	NuNOri_WhoList_Update();

	for i = 1, 17, 1 do
		bttnIndx = getglobal("NuN_WhoNotesButton"..i);
		NuN_UpdateNoteButton(bttnIndx, i, "W");
	end
end

function NuNNew_QuestLog_Update()
	local bttnIndx;

	NuNOri_QuestLog_Update();

	for i = 1, 6, 1 do
		bttnIndx = getglobal("NuN_QuestNotesButton"..i);
		NuN_UpdateNoteButton(bttnIndx, i, NUN_QUEST_C);
	end
end

function NuNNew_ContainerFrameItemButton_OnClick(button, ignoreShift)
	if ( ( IsAltKeyDown() ) and ( IsShiftKeyDown() ) ) then
		local itmLink = GetContainerItemLink( this:GetParent():GetID(), this:GetID() );
		if ( ( itmLink ~= nil ) and ( itmLink ~= "" ) ) then
			if ( button == "LeftButton" ) then
				if ( ( NuNGNoteFrame:IsVisible() ) or ( NuNFrame:IsVisible() ) ) then
					if ( NuNGNoteFrame:IsVisible() ) then
						local cText = NuNGNoteTextScroll:GetText().."\n"..itmLink;
						NuNGNoteTextScroll:SetText(cText);
						return;
					elseif ( NuNFrame:IsVisible() ) then
						local cText = NuNText:GetText().."\n"..itmLink;
						NuNText:SetText(cText);
						return;
					end
				else
					NuNGNoteFrame.fromQuest = nil;
					if ( ( NuNData[pKey][Notes][itmLink] ) or ( NuNData[Notes][itmLink] ) ) then
						c_note = itmLink;
						NuN_ShowSavedGNote();
					else
						NuN_GNoteFromItem(itmLink, "GameTooltip");
					end
					return;
				end
			end
		end
	end

	NuNOri_ContainerFrameItemButton_OnClick(button, ignoreShift);
end

function NuNNew_SetItemRef(link, text, button)
	if ( strsub(link, 1, 6) == "player" ) then
		local name = string.sub(link, 8);
		if ( name and (string.len(name) > 0) ) then
			name = string.gsub(name, "([^%s]*)%s+([^%s]*)%s+([^%s]*)", "%3");
			name = string.gsub(name, "([^%s]*)%s+([^%s]*)", "%2");
			if ( IsShiftKeyDown() ) then
				local NuN_staticPopup = StaticPopup_Visible("ADD_IGNORE");
				if ( not NuN_staticPopup ) then
					if ( IsAltKeyDown() ) then
						if ( NuNData[pKey][name] ) then
							NuN_ShowSavedNote(name);
						else
							NuN_CreateContact(name, pFaction);
						end
					else
						ttName = name;
						NuN_ClearPinnedTT();
						NuN_PinnedTooltip:SetOwner(this, "ANCHOR_RIGHT");
						NuN_PinUpHeader = true;
						NuN_PinnedTooltip.type = "Contact";
						NuN_BuildTT(NuN_PinnedTooltip);
						NuN_PinUpHeader = false;
						NuN_PinnedTooltip:Show();
					end
				end
			end
		end
	elseif ( IsShiftKeyDown() ) and ( IsAltKeyDown() ) then
		if ( button == "LeftButton" ) then
			if ( ( NuNGNoteFrame:IsVisible() ) or ( NuNFrame:IsVisible() ) ) then
				if ( NuNGNoteFrame:IsVisible() ) then
					local cText = NuNGNoteTextScroll:GetText().."\n"..text;
					NuNGNoteTextScroll:SetText(cText);
					return;
				elseif ( NuNFrame:IsVisible() ) then
					local cText = NuNText:GetText().."\n"..text;
					NuNText:SetText(cText);
					return;
				end
			else
				NuNGNoteFrame.fromQuest = nil;
				if ( ( NuNData[pKey][Notes][text] ) or ( NuNData[Notes][text] ) ) then
					c_note = text;
					NuN_ShowSavedGNote();
				else
					ItemRefTooltip:SetHyperlink(link);
					NuN_GNoteFromItem(text, "ItemRefTooltip");
				end
				return;
			end
		end
	end

	NuNOri_SetItemRef(link, text, button);

	if ( ItemRefTooltip:IsVisible() ) then
		NuN_ItemRefTooltip_OnShow();
	end
end

function NuNNew_PaperDollItemSlotButton_OnClick(button)
	local itmLink;
	if ( ( IsShiftKeyDown() ) and ( IsAltKeyDown() ) ) then
		if ( ( InspectFrame ) and ( InspectFrame:IsVisible() ) ) then
			itmLink = GetInventoryItemLink("target", this:GetID());
		else
			itmLink = GetInventoryItemLink("player", this:GetID());
		end
		if ( ( itmLink ~= nil ) and ( itmLink ~= "" ) ) then
			if ( button == "LeftButton" ) then
				if ( ( NuNGNoteFrame:IsVisible() ) or ( NuNFrame:IsVisible() ) ) then
					if ( NuNGNoteFrame:IsVisible() ) then
						local cText = NuNGNoteTextScroll:GetText().."\n"..itmLink;
						NuNGNoteTextScroll:SetText(cText);
						return;
					elseif ( NuNFrame:IsVisible() ) then
						local cText = NuNText:GetText().."\n"..itmLink;
						NuNText:SetText(cText);
						return;
					end
				else
					NuNGNoteFrame.fromQuest = nil;
					if ( ( NuNData[pKey][Notes][itmLink] ) or ( NuNData[Notes][itmLink] ) ) then
						c_note = itmLink;
						NuN_ShowSavedGNote();
					else
						NuN_GNoteFromItem(itmLink, "GameTooltip");
					end
					return;
				end
			end
		end
	end

	NuNOri_PaperDollItemSlotButton_OnClick(button);
end

function NuNNew_QuestLogRewardItem_OnClick()
	if ( ( IsShiftKeyDown() ) and ( IsAltKeyDown() ) and ( this.rewardType ~= "spell" ) ) then
		local itmLink = GetQuestLogItemLink(this.type, this:GetID());
		if ( ( itmLink ~= nil ) and ( itmLink ~= "" ) ) then
			local sLink = NuN_GetSimpleName(itmLink);
			if ( ( NuNGNoteFrame:IsVisible() ) and ( sLink == prevLink ) ) then
				HideUIPanel(NuNGNoteFrame);
			else
				prevLink = sLink;
				NuNGNoteFrame.fromQuest = nil;
				if ( ( NuNData[pKey][Notes][itmLink] ) or ( NuNData[Notes][itmLink] ) ) then
					c_note = itmLink;
					NuN_ShowSavedGNote();
				else
					NuN_GNoteFromItem(itmLink, "GameTooltip");
					local q = GetQuestLogSelection();
					if ( q ) then
						q = GetQuestLogTitle(q);
						if ( q ) then
							if ( NuNGNoteFrame:IsVisible() ) then
								NuNGNoteTextScroll:SetText( NuNGNoteTextScroll:GetText().."\n"..NUN_QUEST..q );
							end
						end
					end
				end
			end
			return;
		end
	end

	NuNOri_QuestLogRewardItem_OnClick();
end

function NuNNew_QuestItem_OnClick()
	if ( ( IsShiftKeyDown() ) and ( IsAltKeyDown() ) and ( this.rewardType ~= "spell" ) ) then
		local itmLink = GetQuestItemLink(this.type, this:GetID());
		if ( ( itmLink ~= nil ) and ( itmLink ~= "" ) ) then
			local sLink = NuN_GetSimpleName(itmLink);
			if ( ( NuNGNoteFrame:IsVisible() ) and ( sLink == prevLink ) ) then
				HideUIPanel(NuNGNoteFrame);
			else
				prevLink = sLink;
				NuNGNoteFrame.fromQuest = nil;
				if ( ( NuNData[pKey][Notes][itmLink] ) or ( NuNData[Notes][itmLink] ) ) then
					c_note = itmLink;
					NuN_ShowSavedGNote();
				else
					NuN_GNoteFromItem(itmLink, "GameTooltip");
					local giver = QuestFrameNpcNameText:GetText();
					local quest = QuestTitleText:GetText();
					if ( giver ) then
						giver = "\n"..giver.."\n"..NuN_GetLoc();
					end
					if ( quest ) then
						giver = giver.."\n"..NUN_QUEST..quest;
					end
					if ( giver ) then
						NuNGNoteTextScroll:SetText( NuNGNoteTextScroll:GetText()..giver );
					end
				end
			end
			return;
		end
	end

	NuNOri_QuestItem_OnClick();
end

function NuNNew_QuestRewardItem_OnClick()
	if ( ( IsShiftKeyDown() ) and ( IsAltKeyDown() ) and ( this.rewardType ~= "spell" ) ) then
		local itmLink = GetQuestItemLink(this.type, this:GetID());
		if ( ( itmLink ~= nil ) and ( itmLink ~= "" ) ) then
			local sLink = NuN_GetSimpleName(itmLink);
			if ( ( NuNGNoteFrame:IsVisible() ) and ( sLink == prevLink ) ) then
				HideUIPanel(NuNGNoteFrame);
			else
				prevLink = sLink;
				NuNGNoteFrame.fromQuest = nil;
				if ( ( NuNData[pKey][Notes][itmLink] ) or ( NuNData[Notes][itmLink] ) ) then
					c_note = itmLink;
					NuN_ShowSavedGNote();
				else
					NuN_GNoteFromItem(itmLink, "GameTooltip");
				end
			end
			return;
		end
	end

	NuNOri_QuestRewardItem_OnClick();
end

function NuNNew_AbandonQuest()
	local qN = GetAbandonQuestName();
	timeSinceLastUpdate = 0;
	NuN_IgnoreNextQUpdate = true;
	NuN_AbandonQuest(qN);
	NuNOri_AbandonQuest();
end

function NuNNew_QuestDetailAcceptButton_OnClick()
	NuNOri_QuestDetailAcceptButton_OnClick();
	NuN_QuestAccepted = GetTitleText();
end

function NuNNew_QuestRewardCompleteButton_OnClick()
	local qN = GetTitleText();
	NuN_QuestHandIn(qN);
	NuNOri_QuestRewardCompleteButton_OnClick();
end

-------------------------------------------------------------------------------------------
-- Attempt to Hook MapNotes functions

function NuNNew_MapNotes_OnEnter(id)
	if ( NuNPopup:IsVisible() ) then
		return;
	end
	NuNOri_MapNotes_OnEnter(id);
	NuN_WorldMapTooltip_OnShow(id);
end

function NuNNew_MapNotes_OnLeave(id)
	if ( NuNPopup:IsVisible() ) then
		popUpHide = true;
		return;
	end
	NuNOri_MapNotes_OnLeave(id);
end

function NuNNew_MapNotes_DeleteNote(id, cont, zone)
	local lId = id;
	local lCont, lZone, lLst;
	if ( id > 0 ) then
		lCont, lZone, lLst = NuN_PreDeleteMapIndex(id, cont, zone);
	end
	NuNOri_MapNotes_DeleteNote(id, cont, zone);
	if ( ( lId > 0 ) and ( cont ~= 0 ) ) then
		NuN_DeleteMapIndex(lId, lCont, lZone, lLst);
	end
end

-------------------------------------------------------------------------------------------
-- Attempt to Hook MetaMapNotes functions

function NuNNew_MetaMapNotes_OnEnter(id)
	if ( NuNPopup:IsVisible() ) then
		return;
	end
	NuNOri_MetaMapNotes_OnEnter(id);
	WorldMapTooltip:SetScale(NuNSettings[pKey].mScale);
	WorldMapTooltip:Show();
	NuN_WorldMapTooltip_OnShow(id);
end

function NuNNew_MetaMapNotes_OnLeave(id)
	if ( NuNPopup:IsVisible() ) then
		popUpHide = true;
		return;
	end
	NuNOri_MetaMapNotes_OnLeave(id);
end

function NuNNew_MetaMapNotes_DeleteNote(id, cont, zone)
	local lId = id;
	local lCont, lZone, lLst;
	if ( id > 0 ) then
		lCont, lZone, lLst = NuN_PreDeleteMapIndex(id, cont, zone);
	end
	NuNOri_MetaMapNotes_DeleteNote(id, cont, zone);
	if ( ( lId > 0 ) and ( cont ~= 0 ) ) then
		NuN_DeleteMapIndex(lId, lCont, lZone, lLst);
	end
end

-------------------------------------------------------------------------------------------


function NuN_GNoteFromItem(link, theTT)
	local catTxt = "";

	catTxt = NuN_ExtractTooltipInfo(catTxt, theTT);
	c_note = link;
	c_type = NuNGet_CommandID(noteTypes, "ITM");
	NuN_ShowTitledGNote(catTxt);
end


function NuN_ExtractTooltipInfo(xTTText, theTT)
	local lftTxt, rgtTxt, needRight;
	local endLine = "\n";
	local tmpTxt;
	local foundTTInfo = false;
	local ttLLen = NUN_TT_LEN;

	if ( NuNSettings[pKey].ttLLen ) then
		if ( NuNSettings[pKey].ttLLen == "" ) then
			ttLLen = 0;
		else
			ttLLen = tonumber( NuNSettings[pKey].ttLLen );
		end
	end

	for i=2, 23, 1 do
		lftTxt = getglobal(theTT.."TextLeft"..i):GetText();
		rgtTxt = getglobal(theTT.."TextRight"..i):GetText();
		needRight = false;
		tmpTxt = "";
		if ( lftTxt ~= nil ) then
			if ( ( string.find(lftTxt, "\"" ) ) or ( ( string.find(lftTxt, "/") ) and ( string.find(lftTxt, "\)") ) ) ) then
				tmpTxt = NUN_GOLD..lftTxt;
			elseif ( string.find(lftTxt, ":") ) then
				tmpTxt = NUN_GREEN..lftTxt;
			else
				tmpTxt = NUN_WHITE..lftTxt;
			end
			if ( rgtTxt ~= nil ) then
				needRight = NuN_TestLeftTT(lftTxt);
				if ( needRight ) then
					local lLen = string.len(lftTxt);
					local rLen = string.len(rgtTxt);
					local spaces = ttLLen - (lLen + rLen) - 10;
					local pad = string.rep(" ", spaces);
					tmpTxt = tmpTxt..pad..rgtTxt;
				end
			end
			xTTText = xTTText..tmpTxt..NUN_C_END..endLine;
			foundTTInfo = true;
		end
	end

	return xTTText;
end



function NuN_TestLeftTT(lftTxt)
	if ( string.find(lftTxt, NUN_HAND ) ) or ( string.find(lftTxt, NUN_HAND2) ) or ( string.find(lftTxt, NUN_FEET ) ) or ( string.find(lftTxt, NUN_LEGS ) ) or ( string.find(lftTxt, NUN_HEAD ) ) or ( string.find(lftTxt, NUN_WAIST ) ) or ( string.find(lftTxt, NUN_SHOULDER ) ) or ( string.find(lftTxt, NUN_CHEST ) ) or ( string.find(lftTxt, NUN_WRIST ) ) or ( string.find(lftTxt, NUN_DAMAGE ) ) then
		return true;
	else
		return false;
	end
end



function NuN_Who()
	local wName = nil;
	local wGuildName = nil;
	local wRace = nil;
	local wClass = nil;
	local bttnHeadingText1;
	local bttnDetailText1;

	SendWho(c_name);

	local n = GetNumWhoResults();
	for i = 1, n, 1 do
		wName = GetWhoInfo(i);
		if ( wName == c_name ) then
			wName, wGuildName, wLvl, wRace, wClass, wZone = GetWhoInfo(i);
			if ( wGuildName ~= nil ) then
				c_guild = wGuildName;
			end
			bttnHeadingText1 = getglobal("NuNTitleButton1ButtonTextHeading");
			bttnDetailText1 = getglobal("NuNInforButton1ButtonTextDetail");
			if ( bttnHeadingText1:GetText() == dfltHeadings[1] ) and ( wGuildName ~= nil) then
				bttnDetailText1:SetText(wGuildName);
				c_guild = wGuildName;
				if ( wGuildName == "" ) then
					bttnChanges[6] = 1;
				else
					bttnChanges[6] = wGuildName;
				end
			end
			if ( wClass ~= nil ) then
				c_class = wClass;
				ddClass = NuNGet_TableID(Classes, c_class);
				UIDropDownMenu_SetSelectedID(NuNClassDropDown, ddClass);
				UIDropDownMenu_SetText(c_class, NuNClassDropDown);
			end
			if ( wRace ~= nil ) then
				c_race = wRace;
				ddRace = NuNGet_TableID(Races, c_race);
				UIDropDownMenu_SetSelectedID(NuNRaceDropDown, ddRace);
				UIDropDownMenu_SetText(c_race, NuNRaceDropDown);
			end
		end
	end
end



function NuN_Target()
	local lName;
	local lRace;
	local lClass;
	local lSex;
	local lPvPRank;
	local lPvPRankID;
	local lgName;
	local lgRank;
	local lgRankIndex;
	local theUnitID = nil;

	if ( ( UnitInParty("target") ) or ( UnitInRaid("target") ) ) then
		theUnitID = "target";
	end

	if ( theUnitID == nil ) then
		theUnitID = NuN_CheckPartyByName(c_name);
	end

	if ( theUnitID ==  nil ) then
		theUnitID = NuN_CheckRaidByName(c_name);
	end

	if ( theUnitID == nil ) then
		TargetByName(c_name);
		lName = UnitName("target");
		if ( lName == c_name ) then
			theUnitID = "target";
		else
			ClearTarget();
		end
	end

	if ( unitTest == true ) then
		unitTest = false;
	else
		if ( theUnitID ~= nil ) then
			lRace = UnitRace(theUnitID);
			if ( lRace ~= nil ) then
				c_race = lRace;
				ddRace = NuNGet_TableID(Races, c_race);
				UIDropDownMenu_SetSelectedID(NuNRaceDropDown, ddRace);
				UIDropDownMenu_SetText(c_race, NuNRaceDropDown);
			end

			lClass = UnitClass(theUnitID);
			if ( lClass ~= nil ) then
				c_class = lClass;
				ddClass = NuNGet_TableID(Classes, c_class);
				UIDropDownMenu_SetSelectedID(NuNClassDropDown, ddClass);
				UIDropDownMenu_SetText(c_class, NuNClassDropDown);
			end

			lSex = UnitSex(theUnitID);
			if ( lSex ~= nil ) then
				if ( lSex == 0 ) then
					lsex = NUN_MALE;
				else
					lsex = NUN_FEMALE;
				end
				ddSex = NuNGet_TableID(Sexes, lsex);
				UIDropDownMenu_SetSelectedID(NuNSexDropDown, ddSex);
				UIDropDownMenu_SetText(lsex, NuNSexDropDown);
			end

			lPvPRankID = UnitPVPRank(theUnitID);
			if ( lPvPRankID ~= nil ) and ( lPvPRankID > 0 ) then
				lPvPRank = GetPVPRankInfo(lPvPRankID);
				ddCRank = NuNGet_TableID(Ranks, lPvPRank);
				UIDropDownMenu_SetSelectedID(NuNCRankDropDown, ddCRank);
				UIDropDownMenu_SetText(lPvPRank, NuNCRankDropDown);
			end

			lgName, lgRank, lgRankIndex = GetGuildInfo(theUnitID);
			if ( lgName ~= nil ) then
				c_guild = lgName;
			end
			bttnHeadingText1 = getglobal("NuNTitleButton1ButtonTextHeading");
			bttnDetailText1 = getglobal("NuNInforButton1ButtonTextDetail");
			bttnHeadingText2 = getglobal("NuNTitleButton2ButtonTextHeading");
			bttnDetailText2 = getglobal("NuNInforButton2ButtonTextDetail");
			if ( lgName ~= "" ) and ( lgName ~= nil ) then
				if ( bttnHeadingText1:GetText() == dfltHeadings[1] ) then
					bttnDetailText1:SetText(lgName);
					bttnChanges[6] = lgName;
				end
				if ( bttnHeadingText2:GetText() == dfltHeadings[2] ) then
					if ( lgRankIndex == 0 ) then
						lgRankTxt = ( "GM : "..lgRank );
					else
						lgRankTxt = ( lgRankIndex.." : "..lgRank );
					end
					bttnDetailText2:SetText(lgRankTxt);
					bttnChanges[7] = lgRankTxt;
				end
			end

			if ( theUnitID == "target" ) then
				for index = 1, getn(invSlotList), 1 do
					local text = GetInventoryItemLink(theUnitID, index);
					if ( text ) then
						local link = NuN_GetLink(text);
						if ( link ) then
							ItemRefTooltip:SetHyperlink(link);
							NuN_CheckSlot();
							if ( typeIndex ) then
								NuNText:SetText( NuNText:GetText() .. "\n" .. invSlotList[typeIndex].name .. text );
							else
								NuNText:SetText( NuNText:GetText() .. "\n" .. text );
							end
						end
					end
				end
			end

		end
	end
	return theUnitID;
end



function NuN_CheckSlot()
	local lftTxt;

	typeIndex = nil;
	NuN_Fingers = 0;
	NuN_Trinkets = 0;
	NuN_Hand = 0;
	for i=2, 5, 1 do
		lftTxt = getglobal("ItemRefTooltipTextLeft"..i):GetText();
		if ( lftTxt ) then
			typeIndex = NuN_Wearable(lftTxt);
			if ( typeIndex ~= nil ) then
				break;
			end
		end
	end
end



function NuN_Wearable(txt)
	if ( string.find(txt, NUN_HEAD) ) then
		return  1;
	elseif ( string.find(txt, NUN_NECK) ) then
		return  2;
	elseif ( string.find(txt, NUN_SHOULDER) ) then
		return  3;
	elseif ( string.find(txt, NUN_SHIRT) ) then
		return  4;
	elseif ( string.find(txt, NUN_CHEST) ) then
		return  5;
	elseif ( string.find(txt, NUN_WAIST) ) then
		return  6;
	elseif ( string.find(txt, NUN_LEGS) ) then
		return  7;
	elseif ( string.find(txt, NUN_FEET) ) then
		return  8;
	elseif ( string.find(txt, NUN_WRIST) ) then
		return  9;
	elseif ( string.find(txt, NUN_HANDS) ) then
		return 10;
	elseif ( string.find(txt, NUN_FINGER) ) then
		NuN_Fingers = NuN_Fingers + 1;
		return 11 + NuN_Fingers;
	elseif ( string.find(txt, NUN_TRINKET) ) then
		NuN_Trinkets = NuN_Trinkets + 1;
		return 13 + NuN_Trinkets;
	elseif ( string.find(txt, NUN_BACK) ) then
		return 15;
	elseif ( string.find(txt, NUN_HAND) ) then
		NuN_Hand = NuN_Hand + 1;
		return 16 + NuN_Hand;
	elseif ( string.find(txt, NUN_HAND2) ) then
		return 16;
	elseif ( string.find(txt, NUN_GUN) ) or ( string.find(txt, NUN_RANGED) ) or ( string.find(txt, NUN_BOW_U) ) or ( string.find(txt, NUN_BOW_L) ) or ( string.find(txt, NUN_WAND) or ( string.find(txt, NUN_THROWN) ) ) then
		return 18;
	elseif ( string.find(txt, NUN_TABARD) ) then
		return 19;
	else
		return nil;
	end
end



function NuN_Delete()
	if ( NuNData[pKey][c_name] ) then
		NuNData[pKey][c_name] = nil;
	end

	for n = 1, uBttns, 1 do
		nameHdNbr = c_name..pHead..n;
		nameDtNbr = c_name..pDetl..n;
		if ( NuNData[pKey][nameHdNbr] ) then
			NuNData[pKey][nameHdNbr] = nil;
		end
		if ( NuNData[pKey][nameDtNbr] ) then
			NuNData[pKey][nameDtNbr] = nil;
		end
	end
	if ( NuN_CTTCheckBox:GetChecked() ) then
		NuN_ClearPinnedTT();
	end
	NuN_HideFrame();
	if ( ( NuNSearchFrame:IsVisible() ) and ( not string.find(NuNSearchTitleText:GetText(), NUN_QUESTS_TEXT) ) ) then
		deletedE = true;
		NuNSearch_Search();
	end
	if ( FriendsListFrame:IsVisible() ) then
		NuNNew_FriendsList_Update();
	elseif ( IgnoreListFrame:IsVisible() ) then
		NuNNew_IgnoreList_Update();
	elseif ( GuildPlayerStatusFrame:IsVisible() ) then
		NuNNew_GuildStatus_Update();
	elseif ( GuildStatusFrame:IsVisible() ) then
		NuNNew_GuildStatus_Update();
	elseif ( WhoFrame:IsVisible() ) then
		NuNNew_WhoList_Update();
	end
end

function NuNGNote_Delete()
	local c_note = NuNGNoteTitleButtonText:GetText();
	if ( NuNGNoteFrame.fromQuest ) then
		NuNData[pKey].QuestHistory[pName][c_note] = nil;
		HideUIPanel(NuNGNoteFrame);
		if ( NuNSearchFrame:IsVisible() ) then
			deletedE = true;
			NuN_FetchQuestHistory();
		end
	else
		if ( string.find(c_note, "|Hitem:") ) then
			NuN_DeleteItem(c_note);
		end
		if ( NuNData[pKey][Notes][c_note] ) then
			NuNData[pKey][Notes][c_note] = nil;
		elseif ( NuNData[Notes][c_note] ) then
			NuNData[Notes][c_note] = nil;
		end
		if ( NuN_GTTCheckBox:GetChecked() ) then
			NuN_ClearPinnedTT();
		end
		HideUIPanel(NuNGNoteFrame);
		if ( NuNSearchFrame:IsVisible() ) then
			deletedE = true;
			NuNSearch_Search();
		end
		if ( ( QuestLogFrame:IsVisible() ) and ( not NuNGNoteFrame.fromQuest ) ) then
			NuNNew_QuestLog_Update();
		end
		NuN_UpdateMapNotesIndex(c_note);
	end
end



function NuNOptions_ResetDefaults()
	NuNSettings[pKey] = {};
	NuNSettings[pKey].autoG = nil;
	NuNSettings[pKey].autoA = nil;
	NuNSettings[pKey].autoD = nil;
	NuNSettings[pKey].toolTips = "1";
	NuNSettings[pKey].pScale = 1.00;
	NuNSettings[pKey].tScale = 1.00;
	NuNSettings[pKey].mScale = 1.00;
	NuN_PinnedTooltip:SetScale(1);
	NuN_Tooltip:SetScale(1);
	WorldMapTooltip:SetScale(1);
	NuN_MapTooltip:SetScale(1);
	NuNPopup:SetScale(1);
	NuNSettings[pKey].dLevel = "1";
	NuNSettings[pKey].autoQ = nil;
	NuNSettings[pKey].autoN = nil;
	NuNSettings[pKey].autoP = nil;
	NuNSettings[pKey].minOver = "1";
	NuNSettings[pKey].ttLen = NUN_TT_MAX;
	NuNSettings[pKey].ttLLen = NUN_TT_LEN;
	NuNSettings[pKey].hideMicro = nil;
	HideUIPanel(NuNOptionsFrame);
	NuNFrame:SetUserPlaced(0);
	NuNFrame:ClearAllPoints();
	NuNFrame:SetPoint("CENTER", UIParent, "CENTER", 220, 15);
	NuNGNoteFrame:SetUserPlaced(0);
	NuNGNoteFrame:ClearAllPoints();
	NuNGNoteFrame:SetPoint("CENTER", UIParent, "CENTER", 250, -15);
	NuNSearchFrame:SetUserPlaced(0);
	NuNSearchFrame:ClearAllPoints();
	NuNSearchFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 60, -144);
	if ( NuNMicroFrame:IsVisible() ) then
		HideUIPanel(NuNMicroFrame);
	end
	NuNMicroFrame:SetUserPlaced(0);
	NuNMicroFrame:ClearAllPoints();
	NuNMicroFrame:SetPoint("TOP", UIParent, "TOP", 0, -30);
	ShowUIPanel(NuNMicroFrame);
	NuN_Options();
end



function NuNOptions_Import()
	local x;
	local index;
	local value;
	local isInGuild = false;
	local lGuild = GetGuildInfo("player");
	if ( lGuild ~= nil ) then
		isInGuild = true;
	end

	NuN_importing = true;
	for index, value in NuNData[pKey] do
		if ( ( NuNData[pKey][index].faction ) and ( index == pName ) ) then
			NuNData[pKey][index].type = NUN_SELF_C;
		elseif ( ( NuNData[pKey][index].faction == pFaction ) and ( index ~= pName ) ) then
			if ( NuNData[pKey][index].ignoreLst ) then
				if ( not NuN_Is_Ignored(index) ) then
					if ( NuN_NotInfiniteIgored(index) ) then
						if ( AddIgnore(index) ) then
							x = getn(NuNData[pKey][index].ignoreLst) + 1;
							NuNData[pKey][index].ignoreLst[x] = pName;
						end
					end
				end
			elseif  ( ( isInGuild ) and ( NuNData[pKey][index].guild == lGuild ) and ( not NuNSettings[pKey].autoG ) ) then
				-- Forget this entry as they are guild mates with current player and settings say not to add as friend
			elseif ( NuNData[pKey][index].friendLst ) then
				if ( not NuN_Is_Friendly(index) ) then
					AddFriend(index);
					if ( not NuNData[pKey][index].friendLst ) then
						NuNData[pKey][index].friendLst = {};
					end
					if ( not NuNGet_TableID(NuNData[pKey][index].friendLst, pName) ) then
						x = getn( NuNData[pKey][index].friendLst) + 1;
						NuNData[pKey][index].friendLst[x] = pName;
					end
				end
			end
		end
	end
	NuN_importing = false;
end

function NuNOptions_Export()
	local iName;
	for i = 1, GetNumFriends(), 1 do
		iName = GetFriendInfo(i);
		if ( not NuNData[pKey][iName] ) then
			NuNData[pKey][iName] = {};
			NuNData[pKey][iName].type = NUN_AUTO_C;
			NuNData[pKey][iName].faction = pFaction;
			NuNData[pKey][iName][txtTxt] = NUN_AUTO_FRIEND..NuN_GetDateStamp();
			NuNData[pKey][iName].friendLst = {};
			NuNData[pKey][iName].friendLst[1] = pName;
		end
	end
	for i = 1, GetNumIgnores(), 1 do
		iName = GetIgnoreName(i);
		if ( not NuNData[pKey][iName] ) then
			NuNData[pKey][iName] = {};
			NuNData[pKey][iName].type = NUN_AUTO_C;
			NuNData[pKey][iName].faction = pFaction;
			NuNData[pKey][iName][txtTxt] = NUN_AUTO_IGNORE..NuN_GetDateStamp();
			NuNData[pKey][iName].ignoreLst = {};
			NuNData[pKey][iName].ignoreLst[1] = pName;
		end
	end
end



function NuNOptions_Search()
	local lDisplay = searchFor[ddSearch].Display;
	local lCommand = searchFor[ddSearch].Command;

	ddClassSearch = nil;
	ddProfSearch = nil;
	ddText = nil;
	lastBttnIndex = 0;
	lastBttn = nil;
	lastBttnDetl = nil;
	NuN_Filtered = nil;
	foundNuN = {};
	NuNSearchFrame:SetScale(NuNSettings[pKey].pScale);
	ShowUIPanel(NuNSearchFrame);
	HideUIPanel(NuNOptionsFrame);
	NuNSearchFrame.searchType = lDisplay;
	NuNSearchTitleText:SetText(lDisplay);
	NuNSearchFrameSearchButton:Enable();

	if ( ( lCommand == "All" ) or ( string.find(lCommand, "Notes") ) ) then
		NuNSearchClassDropDown:Hide();
		NuNSearchProfDropDown:Hide();
		NuNSearchTextBox:Hide();
		NuNSearch_Search();
	elseif ( lCommand == "Class" ) then
		UIDropDownMenu_ClearAll(NuNSearchClassDropDown);
		NuNSearchClassDropDown:Show();
		NuNSearchProfDropDown:Hide();
		NuNSearchTextBox:Hide();
		NuNSearch_Update();
	elseif ( lCommand == "Profession" ) then
		NuNSearchClassDropDown:Hide();
		UIDropDownMenu_ClearAll(NuNSearchProfDropDown);
		NuNSearchProfDropDown:Show();
		NuNSearchTextBox:Hide();
		NuNSearch_Update();
	elseif ( lCommand == "Quest History" ) then
		NuNSearchFrameSearchButton:Disable();
		NuNSearchClassDropDown:Hide();
		NuNSearchProfDropDown:Hide();
		NuNSearchTextBox:Hide();
		NuNSearchTitleText:SetText(NUN_QUESTS_TEXT.." : "..pName);
		NuN_FetchQuestHistory();
	else
		NuNSearchClassDropDown:Hide();
		NuNSearchProfDropDown:Hide();
--		NuNSearchTextBox:SetText("");
		NuNSearchTextBox:Show();
		NuNSearchTextBox:SetFocus();
--		NuNSearch_Update();
		NuNSearch_Search();
	end
end



function NuNSearch_Search()
	local index;
	local value;
	local tstTxt;
	local srchText;
	local countH = 0;
	local countA = 0;
	local countN = 0;
	local classType;
	local searchType = searchFor[ddSearch].Command;
	local subType = "";
	local noteType = 0;
	local results = 0;
	if ( searchType == "Class" ) then
		classType = AllClasses[ddClassSearch];
	end
	if ( string.find(searchType, "Notes:") ) then
		subType = string.sub(searchType, 7);
		searchType = string.sub(searchType, 1, 5);
	end

	foundNuN = {};
	foundHNuN = {};
	foundANuN = {};
	foundNNuN = {};

	for index, value in NuNData[pKey] do
		if ( searchType == "All" ) then
			if ( NuNData[pKey][index].faction == "Horde" ) then
				countH = countH + 1;
				foundHNuN[countH] = index;
			elseif ( NuNData[pKey][index].faction == "Alliance" ) then
				countA = countA + 1;
				foundANuN[countA] = index;
			end
		elseif ( searchType == "Class" ) then
			if ( NuNData[pKey][index].faction == "Horde" ) then
				if ( HClasses[NuNData[pKey][index].cls] == classType ) then
					countH = countH + 1;
					foundHNuN[countH] = index;
				end
			elseif ( NuNData[pKey][index].faction == "Alliance" ) then
				if ( AClasses[NuNData[pKey][index].cls] == classType ) then
					countA = countA + 1;
					foundANuN[countA] = index;
				end
			end
		elseif ( searchType == "Profession" ) then
			if ( NuNData[pKey][index].faction == "Horde" ) then
				if ( ( NuNData[pKey][index].prof1 == ddProfSearch ) or ( NuNData[pKey][index].prof2 == ddProfSearch ) ) then
					countH = countH + 1;
					foundHNuN[countH] = index;
				end
			elseif ( NuNData[pKey][index].faction == "Alliance" ) then
				if ( ( NuNData[pKey][index].prof1 == ddProfSearch ) or ( NuNData[pKey][index].prof2 == ddProfSearch ) ) then
					countA = countA + 1;
					foundANuN[countA] = index;
				end
			end
		elseif ( searchType == "Text" ) then
			tstTxt = NuNSearchTextBox:GetText();
			if ( NuNData[pKey][index].txt ) then
				srchText = NuN_GetCText(index);
				if ( srchText == nil ) then
					srchText = "";
				end
				if ( ( string.find(srchText, tstTxt) ) or ( string.find(NuNData[pKey][index].txt, tstTxt) ) or ( string.find(index, tstTxt) ) ) then
					local tName = index;
					if ( not NuNData[pKey][index].faction ) then
						tName = nil;
						local pos = string.find(index, pDetl);
						if ( pos == nil ) then
							pos = string.find(index, pHead);
							if ( pos ~= nil ) then
								tName = string.sub(index, 1, (pos - 1));
							end
						else
							tName = string.sub(index, 1, (pos - 1));
						end
					end
					if ( tName ~= nil ) then
						if ( NuNData[pKey][tName].faction == "Horde" ) then
							if ( NuNGet_TableID(foundHNuN, tName) == nil ) then
								countH = countH + 1;
								foundHNuN[countH] = tName;
							end
						else
							if ( NuNGet_TableID(foundANuN, tName) == nil ) then
								countA = countA + 1;
								foundANuN[countA] = tName;
							end
						end
					end
				end
			end
		end
	end

	for index, value in NuNData[pKey][Notes] do
		if ( ( NuNData[pKey][Notes][index] ) and ( NuNData[pKey][Notes][index].type ) ) then
			noteType = NuNData[pKey][Notes][index].type;
		else
			noteType = 1;
		end
		if ( ( searchType == "All" ) or ( searchType == "Notes" ) ) then
			if ( ( subType == "" ) or ( ( subType == "Generic" ) and ( noteType == 1 ) ) or ( ( subType == "Items" ) and ( noteType == 2 ) ) or ( ( subType == "Logs" ) and ( noteType == 3 ) ) or ( ( subType == "NPCs" ) and ( noteType == 4 ) ) or ( ( subType == "Quests" ) and ( noteType == 5 ) ) ) then
				countN = countN + 1;
				foundNNuN[countN] = index;
			end
		elseif ( searchType == "Text" ) then
			tstTxt = NuNSearchTextBox:GetText();
			srchText = NuN_GetGText(index);
			if ( srchText == nil ) then
				srchText = "";
			end
			if ( ( string.find(srchText, tstTxt)) or ( string.find(index, tstTxt ) ) ) then
				countN = countN + 1;
				foundNNuN[countN] = index;
			end
		end
	end

	for index, value in NuNData[Notes] do
		if ( ( NuNData[Notes][index] ) and ( NuNData[Notes][index].type ) ) then
			noteType = NuNData[Notes][index].type;
		else
			noteType = 1;
		end
		if ( ( searchType == "All" ) or ( searchType == "Notes" ) ) then
			if ( ( subType == "" ) or ( ( subType == "Generic" ) and ( noteType == 1 ) ) or ( ( subType == "Items" ) and ( noteType == 2 ) ) or ( ( subType == "Logs" ) and ( noteType == 3 ) ) or ( ( subType == "NPCs" ) and ( noteType == 4 ) ) or ( ( subType == "Quests" ) and ( noteType == 5 ) ) ) then
				countN = countN + 1;
				foundNNuN[countN] = index;
			end
		elseif ( searchType == "Text" ) then
			tstTxt = NuNSearchTextBox:GetText();
			srchText = NuN_GetGText(index);
			if ( srchText == nil ) then
				srchText = "";
			end
			if ( ( string.find(srchText, tstTxt)) or ( string.find(index, tstTxt ) ) ) then
				countN = countN + 1;
				foundNNuN[countN] = index;
			end
		end
	end

	table.sort(foundANuN);
	table.sort(foundHNuN);
	table.sort(foundNNuN);
	NuN_DefaultSort();

	if ( ( searchType ~= "Class" ) and ( searchType ~= "Profession" ) ) then
		NuNSearchTextBox:Show();
		ddSearch = NuNGet_CommandID(searchFor, "Text");
		if ( NuN_Filtered ) then
			local tmpNuN = {};
			local c = 0;

			for i=1, getn(foundNuN), 1 do
				if ( NuNGet_TableID(NuN_Filtered, foundNuN[i]) ) then
					c = c + 1;
					tmpNuN[c] = foundNuN[i];
				end
			end
			foundNuN = tmpNuN;
		else
			NuN_Filtered = foundNuN;
		end
	end

	results = getn(foundNuN);
	NuNSearchTitleText:SetText(NuNSearchFrame.searchType.." ("..results..")");

	NuNSearch_Update();
	if ( ( deletedE ) and ( visibles > 0 ) and ( lastBttn ~= nil ) ) then
		deletedE = false;
		if ( lastBttnIndex > visibles ) then
			NuNSearch_HighlightRefresh(lastVisible);
			NuNSearchNote_OnClick(lastVisible);
		else
			NuNSearch_HighlightRefresh(lastBttn);
			NuNSearchNote_OnClick(lastBttn);
		end
	else
		NuNSearch_HighlightRefresh(nil);
	end
end



function NuN_DefaultSort()
	if ( horde ) then
		NuN_copyT(foundNuN, foundHNuN, NUN_HORD_C);
		NuN_copyT(foundNuN, foundANuN, NUN_ALLI_C);
		NuN_copyT(foundNuN, foundNNuN, NUN_NOTE_C);
	else
		NuN_copyT(foundNuN, foundANuN, NUN_ALLI_C);
		NuN_copyT(foundNuN, foundHNuN, NUN_HORD_C);
		NuN_copyT(foundNuN, foundNNuN, NUN_NOTE_C);
	end
end



function NuN_copyT(t1, t2, c_prefix)
	local i1 = getn(t1);
	for i2=1, getn(t2), 1 do
		i1 = i1 + 1;
		t1[i1] = c_prefix..t2[i2];
	end
end



function NuNSearch_Back()
	if ( NuNFrame:IsVisible() ) then
		NuN_HideFrame();
	end
	if ( NuNGNoteFrame:IsVisible() ) then
		HideUIPanel(NuNGNoteFrame);
	end
	HideUIPanel(NuNSearchFrame);
	NuNOptionsFrame:SetScale(NuNSettings[pKey].pScale);
	NuN_Options();
end



function NuNSearch_Update()
	local theNoteIndex;
	local theOffsetNoteIndex;
	local theNote;
	local theNoteHFlag;
	local theNoteAFlag;
	local theNoteNFlag;
	local numNuNFound = getn(foundNuN);

	NuN_CheckQuestList();

	visibles = 0;
	FauxScrollFrame_Update(NuNSearchListScrollFrame, numNuNFound, NUN_SHOWN, NUN_NOTE_HEIGHT);
	for theNoteIndex=1, NUN_SHOWN, 1 do
		theOffsetNoteIndex = theNoteIndex + FauxScrollFrame_GetOffset(NuNSearchListScrollFrame);
		theNote = getglobal( "NuNSearchNote"..theNoteIndex );
		if ( theOffsetNoteIndex > numNuNFound ) then
			theNote:Hide();
		else
			theNote:SetTextColor(1, 0.82, 0, 1);
			theNoteHFlag = getglobal( "NuNSearchNote"..theNoteIndex.."FrameHFlag" );
			theNoteAFlag = getglobal( "NuNSearchNote"..theNoteIndex.."FrameAFlag" );
			theNoteNFlag = getglobal( "NuNSearchNote"..theNoteIndex.."FrameNFlag" );
			theNoteLFlag = getglobal( "NuNSearchNote"..theNoteIndex.."FrameLFlag" );
			theNoteType = getglobal( "NuNSearchNote"..theNoteIndex.."FrameType" );
			theNoteLFlag:Hide();
			local typ = string.sub(foundNuN[theOffsetNoteIndex], 1, 1);
			local noteName = string.sub(foundNuN[theOffsetNoteIndex], 2);
			theNote:SetText( noteName );
			if ( typ == NUN_HORD_C ) then
				theNoteAFlag:Hide();
				theNoteNFlag:Hide();
				theNoteHFlag:Show();
			elseif ( typ == NUN_ALLI_C ) then
				theNoteHFlag:Hide();
				theNoteNFlag:Hide();
				theNoteAFlag:Show();
			elseif ( typ == NUN_QUEST_C ) then
				theNoteHFlag:Hide();
				theNoteAFlag:Hide();
				if ( ( NuNData[Notes][noteName] ) or ( NuNData[pKey][Notes][noteName] ) ) then
					theNoteNFlag:Show();
				else
					theNoteNFlag:Hide();
				end
			else
				theNoteHFlag:Hide();
				theNoteAFlag:Hide();
				theNoteNFlag:Show();
			end
			theNote.type = typ;
			if ( typ == NUN_HORD_C ) or ( typ == NUN_ALLI_C ) then
				if ( NuNData[pKey][noteName].type ) then
					typ = NuNData[pKey][noteName].type;
					if ( typ == NUN_AUTO_C ) then
						theNoteType:SetText(NUN_AUTO);
					elseif ( noteName == pName ) then
						theNoteType:SetText(NUN_PLAYER);
					elseif ( typ == NUN_SELF_C ) then
						theNoteType:SetText(NUN_SELF);
					elseif ( typ == NUN_MANU_C ) then
						theNoteType:SetText(NUN_MANU);
					elseif ( typ == NUN_PARTY_C ) then
						theNoteType:SetText(NUN_PARTY);
					else
						theNoteType:SetText("   ");
					end
				else
					theNoteType:SetText("   ");
				end
			elseif ( typ == NUN_QUEST_C ) then
				theNoteLFlag:Hide();
				if ( ( not NuNQuestLog[noteName] ) and ( ( NuNData[pKey].QuestHistory[pName][noteName].handedIn ) or ( NuNData[pKey].QuestHistory[pName][noteName].complete ) ) ) then
					theNoteLFlag:Show();
				elseif ( ( NuNData[pKey].QuestHistory[pName][noteName] ) and ( NuNData[pKey].QuestHistory[pName][noteName].abandoned ) ) then
					theNote:SetTextColor(0.9, 0, 0, 0.9);
				elseif ( NuNQuestLog[noteName] ) then
					theNote:SetTextColor(0, 0.9, 0, 0.9);
				end
				theNoteType:SetText(NuNData[pKey].QuestHistory[pName][noteName].pLevel);
			else
				if ( ( NuNData[pKey][Notes][noteName] ) and ( NuNData[pKey][Notes][noteName].type ) ) then
					typ = NuNData[pKey][Notes][noteName].type;
				elseif ( NuNData[Notes][noteName] ) then
					theNoteLFlag:Show();
					if ( NuNData[Notes][noteName].type ) then
						typ = NuNData[Notes][noteName].type;
					end
				else
					typ = 1;
				end
				theNoteType:SetText(noteTypes[typ].Display);
				if ( noteTypes[typ].Command == "QST" ) then
					if ( NuNQuestLog[noteName] ) then
						theNote:SetTextColor(0, 0.9, 0, 0.9);
					elseif ( ( NuNData[pKey].QuestHistory[pName][noteName] ) and ( NuNData[pKey].QuestHistory[pName][noteName].abandoned ) ) then
						theNote:SetTextColor(0.9, 0, 0, 0.9);
					end
				end
			end
			theNote:Show();
			visibles = visibles + 1;
			lastVisible = theNote;
			if ( theOffsetNoteIndex == lastBttnDetl ) then
				theNote:LockHighlight();
			else
				theNote:UnlockHighlight();
			end
		end
	end
end



function NuNSearchNote_OnEnter(bttnNote)
	local bttnName = bttnNote:GetName();
	local storePinned = NuN_PinnedTooltip.type;

	local x, y = GetCursorPosition();
	if ( x > 500 ) then
		NuN_Tooltip:SetOwner(this, "ANCHOR_LEFT");
	else
		NuN_Tooltip:SetOwner(this, "ANCHOR_RIGHT");
	end
	ttName = bttnNote:GetText();
	NuN_Tooltip:ClearLines();
	if ( bttnNote.type == "N" ) then
		NuN_PinnedTooltip.type = "General";
	elseif ( bttnNote.type == "A" ) or ( bttnNote.type == "H" ) then
		NuN_PinnedTooltip.type = "Contact";
	elseif ( bttnNote.type == NUN_QUEST_C ) then
		NuN_PinnedTooltip.type = "QuestHistory";
	end
	NuN_BuildTT(NuN_Tooltip);
	NuN_PinnedTooltip.type = storePinned;
	NuN_Fade = "False";
	NuN_Tooltip:Show();
end



function NuNSearchNote_OnClick(bttnNote)
	local noteName = bttnNote:GetText();
	local lclNote;
	local lclNoteHFlag;
	local lclNoteAFlag;
	local lclNoteNFlag;
	local lastBttnDetlN;
	local nType;

	if ( IsShiftKeyDown() ) then
		if ( ChatFrameEditBox:IsVisible() ) then
			ChatFrameEditBox:Insert(noteName);
		elseif ( NuNGNoteFrame:IsVisible() ) then
			local cText = NuNGNoteTextScroll:GetText().."\n"..noteName;
			NuNGNoteTextScroll:SetText(cText);
		elseif ( NuNFrame:IsVisible() ) then
			local cText = NuNText:GetText().."\n"..noteName;
			NuNText:SetText(cText);
		end
	else
		lastBttn = bttnNote;
		lastBttnIndex = bttnNote:GetID();
		lastBttnDetlN = bttnNote.type..noteName;
		lastBttnDetl = NuNGet_TableID(foundNuN, lastBttnDetlN);

		NuNSearch_HighlightRefresh(bttnNote);

		if ( ( bttnNote.type == NUN_HORD_C ) or ( bttnNote.type == NUN_ALLI_C ) ) then
			c_name = noteName;
			NuN_ShowSavedNote( c_name );
		else
			if ( bttnNote.type == NUN_QUEST_C ) then
				NuNGNoteFrame.fromQuest = "1";
				c_type = NuNGet_CommandID(noteTypes, "QST");
			else
				NuNGNoteFrame.fromQuest = nil;
			end
			c_note = noteName;
			if ( ( NuNData[Notes][c_note] ) or ( NuNData[pKey][Notes][c_note] ) ) then
				NuN_ShowSavedGNote();
			else
				NuN_ShowTitledGNote("");
			end
		end
	end
end



function NuNSearch_HighlightRefresh(tstNote)
	local theNote;
	for i=1, NUN_SHOWN, 1 do
		theNote = getglobal("NuNSearchNote"..i);
		if ( ( theNote == tstNote ) and ( theNote:IsVisible() ) ) then
			theNote:LockHighlight();
		else
			theNote:UnlockHighlight();
		end
	end
end



function NuN_DateStamp()
	NuNText:SetText(NuNText:GetText().."\n"..NuN_GetDateStamp());
end

function NuNGNote_DateStamp()
	NuNGNoteTextScroll:SetText(NuNGNoteTextScroll:GetText().."\n"..NuN_GetDateStamp());
end

function NuN_GetDateStamp()
	local dateStamp = date("%A, %d %B %Y  %H:%M:%S");
	dateStamp = NuN_LocaliseDateStamp(dateStamp);
	return dateStamp;
end



function NuN_Loc()
	NuNText:SetText(NuNText:GetText().."\n"..NuN_GetLoc());
end

function NuNGNote_Loc()
	NuNGNoteTextScroll:SetText(NuNGNoteTextScroll:GetText().."\n"..NuN_GetLoc());
end

function NuN_GetLoc()
	local locData = pName.."'s "..NUN_LOC.." : ";
	local myCID, myC, mySubZ, myZID, myZ, px, py, coords;
	local loc = false;

	myCID = GetCurrentMapContinent();
	if ( ( myCID ~= nil) and ( myCID > 0 ) ) then
		if c_continents[myCID] then
			myC = c_continents[myCID].name;
		end
	end
	if ( myC ~= nil ) then
		locData = locData..myC..", ";
		loc = true;
	end

	myZ = GetZoneText();
	if ( ( myZ == nil ) or ( myZ == "" ) ) then
		myZID = GetCurrentMapZone();
		if ( ( myZID ~= nil ) and ( myCID ~= nil ) and ( myCID > 0 ) ) then
			myZ = c_continents[myCID].zones[myZID];
		end
	end
	if ( ( myZ ~= nil ) and ( myZ ~= "" ) ) then
		locData = locData..myZ..", ";
	end


	mySubZ = GetSubZoneText();
	if ( ( mySubZ == nil ) or ( mySubZ == "" ) ) then
		mySubZ = GetMinimapZoneText();
	end
	if ( mySubZ ~= nil ) then
		locData = locData..mySubZ..", ";
		loc = true;
	end

	px, py = GetPlayerMapPosition("player");
    	if ( ( px ~= nil ) and ( py ~= nil ) ) then
        	coords = format("(%d, %d)", px * 100.0, py * 100.0);
		locData = locData..coords;
		loc = true; 
    	end
    	if ( loc == true ) then
		return locData;
	else
		return "";
	end
end



function NuN_AutoNote()
	if ( NuNSettings[pKey].autoN ) then
		local lName;
		local lRace;
		local lClass;
		local lSex;
		local lPvPRank;
		local lPvPRankID;
		local lgName;
		local lgRank;
		local lgRankIndex;
		local bttnKey;

		if ( pFaction ~= nil ) then
			NuNData[pKey][pName] = {};
			NuNData[pKey][pName].type = NUN_SELF_C;
			NuNData[pKey][pName].faction = pFaction;
			NuNData[pKey][pName][txtTxt] = "";
			lRace = UnitRace("player");
			if ( lRace ~= nil ) then
				ddRace = NuNGet_TableID(Races, lRace);
				NuNData[pKey][pName].race = ddRace;
			end
			lClass = UnitClass("player");
			if ( lClass ~= nil ) then
				ddClass = NuNGet_TableID(Classes, lClass);
				NuNData[pKey][pName].cls = ddClass;
			end
			lSex = UnitSex("player");
			if ( lSex ~= nil ) then
				NuNData[pKey][pName].sex = lSex + 1;
			end
			lPvPRankID = UnitPVPRank("player");
			if ( lPvPRankID ~= nil ) and ( lPvPRankID > 0 ) then
				lPvPRank = GetPVPRankInfo(lPvPRankID);
				ddCRank = NuNGet_TableID(Ranks, lPvPRank);
				NuNData[pKey][pName].crank = ddCRank;
			end
			lgName, lgRank, lgRankIndex = GetGuildInfo("player");
			if ( lgName ~= "" ) and ( lgName ~= nil ) then
				bttnKey = pName..pDetl.."1";
				NuNData[pKey][bttnKey] = {};
				NuNData[pKey][bttnKey].txt = lgName;
				bttnKey = pName..pDetl.."2";
				NuNData[pKey][bttnKey] = {};
				if ( lgRankIndex == 0 ) then
					NuNData[pKey][bttnKey].txt = ( "GM : "..lgRank );
				else
					NuNData[pKey][bttnKey].txt = ( lgRankIndex.." : "..lgRank );
				end
			end
		end
	end
end



function NuN_ClrDD()
	if ( lastDD == "Race" ) then
		UIDropDownMenu_ClearAll(NuNRaceDropDown);
		if ( ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].race ) ) then
			ddRace = -1;
		else
			ddRace = nil;
		end
	elseif ( lastDD == "Class" ) then
		UIDropDownMenu_ClearAll(NuNClassDropDown);
		if ( ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].cls ) ) then
			ddClass = -1;
		else
			ddClass = nil;
		end
	elseif ( lastDD == "Sex" ) then
		UIDropDownMenu_ClearAll(NuNSexDropDown);
		if ( ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].sex ) ) then
			ddSex = -1;
		else
			ddSex = nil;
		end
	elseif ( lastDD == "Prof1" ) then
		UIDropDownMenu_ClearAll(NuNProf1DropDown);
		if ( ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].prof1 ) ) then
			ddProf1 = -1;
		else
			ddProf1 = nil;
		end
	elseif ( lastDD == "Prof2" ) then
		UIDropDownMenu_ClearAll(NuNProf2DropDown);
		if ( ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].prof2 ) ) then
			ddProf2 = -1;
		else
			ddProf2 = nil;
		end
	elseif ( lastDD == "CRank" ) then
		UIDropDownMenu_ClearAll(NuNCRankDropDown);
		if ( ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].crank ) ) then
			ddCRank = -1;
		else
			ddCRank = nil;
		end
	elseif ( lastDD == "HRank" ) then
		UIDropDownMenu_ClearAll(NuNHRankDropDown);
		if ( ( NuNData[pKey][c_name] ) and ( NuNData[pKey][c_name].hrank ) ) then
			ddHRank = -1;
		else
			ddHRank = nil;
		end
	end
	lastDD = nil;
	NuNButtonClrDD:Disable();
end


function NuN_GTypeDependant_Setup()
	UIDropDownMenu_SetSelectedID(NuNGTypeDropDown, c_type);
	UIDropDownMenu_SetText(noteTypes[c_type].Display, NuNGTypeDropDown);
	if ( noteTypes[c_type].Command == "NPC" ) then
		NuNNPCTargetButton:Show();
	else
		NuNNPCTargetButton:Hide();
	end
end


function NuN_ShowSavedGNote()
	if ( ( NuNGNoteFrame:IsVisible() ) and ( prevNote == c_note ) ) then
		NuNGNoteFrame:Hide();
	else
		if ( ( NuNData[pKey][Notes][c_note] ) and ( NuNData[pKey][Notes][c_note].type ) ) then
			c_type = NuNData[pKey][Notes][c_note].type;
			NuNGNoteFrame.type = c_type;
			NuN_GTypeDependant_Setup();
		elseif ( ( NuNData[Notes][c_note] ) and ( NuNData[Notes][c_note].type ) ) then
			c_type = NuNData[Notes][c_note].type;
			NuNGNoteFrame.type = c_type;
			NuN_GTypeDependant_Setup();
		else
			c_type = NuNGet_CommandID(noteTypes, "   ");
			NuNGNoteFrame.type = c_type;
			NuN_GTypeDependant_Setup();
		end
		if ( NuNData[pKey][Notes][c_note] ) then
			NuN_GLevel_CheckBox:SetChecked(0);
		elseif ( NuNData[Notes][c_note] ) then
			NuN_GLevel_CheckBox:SetChecked(1);
		end
		NuN_GNote_OriTitle = c_note;
		prevNote = c_note;
		if ( NuNOptionsFrame:IsVisible() ) then
			HideUIPanel(NuNOptionsFrame);
		end
		if ( NuNcDeleteFrame:IsVisible() ) then
			HideUIPanel(NuNcDeleteFrame);
		end
		NuNGNoteFrame:SetScale(NuNSettings[pKey].pScale);
		ShowUIPanel(NuNGNoteFrame);
		NuNGNoteTextBox:Hide();
		g_text = NuN_GetGText(c_note);
		if ( g_text == "" ) then
			g_text = "\n";
		end
		NuNGNoteTextScroll:SetText(g_text);
		NuNGNoteTitleButtonText:SetText(c_note);
		NuNGNoteTitleButton:Show();
		if ( not NuNSettings[pKey].bHave ) then
			NuNGNoteTextScroll:SetFocus();
		end
		if ( NuNGNoteFrame.fromQuest ) then
			NuNGNoteHeader:SetText(NUN_QUEST_NOTE);
			NuNGNoteButtonDelete:Enable();
			NuNGNoteTitleButton:Disable();
			NuNGNoteButtonSaveNote:Disable();
		else
			NuNGNoteHeader:SetText(NUN_SAVED_NOTE);
			NuNGNoteButtonDelete:Disable();
			NuNGNoteTitleButton:Enable();
			NuNGNoteButtonSaveNote:Enable();
		end
		NuNGNoteButtonDateStamp:Enable();
		NuNGNoteButtonLoc:Enable();
		NuNGNoteButtonDelete:Enable();
		if ( ( MapNotes_OnLoad ) or ( MetaMapNotes_OnLoad ) ) then
			NuNMapNoteButton:Enable();
		end
		NuNGOpenChatButton:Enable();
		NuNGTTCheckBoxLabel:Show();
		NuN_GTTCheckBox:Show();
		NuN_GTTCheckBox:SetChecked(0);
		if ( NuN_PinnedTooltip.type == "General" ) then
			NuN_GTTCheckBox:SetChecked( NuN_CheckPinnedBox(c_note) );
		end
	end
end

function NuN_ShowTitledGNote(GNoteText)
	if ( ( NuNGNoteFrame:IsVisible() ) and ( prevNote == c_note ) ) then
		NuNGNoteFrame:Hide();
	else
		if ( NuNSettings[pKey].dLevel ) then
			NuN_GLevel_CheckBox:SetChecked(1);
		else
			NuN_GLevel_CheckBox:SetChecked(0);
		end
		prevNote = c_note;
		NuNGNoteFrame.type = c_type;
		NuN_GTypeDependant_Setup();
		NuN_GNote_OriTitle = nil;
		if ( NuNOptionsFrame:IsVisible() ) then
			HideUIPanel(NuNOptionsFrame);
		end
		if ( NuNcDeleteFrame:IsVisible() ) then
			HideUIPanel(NuNcDeleteFrame);
		end
		NuNGNoteFrame:SetScale(NuNSettings[pKey].pScale);
		ShowUIPanel(NuNGNoteFrame);
		NuNGNoteTextScroll:SetText(GNoteText);
		NuNGNoteTextBox:Hide();
		NuNGNoteTitleButtonText:SetText(c_note);
		NuNGNoteTitleButton:Show();
		if ( not NuNSettings[pKey].bHave ) then
			NuNGNoteTextScroll:SetFocus();
		end
		NuNGNoteButtonDateStamp:Enable();
		NuNGNoteButtonLoc:Enable();
		if ( NuNGNoteFrame.fromQuest ) then
			NuNGNoteHeader:SetText(NUN_QUEST_NOTE);
			NuNGNoteButtonDelete:Enable();
			if ( ( MapNotes_OnLoad ) or ( MetaMapNotes_OnLoad ) ) then
				NuNMapNoteButton:Enable();
			end
			NuNGNoteTitleButton:Disable();
			NuNGNoteButtonSaveNote:Disable();
		else
			NuNGNoteHeader:SetText(NUN_NEW_NOTE);
			NuNGNoteButtonDelete:Disable();
			NuNMapNoteButton:Disable();
			NuNGNoteTitleButton:Enable();
			NuNGNoteButtonSaveNote:Enable();
		end
		NuNGOpenChatButton:Disable();
		NuNGTTCheckBoxLabel:Hide();
		NuN_GTTCheckBox:Hide();
	end
end

function NuN_ShowNewGNote()
	local tstTxt = NuNGNoteTextBox:GetText();
	if ( ( NuNGNoteFrame:IsVisible() ) and ( NuNGNoteTextBox:IsVisible() ) and ( tstTxt == "" ) ) then
		NuNGNoteFrame:Hide();
	else
		if ( IsAltKeyDown() ) then
			NuN_LastOpen.type = "General";
			NuN_ReOpen();
			return;
		end

		if ( NuNSettings[pKey].dLevel ) then
			NuN_GLevel_CheckBox:SetChecked(1);
		else
			NuN_GLevel_CheckBox:SetChecked(0);
		end
		c_type = NuNGet_CommandID(noteTypes, "   ");
		NuNGNoteFrame.type = c_type;
		NuNGNoteFrame.fromQuest = nil;
		NuN_GTypeDependant_Setup();
		NuN_GNote_OriTitle = nil;
		if ( NuNOptionsFrame:IsVisible() ) then
			HideUIPanel(NuNOptionsFrame);
		end
		if ( NuNcDeleteFrame:IsVisible() ) then
			HideUIPanel(NuNcDeleteFrame);
		end
		if ( NuNGNoteFrame.fromQuest ) then
			NuNGNoteHeader:SetText(NUN_QUEST_NOTE);
		else
			NuNGNoteHeader:SetText(NUN_NEW_NOTE);
		end
		NuNGNoteButtonSaveNote:Disable();
		NuNGNoteFrame:SetScale(NuNSettings[pKey].pScale);
		ShowUIPanel(NuNGNoteFrame);
		NuNGNoteTextScroll:SetText("");
		NuNGNoteTitleButton:Hide();
		NuNGNoteTextBox:SetText("");
		NuNGNoteTextBox:Show();
		NuNGNoteTextBox:SetFocus();
		NuNGNoteButtonDelete:Disable();
		NuNMapNoteButton:Disable();
		NuNGOpenChatButton:Disable();
		NuNGTTCheckBoxLabel:Hide();
		NuN_GTTCheckBox:Hide();
	end
end



function NuN_OptionsGuildCheckBox_OnClick()
	if ( NuNOptionsGuildCheckButton:GetChecked() ) then
		NuNSettings[pKey].autoG = "1";
	else
		NuNSettings[pKey].autoG = nil;
	end
end

function NuN_OptionsAddCheckBox_OnClick()
	if ( NuNOptionsAddCheckButton:GetChecked() ) then
		NuNSettings[pKey].autoA = "1";
		NuN_Update_Friends();
		NuN_Update_Ignored();
	else
		NuNSettings[pKey].autoA = nil;
	end
end

function NuN_OptionsDeleteCheckBox_OnClick()
	if ( NuNOptionsDeleteCheckButton:GetChecked() ) then
		NuNSettings[pKey].autoD = "1";
		NuN_Update_Friends();
		NuN_Update_Ignored();
	else
		NuNSettings[pKey].autoD = nil;
	end
end

function NuN_DefaultLevelCheckBox_OnClick()
	if ( NuN_DefaultLevelCheckBox:GetChecked() ) then
		NuNSettings[pKey].dLevel = "1";
	else
		NuNSettings[pKey].dLevel = nil;
	end
end

function NuN_HelpTTCheckBox_OnClick()
	if ( NuN_HelpTTCheckBox:GetChecked() ) then
		NuNSettings[pKey].toolTips = "1";
	else
		NuNSettings[pKey].toolTips = nil;
	end
end

function NuN_AutoQuestCheckBox_OnClick()
	if ( NuN_AutoQuestCheckBox:GetChecked() ) then
		NuNSettings[pKey].autoQ = "1";
		NuN_UpdateQuestNotes("SwitchedOn");
	else
		NuNSettings[pKey].autoQ = nil;
	end
end

function NuN_AutoNoteCheckBox_OnClick()
	if ( NuN_AutoNoteCheckBox:GetChecked() ) then
		NuNSettings[pKey].autoN = "1";
		if ( not NuNData[pKey][pName] ) then
			NuN_AutoNote();
		end
	else
		NuNSettings[pKey].autoN = nil;
	end
end


function NuN_OnUpdate(arg1)
	if ( ( NuNMicroFrame:IsVisible() ) and ( MouseIsOver(NuNMicroFrame) ) ) then
		NuNMicroBorder:Show();
	else
		NuNMicroBorder:Hide();
	end

	if ( noTipAnchor ) then
		NuN_GameTooltip_OnShow();
	end

	timeSinceLastUpdate = timeSinceLastUpdate + arg1;
	if ( ( timeSinceLastUpdate > updateInterval ) and ( not UnitAffectingCombat("player") ) ) then
		if ( not NuNData[pKey][pName] ) then
			NuN_AutoNote();
		end
		if ( oneDone == true ) then
			oneDone = false;
			NuN_AtStartup = "False";
			NuN_QuestsUpdating = "False";
			if ( InfinateIgnore_Config ) then
				NuN_Update_Ignored();
			end
		else
			oneDone = true;
			if ( not QuestLogFrame:IsVisible() ) then
				NuN_CheckQuestList();
				if ( not NuN_IgnoreNextQUpdate ) then
					NuN_UpdateQuestNotes("Timed");
				end
			end
		end
		timeSinceLastUpdate = 0;
	end
end



function NuN_NewContact(unitType)
	local Friendly;

	if ( ( unitType == "target" ) and ( c_name ~= pName ) ) then
		if ( UnitIsFriend("player", "target") ) then
			Friendly = true;
		else
			Friendly = false;
		end
	else
		Friendly = true;
	end
	if ( ((horde) and (Friendly))  or  ((not horde) and (not Friendly)) ) then
		c_faction = "Horde";
		NuN_HordeSetup();
	else
		c_faction = "Alliance";
		NuN_AllianceSetup();
	end
	c_route = "Target";
	c_race = nil;
	c_class = nil;
	c_guild = nil;
	gRank = nil;
	gRankIndex = nil;
	gNote = nil;
	gOfficerNote = nil;
	NuN_ShowNote();
	NuN_Target();
	if ( c_name == pName ) then
		ClearTarget();
	end
end


function NuN_CreateContact(contactName, tFaction)
	c_name = contactName;
	c_route = "Create";
	if ( ( tFaction == "-ch" ) or ( tFaction == "Horde" ) ) then
		c_faction = "Horde";
		NuN_HordeSetup();
	else
		c_faction = "Alliance";
		NuN_AllianceSetup();
	end
	c_race = nil;
	c_class = nil;
	c_guild = nil;
	gRank = nil;
	gRankIndex = nil;
	gNote = nil;
	gOfficerNote = nil;
	NuN_ShowNote();
end


function NuN_HordeSetup()
	NuNRaceDropDown = NuNHRaceDropDown;
	NuNClassDropDown = NuNHClassDropDown;
	NuNCRankDropDown = NuNHCRankDropDown;
	NuNHRankDropDown = NuNHHRankDropDown;
	NuNARaceDropDown:Hide();
	NuNHRaceDropDown:Show();
	NuNAClassDropDown:Hide();
	NuNHClassDropDown:Show();
	NuNACRankDropDown:Hide();
	NuNHCRankDropDown:Show();
	NuNAHRankDropDown:Hide();
	NuNHHRankDropDown:Show();
	Classes = HClasses;
	Races = HRaces;
	Ranks = HRanks;
	NuNAFlag:Hide();
	NuNHFlag:Show();
end

function NuN_AllianceSetup()
	NuNRaceDropDown = NuNARaceDropDown;
	NuNClassDropDown = NuNAClassDropDown;
	NuNCRankDropDown = NuNACRankDropDown;
	NuNHRankDropDown = NuNAHRankDropDown;
	NuNHRaceDropDown:Hide();
	NuNARaceDropDown:Show();
	NuNHClassDropDown:Hide();
	NuNAClassDropDown:Show();
	NuNHCRankDropDown:Hide();
	NuNACRankDropDown:Show();
	NuNHHRankDropDown:Hide();
	NuNAHRankDropDown:Show();
	Classes = AClasses;
	Races = ARaces;
	Ranks = ARanks;
	NuNHFlag:Hide();
	NuNAFlag:Show();
end


function NuN_CheckPartyByName(parmN)
	local partym;

	for groupIndex = 1, NUN_MAX_PARTY_MEMBERS, 1 do
 		if (GetPartyMember(groupIndex)) then
 			partym = "party"..groupIndex;
 			lName = UnitName(partym);
 			if ( lName == parmN) then
 				return partym;
 			end
 		end
	end
	return nil;
end

function NuN_CheckRaidByName(parmN)
	local raidm;
	local lclName;
	local numRaid = GetNumRaidMembers();

	for raidIndex = 1, numRaid, 1 do
		lclName = GetRaidRosterInfo(raidIndex);
		if ( lclName == parmN ) then
			raidm = "raid"..raidIndex;
			return raidm;
		end
	end
	return nil;
end



function NuN_GetCText(gLclName)
	local txtIndex;
	local catText;

	catText = "";
	if ( NuNData[pKey][gLclName][txtTxt] ) then
		catText = NuNData[pKey][gLclName][txtTxt];
	end
	for i = 1, NUN_MAX_ADD_TXT, 1 do
		txtIndex = txtTxt..i;
		if ( NuNData[pKey][gLclName][txtIndex] ) then
			catText = catText..NuNData[pKey][gLclName][txtIndex];
		end
	end
	return catText;
end



function NuN_GetGText(gLclNote)
	local txtIndex;
	local catText;

	catText = "";
	if ( ( NuNData[pKey][Notes][gLclNote] ) and ( NuNData[pKey][Notes][gLclNote][txtTxt] ) ) then
		catText = NuNData[pKey][Notes][gLclNote][txtTxt];
	elseif ( ( NuNData[Notes][gLclNote] ) and ( NuNData[Notes][gLclNote][txtTxt] ) ) then
		catText = NuNData[Notes][gLclNote][txtTxt];
	end
	for i = 1, NUN_MAX_ADD_TXT, 1 do
		txtIndex = txtTxt..i;
		if ( ( NuNData[pKey][Notes][gLclNote] ) and ( NuNData[pKey][Notes][gLclNote][txtIndex] ) ) then
			catText = catText..NuNData[pKey][Notes][gLclNote][txtIndex];
		elseif ( ( NuNData[Notes][gLclNote] ) and ( NuNData[Notes][gLclNote][txtIndex] ) ) then
			catText = catText..NuNData[Notes][gLclNote][txtIndex];
		end
	end
	return catText;
end



function NuN_SetCText(sLclName)
	local cLower;
	local cUpper;
	local txtIndex;

	c_text_len = string.len(c_text);
	if ( c_text_len < NUN_MAX_TXT_CHR ) then
		cUpper = c_text_len;
	else
		cUpper = NUN_MAX_TXT_CHR;
	end
	NuNData[pKey][sLclName][txtTxt] = string.sub(c_text, 1, cUpper);
	for i = 1, NUN_MAX_ADD_TXT, 1 do
		cLower = NUN_MAX_TXT_CHR * i;
		txtIndex = txtTxt..i;
		if ( c_text_len > cLower ) then
			cLower = cLower + 1;
			cUpper = NUN_MAX_TXT_CHR * ( i + 1 );
			if ( c_text_len < cUpper ) then
				cUpper = c_text_len;
			end
			NuNData[pKey][sLclName][txtIndex] = string.sub(c_text, cLower, cUpper);
		else
			NuNData[pKey][sLclName][txtIndex] = "";
		end
	end
end



function NuN_SetGText(saveLvl)
	local cLower;
	local cUpper;
	local txtIndex;

	g_text_len = string.len(g_text);
	if ( g_text_len < NUN_MAX_TXT_CHR ) then
		cUpper = g_text_len;
	else
		cUpper = NUN_MAX_TXT_CHR;
	end

	if ( saveLvl == "Realm" ) then
		NuNData[pKey][Notes][c_note][txtTxt] = string.sub(g_text, 1, NUN_MAX_TXT_CHR);
		for i = 1, NUN_MAX_ADD_TXT, 1 do
			cLower = NUN_MAX_TXT_CHR * i;
			txtIndex = txtTxt..i;
			if ( g_text_len > cLower ) then
				cLower = cLower + 1;
				cUpper = NUN_MAX_TXT_CHR * ( i + 1 );
				if ( g_text_len < cUpper ) then
					cUpper = g_text_len;
				end
				NuNData[pKey][Notes][c_note][txtIndex] = string.sub(g_text, cLower, cUpper);
			else
				NuNData[pKey][Notes][c_note][txtIndex] = "";
			end
		end
	else
		NuNData[Notes][c_note][txtTxt] = string.sub(g_text, 1, NUN_MAX_TXT_CHR);
		for i = 1, NUN_MAX_ADD_TXT, 1 do
			cLower = NUN_MAX_TXT_CHR * i;
			txtIndex = txtTxt..i;
			if ( g_text_len > cLower ) then
				cLower = cLower + 1;
				cUpper = NUN_MAX_TXT_CHR * ( i + 1 );
				if ( g_text_len < cUpper ) then
					cUpper = g_text_len;
				end
				NuNData[Notes][c_note][txtIndex] = string.sub(g_text, cLower, cUpper);
			else
				NuNData[Notes][c_note][txtIndex] = "";
			end
		end
	end
end



function NuN_TextWarning(box, tLabel)
	local lenTxt, lenTxtL, oLabel;

	lenTxt = box:GetText();
	lenTxtL = string.len(lenTxt);
	oLabel = getglobal(tLabel);
	if ( ( lenTxtL == nil ) or ( lenTxtL == 0 ) ) then
		oLabel:SetText("0 / "..NUN_MAX_TXT_LIM);
	else
		oLabel:SetText(lenTxtL.." / "..NUN_MAX_TXT_LIM);
	end
	if ( lenTxtL > NUN_MAX_TXT_LIM ) then
		StaticPopup_Show("NUN_NOTELIMIT_EXCEEDED");
	end
end



function NuN_OptionsButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_MICROOPTIONS_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_MICROOPTIONS_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_BrowseButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_MICROBROWSEA_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_MICROBROWSEA_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_ContactButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_MICROCONTACT_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_MICROCONTACT_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_MICROCONTACT_TOOLTIP_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_GNoteButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_MICROGENNOTE_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_MICROGENNOTE_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_ResetButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_RESETBUTTON_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_RESETBUTTON_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_LocButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_LOCBUTTON_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_LOCBUTTON_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_GNoteTitle_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_GNOTETITLE_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_GNOTETITLE_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_SaveDefCheck_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_SAVEDEF_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_SAVEDEF_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_RestoreDefButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_RESTOREDEF_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_RESTOREDEF_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_RESTOREDEF_TOOLTIP_TXT3, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_RESTOREDEF_TOOLTIP_TXT4, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_TargetButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TARGETBUTTON_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TARGETBUTTON_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TARGETBUTTON_TOOLTIP_TXT3, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TARGETBUTTON_TOOLTIP_TXT4, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_NPCTargetButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_NPCTARGETBUTTON_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_NPCTARGETBUTTON_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_WhoButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_WHOBUTTON_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_WHOBUTTON_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_WHOBUTTON_TOOLTIP_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_UserButtons_OnEnter(owner)
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_BOTTOMLEFT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_BOTTOMRIGHT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_USERBUTTON_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_USERBUTTON_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_USERBUTTON_TOOLTIP_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_ClearDD_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_CLEARDD_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_CLEARDD_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end


function NuN_FFButton_OnEnter()
	NuN_FFButton_StateLit:Show();
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		NuN_Tooltip:SetOwner(this, "ANCHOR_RIGHT");
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_FFBUTTON_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_FFBUTTON_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end


function NuNMapNoteButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_MAPNOTES_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_MAPNOTES_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_MAPNOTES_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_PinnedTT_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_PIN_EDIT_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_PIN_EDIT_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_PIN_EDIT_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_OpenChat_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_OPENCHAT_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_OPENCHAT_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_OPENCHAT_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end


function NuN_GNoteButtonDelete_OnEnter()
	if ( ( NuNSettings[pKey].toolTips ) and ( NuNGNoteFrame.fromQuest ) ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_GDELETE_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_GDELETE_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_GDELETE_TXT3, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_GDELETE_TXT4, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end



function NuN_FFButton_OnLeave()
	NuN_FFButton_StateLit:Hide();
	NuN_Tooltip:Hide();
end

function NuN_TTButton_OnLeave()
	NuN_Tooltip:Hide();
end

function NuN_ToggleToolTips()
	if ( NuNSettings[pKey].toolTips ) then
		NuNSettings[pKey].toolTips = nil;
	else
		NuNSettings[pKey].toolTips = "1";
	end
end



function NuN_NPCInfo()
	local NPCInfo = "";
	local NPCloc;
	local NPCtimed;
	local someInfo = false;
	local listText = nil;

	NPClvl = UnitLevel("target");
	NPCcls = UnitClass("target");
	NPCclsXtra = UnitClassification("target");
	NPCtype = UnitCreatureType("target");
	NPCsex = UnitSex("target");
	if ( NPClvl ~= nil ) then
		if ( NPClvl == -1 ) then
			NPCInfo = NUN_LEVEL.." : ??     ";
		else
			NPCInfo = NUN_LEVEL.." : "..NPClvl.."     ";
		end
	end
	if ( NPCcls ~= nil ) then
		NPCInfo = NPCInfo..NUN_CLASS.." : "..NPCcls..",  ";
	end
	if ( NPCsex ~= nil ) then
		local sex = Sexes[NPCsex + 1];
		if ( sex ) then
			NPCInfo = NPCInfo..sex..",  ";
		end
	end
	if ( NPCtype ~= nil ) then
		NPCInfo = NPCInfo..NPCtype.."     ";
	end
	if ( NPCclsXtra ~= "normal" ) then
		NPCInfo = NPCInfo..( string.upper(NPCclsXtra) );
	end

	GameTooltip:SetUnit("target");
	NPCprof = GameTooltipTextLeft2:GetText();
	if ( ( string.find(NPCprof, NUN_LEVEL) or ( NPCprof == nil ) ) ) then
		-- skip
	else
		NPCInfo = NPCInfo.."\n"..NUN_PROF.." : "..NPCprof.."    ";
	end

	NPCtimed = NuN_GetDateStamp();
	NPCloc = NuN_GetLoc();

	NPCInfo = NPCInfo.."\n\n"..NPCtimed.."\n"..NPCloc;

	if ( MerchantFrame:IsVisible() ) then
		listText = NuN_BuildShoppingList();
	end

	if ( listText ) then
		NPCInfo = NPCInfo.."\n\n"..listText;
	end

	return NPCInfo;
end





function NuN_ShowFriendNote()
	local numFriends = GetNumFriends();
	if (numFriends ~= nil) and (numFriends > 0) then
		if ( FriendsFrame.selectedFriend ) then
			FriendsFrame.selectedFriend = GetSelectedFriend();
			c_name, discard, c_class, discard, connected = GetFriendInfo(FriendsFrame.selectedFriend);
			if ( c_class == "Unknown" ) then
				c_class = nil;
			end;
			c_race = nil;
			c_guild = nil;
			gRank = nil;
			gRankIndex = nil;
			gNote = nil;
			gOfficerNote = nil;
			c_route = "Friend";
			if ( horde ) then
				NuN_HordeSetup();
			else
				NuN_AllianceSetup();
			end
			NuN_ShowNote();
		end
	end
end



function NuN_ShowIgnoreNote()
	local numIgnores = GetNumIgnores();
	if (numIgnores ~= nil) and (numIgnores > 0) then
		if ( FriendsFrame.selectedIgnore ) then
			FriendsFrame.selectedIgnore = GetSelectedIgnore();
			c_name = GetIgnoreName(FriendsFrame.selectedIgnore);
			c_class = nil;
			c_race = nil;
			c_guild = nil;
			gRank = nil;
			gRankIndex = nil;
			gNote = nil;
			gOfficerNote = nil;
			c_route = "Ignore";
			if ( horde ) then
				NuN_HordeSetup();
			else
				NuN_AllianceSetup();
			end
			NuN_ShowNote();
		end
	end
end



function NuN_ShowGuildNote()
	local numGuildMembers = GetNumGuildMembers();
	if (numGuildMembers ~= nil) and (numGuildMembers > 0) then
		c_class = nil;
		c_race = nil;
		c_name, gRank, gRankIndex, discard, c_class, discard, discard, gNote, gOfficerNote, discard = GetGuildRosterInfo( GetGuildRosterSelection() );
		if ( c_name ~= nil ) then
			c_guild = GetGuildInfo("player");
			c_route = "Guild";
			if ( horde ) then
				NuN_HordeSetup();
			else
				NuN_AllianceSetup();
			end
			NuN_ShowNote();
		end
	end
end


function NuN_UpdateNoteButton(nBttn, nBttnID, NuN_rType)
	local bName = nBttn:GetName();
	local pBttnTxt, discard, qHeader;
	local bttnNoteHFlag = getglobal(bName.."FrameHFlag");
	local bttnNoteAFlag = getglobal(bName.."FrameAFlag");
	local bttnNoteNFlag = getglobal(bName.."FrameNFlag");
	local bttnNoteQFlag = getglobal(bName.."FrameQFlag");

	if ( NuN_rType == "A" ) then
		if ( FriendsListFrame:IsVisible() ) then
			NuN_rType = "F";
		elseif ( IgnoreListFrame:IsVisible() ) then
			NuN_rType = "I";
		elseif ( GuildPlayerStatusFrame:IsVisible() ) then
			NuN_rType = "G";
		elseif ( GuildStatusFrame:IsVisible() ) then
			NuN_rType = "GS";
		elseif ( WhoFrame:IsVisible() ) then
			NuN_rType = "W";
		elseif ( QuestFrame:IsVisible() ) then
			NuN_rType = NUN_QUEST_C;
		end
	end

	if ( ( FriendsFrame:IsVisible() ) and ( bttnNoteAFlag ) and ( bttnNoteHFlag ) and ( bttnNoteNFlag ) ) then
		pBttnTxt = NuN_GetName_FrameButton(nBttnID, NuN_rType);
		if ( NuNData[pKey][pBttnTxt] ) then
			if ( NuNData[pKey][pBttnTxt].faction == "Horde" ) then
				bttnNoteAFlag:Hide();
				bttnNoteNFlag:Hide();
				bttnNoteHFlag:Show();
			else
				bttnNoteHFlag:Hide();
				bttnNoteNFlag:Hide();
				bttnNoteAFlag:Show();
			end
		else
			bttnNoteAFlag:Hide();
			bttnNoteHFlag:Hide();
			bttnNoteNFlag:Show();
		end
	elseif ( ( QuestLogFrame:IsVisible() ) and ( bttnNoteQFlag ) and ( bttnNoteNFlag ) ) then
		local lOffset = nBttnID + FauxScrollFrame_GetOffset(QuestLogListScrollFrame);
		pBttnTxt, discard, discard, qHeader = GetQuestLogTitle(lOffset);
		if ( qHeader ) then
			nBttn:Hide();
		elseif ( pBttnTxt ) then
			nBttn:Show();
			if ( ( NuNData[pKey][Notes][pBttnTxt] ) or ( NuNData[Notes][pBttnTxt] ) ) then
				bttnNoteNFlag:Hide();
				bttnNoteQFlag:Show();
			else
				bttnNoteQFlag:Hide();
				bttnNoteNFlag:Show();
			end
		end
	end
end



function NuN_NoteButton_OnInteract(nBttnID, uAction)
	local pBttnTxt;
	local lOffset;
	local qLevel, qTag, qHeader, qCollapsed, qComplete;
	local qText = "";

	if ( FriendsListFrame:IsVisible() ) then
		pBttnTxt = NuN_GetName_FrameButton(nBttnID, "F");
		if ( uAction == "Click" ) then
			lOffset = FauxScrollFrame_GetOffset(FriendsFrameFriendsScrollFrame);
			SetSelectedFriend( (tonumber(nBttnID)+lOffset) );
			NuNOri_FriendsList_Update();
			if ( NuNData[pKey][pBttnTxt] ) then
				NuN_ShowSavedNote(pBttnTxt);
			else
				NuN_ShowFriendNote();
			end
		elseif ( uAction == "MouseOver" ) then
			ttName = pBttnTxt;
			NuN_StaticTT();
		end
	elseif ( IgnoreListFrame:IsVisible() ) then
		pBttnTxt = NuN_GetName_FrameButton(nBttnID, "I");
		if ( uAction == "Click" ) then
			lOffset = FauxScrollFrame_GetOffset(FriendsFrameIgnoreScrollFrame);
			SetSelectedIgnore( (tonumber(nBttnID)+lOffset) );
			NuNOri_IgnoreList_Update();
			if ( NuNData[pKey][pBttnTxt] ) then
				NuN_ShowSavedNote(pBttnTxt);
			else
				NuN_ShowIgnoreNote();
			end
		elseif ( uAction == "MouseOver" ) then
			ttName = pBttnTxt;
			NuN_StaticTT();
		end
	elseif ( GuildPlayerStatusFrame:IsVisible() ) then
		pBttnTxt = NuN_GetName_FrameButton(nBttnID, "G");
		if ( uAction == "Click" ) then
			GuildFrame.selectedGuildMember = getglobal("GuildFrameButton"..nBttnID).guildIndex;
			GuildFrame.selectedName = getglobal("GuildFrameButton"..nBttnID.."Name"):GetText();
			SetGuildRosterSelection(GuildFrame.selectedGuildMember);
			NuNNew_GuildStatus_Update();
			if ( NuNData[pKey][pBttnTxt] ) then
				NuN_ShowSavedNote(pBttnTxt);
			else
				NuN_ShowGuildNote();
			end
		elseif ( uAction == "MouseOver" ) then
			ttName = pBttnTxt;
			NuN_StaticTT();
		end
	elseif ( GuildStatusFrame:IsVisible() ) then
		pBttnTxt = NuN_GetName_FrameButton(nBttnID, "GS");
		if ( uAction == "Click" ) then
			GuildFrame.selectedGuildMember = getglobal("GuildFrameGuildStatusButton"..nBttnID).guildIndex;
			GuildFrame.selectedName = getglobal("GuildFrameGuildStatusButton"..nBttnID.."Name"):GetText();
			SetGuildRosterSelection(GuildFrame.selectedGuildMember);
			NuNOri_GuildStatus_Update();
			if ( NuNData[pKey][pBttnTxt] ) then
				NuN_ShowSavedNote(pBttnTxt);
			else
				NuN_ShowGuildNote();
			end
		elseif ( uAction == "MouseOver" ) then
			ttName = pBttnTxt;
			NuN_StaticTT();
		end
	elseif ( WhoFrame:IsVisible() ) then
		pBttnTxt = NuN_GetName_FrameButton(nBttnID, "W");
		if ( uAction == "Click" ) then
			WhoFrame.selectedWho = getglobal("WhoFrameButton"..nBttnID).whoIndex;
			WhoFrame.selectedName = getglobal("WhoFrameButton"..nBttnID.."Name"):GetText();
			NuNOri_WhoList_Update();
			if ( NuNData[pKey][pBttnTxt] ) then
				NuN_ShowSavedNote(pBttnTxt);
			else
				NuN_ShowWhoNote(pBttnTxt);
			end
		elseif ( uAction == "MouseOver" ) then
			ttName = pBttnTxt;
			NuN_StaticTT();
		end
	elseif ( QuestLogFrame:IsVisible() ) then
		lOffset = nBttnID + FauxScrollFrame_GetOffset(QuestLogListScrollFrame);
		pBttnTxt, qLevel, qTag, qHeader, qCollapsed, qComplete = GetQuestLogTitle(lOffset);
		c_note = pBttnTxt;
		if ( uAction == "Click" ) then
			QuestLog_SetSelection(lOffset);
			NuNOri_QuestLog_Update();
			if ( qHeader ) then
				qText = "";
			else
				NuNGNoteFrame.fromQuest = nil;
				if ( ( NuNData[pKey][Notes][c_note] ) or ( NuNData[Notes][c_note] ) ) then
					NuN_ShowSavedGNote();
				else
					if ( qLevel == nil ) then
						qLevel = "--";
					end
					if ( qTag == nil ) then
						qTag = "";
					end
					qText = "\n"..c_note.."     "..NUN_QLVL..qLevel.."     "..qTag.."     ".."\n\n"..NuN_BuildQuestText().."\n";
					if ( qHeader ) then
						c_type = NuNGet_CommandID(noteTypes, "   ");
					else
						c_type = NuNGet_CommandID(noteTypes, "QST");
					end
					NuN_ShowTitledGNote( qText );
				end
			end
		elseif ( uAction == "MouseOver" ) then
			ttName = c_note;
			NuN_StaticTT();
		end
	end
end



function NuN_GetName_FrameButton(lBttnID, NuN_rType)
	local lBttn, lBttnTxt;

	if ( NuN_rType == "F" ) then
		lBttn = getglobal("FriendsFrameFriendButton"..lBttnID.."ButtonTextNameLocation");
		lBttnTxt = lBttn:GetText();
		local pos = string.find(lBttnTxt, NUN_SEP);
		if ( string.find(lBttnTxt, NUN_OFF) ) then
			lBttnTxt = string.sub(lBttnTxt, 11, (pos - 1));
		else
			lBttnTxt = string.sub(lBttnTxt, 1, (pos - 1));
		end
	elseif ( NuN_rType == "I" ) then
		lBttn = getglobal("FriendsFrameIgnoreButton"..lBttnID.."ButtonTextName");
		lBttnTxt = lBttn:GetText();
	elseif ( NuN_rType == "G" ) then
		lBttn = getglobal("GuildFrameButton"..lBttnID.."Name");
		lBttnTxt = lBttn:GetText();
	elseif ( NuN_rType == "GS" ) then
		lBttn = getglobal("GuildFrameGuildStatusButton"..lBttnID.."Name");
		lBttnTxt = lBttn:GetText();
	elseif ( NuN_rType == "W" ) then
		lBttn = getglobal("WhoFrameButton"..lBttnID.."Name");
		lBttnTxt = lBttn:GetText();
	elseif ( NuN_rType == NUN_QUEST_C ) then
		lBttn = getglobal("QuestLogTitle"..lBttnID.."NormalText");
		lBttnTxt = lBttn:GetText();
	end

	return lBttnTxt;
end


function NuN_StaticTT()
	local storePinned = NuN_PinnedTooltip.type;

	NuN_Tooltip:ClearLines();
	NuN_PinnedTooltip.type = "Nil";
	NuN_BuildTT(NuN_Tooltip);
	NuN_PinnedTooltip.type = storePinned;
	NuN_Fade = "False";
	NuN_Tooltip:Show();
end


function NuN_BuildTT(nunTT)
	local lGuild = nil;
	local lGuildR = nil;
	local lprof = "";
	local tt = {};
	local tti = 0;
	local srchText, sStart, sStop, tipText;
	local lineCount = 0;
	local finalTipText;
	local txtLines;
	local NuN_trunc = false;
	local gttLines = 0;
	local ttLinesDiff = 0;
	local ttLen = NUN_TT_MAX;
	local ttLLen = NUN_TT_LEN;

	if ( ( NuNSettings[pKey].toolTips ) or ( nunTT == NuN_PinnedTooltip ) ) then
		if ( NuN_PinnedTooltip.type ~= "General" ) and ( NuN_PinnedTooltip.type ~= "QuestHistory" ) and ( NuNData[pKey][ttName] ) then
			nunTT:AddLine(NUN_NOTESUNEED_INFO..NUN_PINNED_TT_PADDING, 1, 0.7, 0);
			lineCount = lineCount + 1;

			if ( NuN_PinUpHeader == true ) then
				nunTT:AddLine(ttName);
				lastPinned = ttName;
				lineCount = lineCount + 1;
			end

			for n = 1, uBttns, 1 do
				hdNbr = pHead..n
				nameHdNbr = ttName..hdNbr;
				nameDtNbr = ttName..pDetl..n;
				if ( ( (n == 1) and (not NuNData[pKey][nameHdNbr]) ) or ( (n==1) and ( NuNData[pKey][nameHdNbr].txt == dfltHeadings[n] ) ) ) then
					if ( NuNData[pKey][nameDtNbr] ) then
						lGuild = NuNData[pKey][nameDtNbr].txt;
					end
				elseif ( ( (n == 2) and (not NuNData[pKey][nameHdNbr]) ) or ( (n==2) and ( NuNData[pKey][nameHdNbr].txt == dfltHeadings[n] ) ) ) then
					if ( NuNData[pKey][nameDtNbr] ) then
						lGuildR = NuNData[pKey][nameDtNbr].txt;
					end
				elseif ( NuNData[pKey][nameHdNbr] ) then
					local ttDetl = (string.lower(NuNData[pKey][nameHdNbr].txt));
					if ( string.find(ttDetl, NUN_TT_HDNG) ) then
						if ( NuNData[pKey][nameDtNbr] ) then
							tti = tti + 1;
							tt[tti] = NuNData[pKey][nameDtNbr].txt;
						end
					end
				elseif ( NuNSettings[pKey][hdNbr] ) then
					local ttDetl = (string.lower(NuNSettings[pKey][hdNbr].txt));
					if ( string.find(ttDetl, NUN_TT_HDNG) ) then
						if ( NuNData[pKey][nameDtNbr] ) then
							tti = tti + 1;
							tt[tti] = NuNData[pKey][nameDtNbr].txt;
						end
					end
				end
			end

			for i = 1, getn(tt), 1 do
				nunTT:AddLine(tt[i], 0.9, 0.2, 0.2);
				lineCount = lineCount + 1;
			end

			if ( ( lGuild ~= nil) and ( lGuild ~= "" ) ) then
				if ( ( lGuildR ~= nil ) and ( lGuildR ~= "" ) ) then
					lGuild = lGuild.." : "..lGuildR;
				end
				nunTT:AddLine(lGuild, 0.9, 0.9, 0);
				lineCount = lineCount + 1;
			end

			if ( NuNData[pKey][ttName].prof1 ) then
				lprof = Professions[NuNData[pKey][ttName].prof1];
			end
			if ( NuNData[pKey][ttName].prof2 ) then
				if (lprof == "") then
					lprof = Professions[NuNData[pKey][ttName].prof2];
				else
					lprof = lprof.." - "..Professions[NuNData[pKey][ttName].prof2];
				end
			end
			if ( lprof ~= "" ) then
				nunTT:AddLine(lprof, 0.8, 0.2, 0.8);
				lineCount = lineCount + 1;
			end

			srchText = NuN_GetCText(ttName);
		elseif ( ( NuN_PinnedTooltip.type ~= "Contact" ) and ( NuN_PinnedTooltip.type ~= "QuestHistory" ) and ( ( NuNData[pKey][Notes][ttName] ) or ( NuNData[Notes][ttName] ) ) ) then
			nunTT:AddLine(NUN_NOTESUNEED_INFO..NUN_PINNED_TT_PADDING, 1, 0.7, 0);
			lineCount = lineCount + 1;

			if ( NuN_PinUpHeader == true ) then
				nunTT:AddLine(ttName);
				lastPinned = ttName;
				lineCount = lineCount + 1;
			end

			srchText = NuN_GetGText(ttName);
		elseif ( ( NuN_PinnedTooltip.type == "QuestHistory" ) and ( NuNData[pKey].QuestHistory[pName][ttName] ) ) then
			nunTT:AddLine(NUN_NOTESUNEED_INFO..NUN_PINNED_TT_PADDING, 1, 0.7, 0);
			lineCount = lineCount + 1;

			if ( NuN_PinUpHeader == true ) then
				nunTT:AddLine(ttName);
				lastPinned = ttName;
				lineCount = lineCount + 1;
			end

			srchText = NuNData[pKey].QuestHistory[pName][ttName].txt;
		end

		if ( NuN_PinnedTooltip.type ~= "QuestHistory" ) then
			if ( NuNSettings[pKey].ttLen ) then
				if ( NuNSettings[pKey].ttLen == "" ) then
					ttLen = 0;
				else
					ttLen = tonumber( NuNSettings[pKey].ttLen );
				end
			end
			if ( NuNSettings[pKey].ttLLen ) then
				if ( NuNSettings[pKey].ttLLen == "" ) then
					ttLLen = 0;
				else
					ttLLen = tonumber( NuNSettings[pKey].ttLLen );
				end
			end
		end

		if ( ( NuN_MouseOver == true ) and ( NuNSettings[pKey].minOver ) ) then
			srchText = "";
		end

		if ( ( srchText ~= nil ) and ( srchText ~= "" ) ) then
			sStart = string.find(srchText, NUN_TT_KEYPHRASE);
			if ( sStart ~= nil ) then
				sStart = sStart + NUN_TT_KEYPHRASE_LEN;
				sStop = string.find(srchText, NUN_TT_END, sStart);
				if ( sStop == nil ) then
					sStop = sStart + ttLen - 1;
				else
					sStop = sStop - 1;
					local sDiff = sStop - sStart;
					if ( ( sDiff > ttLen ) or ( sDiff < 0 ) ) then
						sStop = sStart + ttLen - 1;
						NuN_trunc = true;
					end
				end
				tipText = string.sub(srchText, sStart, sStop);
			else
				if ( string.len(srchText) > ttLen ) then
					NuN_trunc = true;
				end
				tipText = string.sub(srchText, 1, ttLen);
			end
			if ( string.len(tipText) > ttLLen ) then
				finalTipText, txtLines = NuN_ParseTT(tipText, ttLLen);
			else
				finalTipText = tipText;
				txtLines = 1;
			end
			if ( NuN_trunc == true ) then
				finalTipText = finalTipText..NUN_TT_ETC;
			end
			nunTT:AddLine(finalTipText, 0, 1, 0);
			lineCount = lineCount + txtLines;
		end

		local gttLines = GameTooltip:NumLines();
		local ttLinesDiff = lineCount - gttLines;
		if ( ttLinesDiff > NUN_TT_LINES_TRIGGER ) then
			local scaleUp = math.floor( 4 * (NuNSettings[pKey].tScale - 1) );
			NuN_TT_Y_Offset = ( ( ttLinesDiff - NUN_TT_LINES_TRIGGER ) * ( NUN_TT_Y_SHIFT + scaleUp ) );
			NuN_TT_Y_Offset = math.floor( NuN_TT_Y_Offset );
		end
	end
end


function NuN_ParseTT(txtIn, fragLen)
	local p1 = 0;
	local p2 = 0;
	local txtOut = "";
	local txtTmp = "";
	local xtraLines = "";
	local parsedLines = 1;

	while ( true ) do
		p2 = string.find(txtIn, "\n", ( p1 + 1 ) );
		if ( p2 == nil ) then
			break;
		end
		txtTmp = string.sub(txtIn, ( p1 + 1 ), p2);
		txtTmpL = string.len(txtTmp);
		if ( txtTmpL > ( fragLen + 10 ) ) then
			txtTmp, xtraLines = NuN_Fragment(txtTmp, fragLen);
		else
			xtraLines = 1;
		end
		p1 = p2;
		parsedLines = parsedLines + xtraLines;
		txtOut = txtOut..txtTmp;
	end
	txtTmp = string.sub(txtIn, ( p1 + 1 ) );
	txtTmpL = string.len(txtTmp);
	if ( txtTmpL > fragLen ) then
		txtTmp, xtraLines = NuN_Fragment(txtTmp, fragLen);
	else
		xtraLines = 1;
	end
	parsedLines = parsedLines + xtraLines;
	txtOut = txtOut..txtTmp;

	return txtOut, parsedLines;
end


function NuN_Fragment(txtWhole, fragLen)
	local p1 = 0;
	local p2 = 0;
	local lst = 0;
	local txtFrags = "";
	local count = 1;

	while ( true ) do
		p2 = string.find(txtWhole, " ", ( p1 + 1 ) )
		if ( p2 == nil ) then
			break
		end
		if ( p2 > ( lst + fragLen ) ) then
			lst = p1;
			txtFrags = txtFrags.."\n";
			count = count + 1;
		end
		txtFrags = txtFrags..string.sub(txtWhole, ( p1 + 1 ), p2);
		p1 = p2;
	end
	txtFrags = txtFrags..string.sub(txtWhole, ( p1 + 1 ) );

	return txtFrags, count;
end


function NuN_Tooltip_OnUpdate()
	if ( ( NuN_Fade == "True" ) and ( not UnitExists("mouseover") ) ) then
		local gt = GameTooltipTextLeft1:GetText();
		if ( gt ~= gtName ) then
			this:Hide();
			return;
		end
		if ( this.fadeStartTime == 0 ) then
			this.fadeStartTime = GetTime();
		end
		local elapsed = GetTime() - this.fadeStartTime;
		local fadeHoldTime = this.fadeHoldTime;
		local fadeOutTime = this.fadeOutTime;
		if ( elapsed >= ( fadeHoldTime + fadeOutTime ) ) then
			this:ClearLines();
			this:Hide();
		elseif  ( elapsed > fadeHoldTime ) then
			local alpha = 1 - ( ( elapsed - fadeHoldTime ) / fadeOutTime );
			this:SetAlpha(alpha);
		end
	end
end


function NuN_FFButton_OnShow()
	NuN_FFButton_Up();
end


function NuN_FFButton_Down()
	if ( pFaction == "Horde" ) then
		NuN_FFButton_StateADown:Hide();
		NuN_FFButton_StateAUp:Hide();
		NuN_FFButton_StateHUp:Hide();
		NuN_FFButton_StateHDown:Show();
	else
		NuN_FFButton_StateHDown:Hide();
		NuN_FFButton_StateHUp:Hide();
		NuN_FFButton_StateAUp:Hide();
		NuN_FFButton_StateADown:Show();
	end

	if ( FriendsListFrame:IsVisible() ) then
		NuN_ShowFriendNote();
	elseif ( IgnoreListFrame:IsVisible() ) then
		NuN_ShowIgnoreNote();
	elseif ( GuildPlayerStatusFrame:IsVisible() ) then
		NuN_ShowGuildNote();
	elseif ( GuildStatusFrame:IsVisible() ) then
		NuN_ShowGuildNote();
	elseif ( WhoFrame:IsVisible() ) then
		if ( WhoFrame.selectedName ) then
			NuN_ShowWhoNote(WhoFrame.selectedName);
		end
	elseif ( RaidFrame:IsVisible() ) then
		local tstValue = NuN_CheckTarget();
		if ( UnitInRaid("target") ) then
			c_name = UnitName("target");
			if ( NuNData[pKey][c_name] ) then
				NuN_ShowSavedNote(c_name);
			else
				NuN_NewContact("target");
			end
		end
	end
end

function NuN_FFButton_Up()
	if ( pFaction == "Horde" ) then
		NuN_FFButton_StateADown:Hide();
		NuN_FFButton_StateAUp:Hide();
		NuN_FFButton_StateHDown:Hide();
		NuN_FFButton_StateHUp:Show();
	else
		NuN_FFButton_StateHDown:Hide();
		NuN_FFButton_StateHUp:Hide();
		NuN_FFButton_StateADown:Hide();
		NuN_FFButton_StateAUp:Show();
	end
end



function NuN_GNoteTitle_OnClick()
	NuN_ClearPinnedTT();
	NuNGTTCheckBoxLabel:Hide();
	NuN_GTTCheckBox:Hide();
	NuNGNoteTextBox:SetText( NuNGNoteTitleButtonText:GetText() );
	NuNGNoteTitleButton:Hide();
	NuNGNoteTextBox:Show();
	NuNGNoteTextBox:SetFocus();
end

function NuN_GNoteTitleSet()
	NuNGNoteTitleButtonText:SetText( NuNGNoteTextBox:GetText() );
	NuNGNoteTextBox:Hide();
	NuNGNoteTitleButton:Show();
end


function NuN_GetSimpleName(cmplxName)
	local smplName, posB, posE;

	posB = string.find(cmplxName, "|h");
	posE = string.find(cmplxName, "]|h");
	if ( posB ~= nil ) and ( posE ~= nil ) and ( posB < posE ) then
		smplName = string.sub(cmplxName, (posB + 3), (posE - 1));
		return smplName
	else
		return nil;
	end
end


function NuN_GetLink(cmplxName)
	local link, posB, posE;

	posB = string.find(cmplxName, "|Hitem:");
	posE = string.find(cmplxName, "|h");
	if ( posB ~= nil ) and ( posE ~= nil ) and ( posB < posE ) then
		link = string.sub(cmplxName, (posB + 2), (posE - 1));
		return link;
	else
		return nil;
	end
end


function NuN_GNoteExists(tstNote)
	local cmplxName;

	if ( ( NuNData[pKey][Notes][tstNote] ) or ( NuNData[Notes][tstNote] ) ) then
		c_note = tstNote;
		return true;
	elseif ( NuNData[itmIndex][tstNote] ) then
		cmplxName = NuNData[itmIndex][tstNote];
		if ( ( NuNData[pKey][Notes][cmplxName] ) or ( NuNData[Notes][cmplxName] ) ) then
			c_note = cmplxName;
			return true;
		end
	end
	c_note = nil;
	return false;
end


function NuN_DeleteItem(toDelete)
	local index;
	local value;

	for index, value in NuNData[itmIndex] do
		if ( NuNData[itmIndex][index] == toDelete ) then
			NuNData[itmIndex][index] = nil;
			return;
		end
	end
end



function NuN_GameTooltip_OnShow()
	local storePinned = NuN_PinnedTooltip.type;
	local p1 = 1;
	local strippedName = "";
	local sNLen = 0;
	local anchorBy, anchorTo;

	local tx, ty;
	tx, ty = GameTooltip:GetCenter();
	if ( ( not tx ) or ( not ty ) ) then
		noTipAnchor = true;
		return;
	end

	gtName = GameTooltipTextLeft1:GetText();
	if ( not UnitExists("mouseover") ) then
		sNLen = string.len(gtName);
		for i=sNLen, 1, -1 do
			local tstChar = string.sub(gtName, i, i);
			if ( tstChar == " " ) then
				p1 = i + 1;
				break;
			end
		end
		strippedName = string.sub(gtName, p1);
		if ( NuNData[pKey][strippedName] ) then
			gtName = strippedName;
		end
	end

	if ( ( UnitExists("mouseover") ) or ( ( RaidFrame:IsVisible() ) and ( MouseIsOver(RaidFrame) ) ) or ( ( TargetFrame:IsVisible() ) and ( MouseIsOver(TargetFrame) ) ) ) then
		if ( UnitExists("mouseover") ) then
			ttName = UnitName("mouseover");
			NuN_Fade = "True";
		else
			ttName = gtName;
			NuN_Fade = "False";
		end
		if ( ( ttName ~= nil ) and ( ( NuNData[pKey][ttName] ) or ( NuNData[pKey][Notes][ttName] ) or ( NuNData[Notes][ttName] ) ) ) then
			anchorBy, anchorTo = NuN_GetTipAnchor(GameTooltip);
			NuN_Tooltip:Hide();
			NuN_Tooltip:SetOwner(this, "ANCHOR_NONE");
			NuN_TT_Y_Offset = 0;
			NuN_PinnedTooltip.type = "Nil";
			NuN_MouseOver = true;
			NuN_BuildTT(NuN_Tooltip);
			NuN_MouseOver = false;
			NuN_PinnedTooltip.type = storePinned;
			NuN_Tooltip:SetPoint(anchorBy, "GameTooltip", anchorTo, -1, 0);
			NuN_Tooltip:Show();
		else
			NuN_Tooltip:ClearLines();
			NuN_Tooltip:Hide();
		end
	else
		ttName = gtName;
		if ( NuNData[itmIndex][ttName] ) then
			ttName = ( NuNData[itmIndex][ttName] );
		end
		if ( ( ttName ~= nil ) and  ( ( NuNData[pKey][ttName] ) or ( NuNData[pKey][Notes][ttName] ) or ( NuNData[Notes][ttName] ) ) ) then
			NuN_Fade = "False";
			NuN_Tooltip:ClearLines();
			NuN_Tooltip:Hide();
			NuN_Tooltip:SetOwner(this, "ANCHOR_NONE");
			NuN_TT_Y_Offset = 0;
			NuN_PinnedTooltip.type = "Nil";
			NuN_BuildTT(NuN_Tooltip);
			NuN_PinnedTooltip.type = storePinned;
			local num1 = ShoppingTooltip1:NumLines();
			local num2 = ShoppingTooltip2:NumLines();
			if ( num2 and ( num2 > 0 ) and ShoppingTooltip2 and MerchantFrame and ( MerchantFrame:IsVisible() ) and ( MouseIsOver(MerchantFrame) ) ) or ( num2 and ( num2 > 0 ) and ShoppingTooltip2 and AuctionFrame and ( AuctionFrame:IsVisible() ) and ( MouseIsOver(AuctionFrame) ) ) then
				anchorBy, anchorTo = NuN_GetTipAnchor(ShoppingTooltip2);
				NuN_Tooltip:SetPoint(anchorBy, "ShoppingTooltip2", anchorTo, 0, 0);
			elseif ( num1 and ( num1 > 0 ) ) and ( ShoppingTooltip1 and MerchantFrame and ( MerchantFrame:IsVisible() ) and ( MouseIsOver(MerchantFrame) ) ) or ( num1 and ( num1 > 0 ) ) and ( ShoppingTooltip1 and AuctionFrame and ( AuctionFrame:IsVisible() ) and ( MouseIsOver(AuctionFrame) ) ) then
				anchorBy, anchorTo = NuN_GetTipAnchor(ShoppingTooltip1);
				NuN_Tooltip:SetPoint(anchorBy, "ShoppingTooltip1", anchorTo, 0, 0);
			else
				anchorBy, anchorTo = NuN_GetTipAnchor(GameTooltip);
				NuN_Tooltip:SetPoint(anchorBy, "GameTooltip", anchorTo, 1, 0);
			end
			NuN_Tooltip:Show();
		else
			NuN_Tooltip:ClearLines();
			NuN_Tooltip:Hide();
		end
	end
end



function NuN_WorldMapTooltip_OnShow(id)
	local noPopup = true;
	local MapNoting = true;
	local nName = WorldMapTooltipTextLeft1:GetText();

	NuNPopup:Hide();
	if ( NuNData[itmIndex][nName] ) then
		nName = ( NuNData[itmIndex][nName] );
	end

	local MNCont = nil;
	local MNZone = nil;
	local NuN_Key = nil;
	MNCont = GetCurrentMapContinent();
	if ( MNCont == -1 ) then
		MNCont = GetRealZoneText();
		MNZone = 0;
	else
		if  ( MetaMapNotes_OnLoad ) then
			MNZone = MetaMapNotes_ZoneShift[MNCont][GetCurrentMapZone()];
		elseif ( MapNotes_OnLoad ) then
			MNZone = MapNotes_ZoneShift[MNCont][GetCurrentMapZone()];
		else
			MapNoting = nil;
		end
		if ( ( MapNoting ) and ( ( not MNZone ) or ( MNZone < 1 ) ) ) then
			return;
		end
	end

	if ( id ) then
		NuN_Key = MNCont.."-"..MNZone.."-"..id;
	end

	if ( NuN_Key ) then
		if ( ( NuNData[mrgIndex] ) and ( NuNData[mrgIndex][NuN_Key] ) ) then
			local index, value, lBttn, lHeight;
			local lWidth = NuNPopupTitle:GetWidth();
			local lCount = 0;
			NuNPopupButton1:SetText("");
			NuNPopupButton1:Hide();
			NuNPopupButton2:SetText("");
			NuNPopupButton2:Hide();
			NuNPopupButton3:SetText("");
			NuNPopupButton3:Hide();
			NuNPopupButton4:SetText("");
			NuNPopupButton4:Hide();
			NuNPopupButton5:SetText("");
			NuNPopupButton5:Hide();
			for index, value in NuNData[mrgIndex][NuN_Key] do
				if ( index ~= "noteCounter" ) then
					if ( ( NuNData[Notes][index] ) or ( NuNData[pKey][Notes][index] ) ) then
						lCount = lCount + 1;
						lBttn = getglobal("NuNPopupButton"..lCount);
						lBttn.note = index;
						lBttn:SetText(index);
						lBttn:Show();
						local tWidth = lBttn:GetTextWidth();
						if ( ( tWidth ) and ( tWidth > lWidth ) ) then
							lWidth = tWidth;
						end
					end
				end
			end
			if ( lCount > 0 ) then
				local lHeight = math.ceil( ((20*(lCount + 1)) + 10) );
				lWidth = math.ceil( (lWidth) * 1.15 );
				if ( lCount > 2 ) then
					lHeight = lHeight - (lCount * lCount);
				end
				NuNPopup:SetHeight(lHeight);
				NuNPopup:SetWidth(lWidth);
				NuNPopupButton1:SetWidth(lWidth - 4);
				NuNPopupButton2:SetWidth(lWidth - 4);
				NuNPopupButton3:SetWidth(lWidth - 4);
				NuNPopupButton4:SetWidth(lWidth - 4);
				NuNPopupButton5:SetWidth(lWidth - 4);
				NuNPopup:ClearAllPoints();
				NuNPopup.id = id;
				local x, y = GetCursorPosition();
				if ( y > 300 ) then
					if ( x > 500 ) then
						NuNPopup:SetPoint("TOPRIGHT", "WorldMapTooltip", "BOTTOMRIGHT", 0, 0);
						NuNPopup.point = "TOPRIGHT";
						NuNPopup.relativePoint = "BOTTOMRIGHT";
					else
						NuNPopup:SetPoint("TOPLEFT", "WorldMapTooltip", "BOTTOMLEFT", 0, 0);
						NuNPopup.point = "TOPLEFT";
						NuNPopup.relativePoint = "BOTTOMLEFT";
					end
				else
					if ( x > 500 ) then
						NuNPopup:SetPoint("BOTTOMRIGHT", "WorldMapTooltip", "TOPRIGHT", 0, 0);
						NuNPopup.point = "BOTTOMRIGHT";
						NuNPopup.relativePoint = "TOPRIGHT";
					else
						NuNPopup:SetPoint("BOTTOMLEFT", "WorldMapTooltip", "TOPLEFT", 0, 0);
						NuNPopup.point = "BOTTOMLEFT";
						NuNPopup.relativePoint = "TOPLEFT";
					end
				end
				NuNPopupTitle:SetTextColor(0.1, 0.9, 0.1, 0.9);
				popUpHide = nil;
				NuNPopup:SetAlpha(1);
				NuNPopup:Show();
				NuN_MapTooltipShow(NuNPopupButton1.note, "NuNPopup", NuNPopup.point, NuNPopup.relativePoint);
				NuNPopupButton1:LockHighlight();
				noPopup = nil;
			end
		end
	end

	if ( noPopup ) then
		if ( ( NuNData[pKey][nName] ) or ( NuNData[pKey][Notes][nName] ) or ( NuNData[Notes][nName] ) ) then
			NuN_MapTooltipShow(nName, "WorldMapTooltip", nil, nil);
		end
	end
end


function NuN_MapTooltipShow(nName, relativeTo, point, relativePoint)
	local storePinned = NuN_PinnedTooltip.type;

	NuNPopupButton1:UnlockHighlight();
	if ( not nName ) then
		return;
	end
	gtName = nName;
	ttName = gtName;
	if ( ( ttName ~= nil ) and  ( ( NuNData[pKey][ttName] ) or ( NuNData[pKey][Notes][ttName] ) or ( NuNData[Notes][ttName] ) ) ) then
		NuN_Fade = "False";
		NuN_MapTooltip:ClearLines();
		NuN_MapTooltip:Hide();
		NuN_MapTooltip:SetOwner(this, "ANCHOR_NONE");
		NuN_PinnedTooltip.type = "Nil";
		NuN_BuildTT(NuN_MapTooltip);
		NuN_PinnedTooltip.type = storePinned;
		if ( ( point ) and ( relativePoint ) ) then
			NuN_MapTooltip:SetPoint(point, relativeTo, relativePoint, 0, 0);
		else
			local x, y = GetCursorPosition();
			if ( y > 300 ) then
				if ( x > 500 ) then
					NuN_MapTooltip:SetPoint("TOPRIGHT", "WorldMapTooltip", "BOTTOMRIGHT", 0, 0);
				else
					NuN_MapTooltip:SetPoint("TOPLEFT", "WorldMapTooltip", "BOTTOMLEFT", 0, 0);
				end
			else
				if ( x > 500 ) then
					NuN_MapTooltip:SetPoint("BOTTOMRIGHT", "WorldMapTooltip", "TOPRIGHT", 0, 0);
				else
					NuN_MapTooltip:SetPoint("BOTTOMLEFT", "WorldMapTooltip", "TOPLEFT", 0, 0);
				end
			end
		end
		NuN_MapTooltip:SetFrameLevel( WorldMapTooltip:GetFrameLevel() );
		NuN_MapTooltip:Show();
	else
		NuN_MapTooltip:ClearLines();
		NuN_MapTooltip:Hide();
	end
end


function NuN_WorldMapTooltip_OnHide()
	NuNPopup:Hide();
	NuN_MapTooltip:ClearLines();
	NuN_MapTooltip:Hide();
end





function NuN_ItemRefTooltip_OnShow()
	gtName = ItemRefTooltipTextLeft1:GetText();
	ttName = gtName;

	if ( NuNData[itmIndex][ttName] ) then
		ttName = ( NuNData[itmIndex][ttName] );
	end
	if ( ( ttName ~= nil ) and ( ( NuNData[pKey][Notes][ttName] ) or ( NuNData[Notes][ttName] ) ) ) then
		NuN_Fade = "False";
		NuN_ClearPinnedTT();
		NuN_PinnedTooltip:SetOwner(ItemRefTooltip, "ANCHOR_TOPLEFT");
		NuN_PinUpHeader = true;
		NuN_PinnedTooltip.type = "General";
		NuN_BuildTT(NuN_PinnedTooltip);
		NuN_PinUpHeader = false;
		NuN_PinnedTooltip:Show();
		pinnedTTMoved = false;
	elseif ( not pinnedTTMoved ) then
		NuN_ClearPinnedTT();
	end
end


function NuN_ItemRefTooltip_OnHide()
	if ( not pinnedTTMoved ) then
		NuN_ClearPinnedTT();
		pinnedTTMoved = true;
	end
end


function NuN_FlagMoved()
	pinnedTTMoved = true;
end


function NuN_GameTooltip_OnHide()
	noTipAnchor = nil;
	if ( NuN_Fade == "False" ) then
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:Hide();
	end
end


function NuN_TTCheckBox_OnClick(frameType)
	if ( frameType == "Contact" ) then
		if ( NuN_CTTCheckBox:GetChecked() ) then
			ttName = c_name;
			NuN_ClearPinnedTT();
			NuN_PinnedTooltip:SetOwner(this, ANCHOR_BOTTOMRIGHT);
			NuN_PinUpHeader = true;
			NuN_PinnedTooltip.type = frameType;
			NuN_BuildTT(NuN_PinnedTooltip);
			NuN_PinUpHeader = false;
			NuN_PinnedTooltip:Show();
		else
			NuN_ClearPinnedTT();
		end
	elseif ( frameType == "General" ) then
		if ( NuN_GTTCheckBox:GetChecked() ) then
			ttName = c_note;
			NuN_ClearPinnedTT();
			NuN_PinnedTooltip:SetOwner(this, ANCHOR_BOTTOMRIGHT);
			NuN_PinUpHeader = true;
			NuN_PinnedTooltip.type = frameType;
			NuN_BuildTT(NuN_PinnedTooltip);
			NuN_PinUpHeader = false;
			NuN_PinnedTooltip:Show();
		else
			NuN_ClearPinnedTT();
		end
	end
end

function NuN_TTCheckBox_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_PIN_TOOLTIP_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_PIN_TOOLTIP_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_PIN_TOOLTIP_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end


function NuN_ClearPinnedTT()
	if ( NuN_PinnedTooltip:IsVisible() ) then
		NuN_PinnedTooltip:ClearLines();
		NuN_PinnedTooltip:Hide();
	end
end


function NuN_CheckPinnedBox(tst)
	if ( NuN_PinnedTooltip:IsVisible() ) then
		if ( tst == lastPinned ) then
			return 1;
		else
			return 0;
		end
	else
		return 0;
	end
end



function NuN_PinnedTT_OnClick()
	local ttTitle = NuN_PinnedTooltipTextLeft2:GetText();

	if ( NuN_PinnedTooltip.type == "Contact" ) then
		if ( NuNData[pKey][ttTitle] ) then
			NuN_ShowSavedNote(ttTitle);
		end
	elseif ( NuN_PinnedTooltip.type == "General" ) then
		if ( NuNData[itmIndex][ttTitle] ) then
			ttTitle = NuNData[itmIndex][ttTitle];
		end
		if ( ( NuNData[pKey][Notes][ttTitle] ) or ( NuNData[Notes][ttTitle] ) ) then
			c_note = ttTitle;
			NuNGNoteFrame.fromQuest = nil;
			NuN_ShowSavedGNote();
		end
	end
end


function NuN_PinnedTT_OnHide()
	if ( NuN_PinnedTooltip.type == "Contact" ) then
		if ( ( NuNFrame:IsVisible() ) and ( NuN_CTTCheckBox:GetChecked() ) ) then
			NuN_CTTCheckBox:SetChecked(0);
		end
	elseif ( NuN_PinnedTooltip.type == "General" ) then
		if ( ( NuNGNoteFrame:IsVisible() ) and ( NuN_GTTCheckBox:GetChecked() ) ) then
			NuN_GTTCheckBox:SetChecked(0);
		end
	end
end


function NuN_OpenChat(noteType)
	local dspText, dspTextL;
	local hdrMax = 29;

	UIDropDownMenu_ClearAll(NuNChatDropDown);
	NuNTransmit:Disable();
	NuNChatTextBox:Hide();
	NuN_ChatFrame.type = noteType;
	if ( noteType == "Contact" ) then
		dspText = c_name;
		NuN_ChatCheckBox:Show();
	elseif ( noteType == "General" ) then
		dspText = c_note;
		NuN_ChatCheckBox:Hide();
	end
	if ( string.find(dspText, "|Hitem:") ) then
		hdrMax = hdrMax + 50;
	end
	dspTextL = string.len(dspText);
	if ( dspTextL > hdrMax ) then
		dspText = string.sub(dspText, 1, hdrMax).."...";
	end
	NuNChatNoteTitle:SetText(dspText);
	ShowUIPanel(NuN_ChatFrame);

end


function NuN_Transmit()
	local dfltLang;
	local user = nil;
	local error = nil;
	local singleLine;
	local parsedArray = {};
	local contents = nil;
	local linesInError = {};
	local nonCriticalError = false;
	local e = 0;
	local tLog = "Transmit Log ";
	local chatTarget;
	local prfx;
	local logText = "";
	local saveLvl;

	NuNTransmit:Disable();

	msgSeq = msgSeq + 1;
	if ( msgSeq > 9 ) then
		msgSeq = 1;
	end
	msgKey = pName..msgSeq..":";
	tLog = tLog..msgKey;

	if ( NuNSettings[pKey].dLevel ) then
		NuNData[Notes][tLog] = {};
		logText = NuN_GetDateStamp().."\n";
		NuNData[Notes][tLog].type = 3;
		saveLvl = "Account";
	else
		NuNData[pKey][Notes][tLog] = {};
		logText = NuN_GetDateStamp().."\n";
		NuNData[pKey][Notes][tLog].type = 3;
		saveLvl = "Realm";
	end

	if ( NuNChatTextBox:IsVisible() ) then
		user = NuNChatTextBox:GetText();
	end

	if ( sendTo == "WHISPER" ) or ( sendTo == "NuN" ) then
		chatTarget = user;
	else
		chatTarget = sendTo;
	end

	if ( horde ) then
		dfltLang = "Orcish";
	else
		dfltLang = "Common";
	end

	prfx = msgKey..NUN_TRANSMISSION_PREFIX1..pName.."  --->  "..chatTarget;
	logText = logText.."\n"..prfx;

	if ( NuN_ChatFrame.type == "Contact" ) then
		parsedArray, error = NuN_TransmitContact(dfltLang, user);
	else
		parsedArray, error = NuN_TransmitGeneral(dfltLang, user);
	end

	if ( parsedArray ) then
		local tmp_c_note = c_note;
		local tmp_g_text = g_text;
		contents = getn(parsedArray);
		local lineCount = 0;
		local flagged = nil;
		for i=1, contents, 1 do
			singleLine = parsedArray[i];
			singleLine = string.gsub(singleLine, "\n", " ");
			singleLine = string.gsub(singleLine, "\\n", " ");
			if ( string.len(singleLine) > 255 ) then
				error = "Err02";
				break;
			end
			local beginnings = NuN_Validate(singleLine, "|c");
			local endings = NuN_Validate(singleLine, "|h|r");
			if ( beginnings == endings ) then
				parsedArray[i] = singleLine;
				lineCount = lineCount + 1;
				if ( ( string.len(logText) < (NUN_MAX_TXT_LIM - 360) ) and ( lineCount < 109 ) ) then
					logText = logText.."\n"..singleLine;
				elseif ( not flagged ) then
					flagged = true;
					logText = logText.."\n"..NUN_NOROOM;
				end
			else
				parsedArray[i] = "";
				nonCriticalError = true;
				e = e + 1;
				linesInError[e] = NUN_LINEERROR_TEXT.."----->"..i.." : \n";
				e = e + 1;
				linesInError[e] = singleLine.."\n";
			end
		end
		c_note = tLog;
		g_text = logText;
		NuN_SetGText(saveLvl);
		c_note = tmp_c_note;
		g_text = tmp_g_text;
	end

	if ( contents ) and ( not error ) then
		if ( sendTo == "SELF" ) then
			DEFAULT_CHAT_FRAME:AddMessage(prfx);
		else
			SendChatMessage(prfx, sendTo, dfltLang, user);
		end
		for i=1, contents, 1 do
			if ( sendTo == "SELF" ) then
				DEFAULT_CHAT_FRAME:AddMessage(msgKey..parsedArray[i]);
			else
				SendChatMessage(msgKey..parsedArray[i], sendTo, dfltLang, user);
			end
		end
	elseif ( error ) then
		NuN_Message(NUN_TRANSMISSION_ERROR..error);
	else
		NuN_Message(NUN_TRANSMISSION_MISSING);
	end

	if ( nonCriticalError ) then
		if ( NuNSettings[pKey].dLevel ) then
			NuNData[Notes][msgKey] = {};
			NuNData[Notes][msgKey].txt = "";
		else
			NuNData[pKey][Notes][msgKey] = {};
			NuNData[pKey][Notes][msgKey].txt = "";
		end
		for i=1, getn(linesInError), 1 do
			if ( NuNSettings[pKey].dLevel ) then
				NuNData[Notes][msgKey].txt = NuNData[Notes][msgKey].txt..linesInError[i].."\n";
			else
				NuNData[pKey][Notes][msgKey].txt = NuNData[pKey][Notes][msgKey].txt..linesInError[i].."\n";
			end
		end
		NuN_Message(NUN_NONCRITICAL_ERROR..msgKey);
	end

	NuNTransmit:Enable();
end



function NuN_TransmitContact(dfltLang, user)
	local parsedArray = {};
	local singleLine = "";


	if ( NuNData[pKey][c_name] ) then
		local parsedArray = {};
		local singleLine = "";
		local arrayCounter = 1;
		local parseText = "";
		local txtArray = {};

		parsedArray[arrayCounter] = NUN_TRANSMISSION_PREFIX2.."Contact : "..c_name;

		if ( not NuN_ChatCheckBox:GetChecked() ) then
			singleLine = NuNData[pKey][c_name].faction.."  ";
			if ( NuNData[pKey][c_name].race ) then
				if ( horde ) then
					singleLine = singleLine..HRaces[NuNData[pKey][c_name].race].."  ";
				else
					singleLine = singleLine..ARaces[NuNData[pKey][c_name].race].."  ";
				end
			end
			if ( NuNData[pKey][c_name].cls ) then
				if ( horde ) then
					singleLine = singleLine..HClasses[NuNData[pKey][c_name].cls].."  ";
				else
					singleLine = singleLine..AClasses[NuNData[pKey][c_name].cls].."  ";
				end
			end
			if ( NuNData[pKey][c_name].sex ) then
				singleLine = singleLine..Sexes[NuNData[pKey][c_name].sex].."  ";
			end
			if ( NuNData[pKey][c_name].prof1 ) then
				singleLine = singleLine..Professions[NuNData[pKey][c_name].prof1].."  ";
			end
			if ( NuNData[pKey][c_name].prof2 ) then
				singleLine = singleLine..Professions[NuNData[pKey][c_name].prof2].."  ";
			end
			if ( NuNData[pKey][c_name].crank ) then
				if ( horde ) then
					singleLine = singleLine..HRanks[NuNData[pKey][c_name].crank].."  ";
				else
					singleLine = singleLine..ARanks[NuNData[pKey][c_name].crank].."  ";
				end
			end
			if ( NuNData[pKey][c_name].hrank ) then
				if ( horde ) then
					singleLine = singleLine..HRanks[NuNData[pKey][c_name].hrank].."  ";
				else
					singleLine = singleLine..ARanks[NuNData[pKey][c_name].hrank].."  ";
				end
			end

			if ( singleLine ~= "" ) then
				singleLine = "G:"..singleLine;
				arrayCounter = arrayCounter + 1;
				parsedArray[arrayCounter] = singleLine;
			end

			for n = 1, uBttns, 1 do
				singleLine = "";
				hdNbr = pHead..n;
				nameHdNbr = c_name..hdNbr;
				nameDtNbr = c_name..pDetl..n;
				if ( NuNData[pKey][nameHdNbr] ) then
					singleLine = NuNData[pKey][nameHdNbr].txt.."~    ";
				elseif ( NuNSettings[pKey][hdNbr] ) then
					singleLine = NuNSettings[pKey][hdNbr].txt.."~    ";
				else
					singleLine = dfltHeadings[n].."~    ";
				end
				if ( NuNData[pKey][nameDtNbr] ) then
					singleLine = singleLine.."~"..NuNData[pKey][nameDtNbr].txt;
				end
				if ( singleLine ~= "" ) then
					arrayCounter = arrayCounter + 1;
					singleLine = "U"..n..":"..singleLine;
					parsedArray[arrayCounter] = singleLine;
				end
			end
		end

--		parseText = NuN_GetCText(c_name);
		parseText = NuNText:GetText();
		txtArray = NuN_ParseNote(parseText);
		if ( txtArray ) then
			for i=1, getn(txtArray), 1 do
				arrayCounter = arrayCounter + 1;
				parsedArray[arrayCounter] = "T:"..txtArray[i];
			end
		end

		arrayCounter = arrayCounter + 1;
		parsedArray[arrayCounter] = NUN_TRANSMISSION_POSTFIX.."Contact : "..c_name;

		return parsedArray, nil;
	else
		return nil, "Err01";
	end
end



function NuN_TransmitGeneral(dfltLang, user)
	local ref = c_note;

	if ( NuNData[itmIndex][ref] ) then
		ref = NuNData[itmIndex][ref];
	end

	if ( ( NuNData[pKey][Notes][ref] ) or ( NuNData[Notes][ref] ) ) then
		local parsedArray = {};
		local singleLine = "";
		local arrayCounter = 1;
		local parseText = "";
		local txtArray = {};

		parsedArray[arrayCounter] = NUN_TRANSMISSION_PREFIX2.."General : "..c_note;

--		parseText = NuN_GetGText(c_note);
		parseText = NuNGNoteTextScroll:GetText();
		txtArray = NuN_ParseNote(parseText);
		if ( txtArray ) then
			for i=1, getn(txtArray), 1 do
				arrayCounter = arrayCounter + 1;
				parsedArray[arrayCounter] = "T:"..txtArray[i];
			end
		end

		arrayCounter = arrayCounter + 1;
		parsedArray[arrayCounter] = NUN_TRANSMISSION_POSTFIX.."General : "..c_note;

		return parsedArray, nil;
	else
		return nil, "Err01";
	end
end



function NuN_ParseNote(parseText)
	local parsedArray = {};
	local arrayCounter = 0;
	local p1 = 0;
	local p2 = 0;
	local txtTmp = "";

	parseText = NuN_RemoveColours(parseText);
	parseText = NuN_CheckHyperlinkPositions(parseText);

	local parseTextLen = string.len(parseText);
	local negOffset = -1 * (parseTextLen);

	while ( negOffset < 0 ) do
		p2 = string.find(parseText, "\n", (p1+1) );
		if ( ( p2 == nil ) or ( p2 > ( NUN_CHAT_LIMIT + p1 ) ) ) then
			negOffset = p1 + NUN_CHAT_LIMIT - parseTextLen;
			if ( negOffset < 0 ) then
				p2 = string.find(parseText, " ", negOffset);
				if ( ( p2 == nil ) or ( p2 <= p1 ) ) then
					txtTmp = string.sub(parseText, (p1+1), (p1+NUN_CHAT_LIMIT));
				else
					txtTmp = string.sub(parseText, (p1+1), p2);
				end
			else
				txtTmp = string.sub(parseText, (p1+1));
			end
		else
			txtTmp = string.sub(parseText, (p1+1), p2);
		end
		if ( p2 ) then
			p1 = p2;
		else
			p1 = parseTextLen;
		end
		if ( txtTmp ~= "" ) and ( txtTmp ~= " " ) then
			arrayCounter = arrayCounter + 1;
			parsedArray[arrayCounter] = txtTmp;
		end
	end

	return parsedArray;
end


function NuN_RemoveColours(colouredText)
	local gp1 = 0;
	local gp2a = 0;
	local gp2b = 0;
	local gp3 = 0;
	local plainText="";
	local malformed = false;
	local postfix = "";

	while ( true ) do
		gp2a = string.find(colouredText, "|c", (gp1+1));
		if ( gp2a == nil ) then
			break;
		else
			if ( gp2a ~= (gp1+1) ) then
				plainText = plainText..string.sub(colouredText, (gp1+1), (gp2a-1));
			end
			gp2b = string.find(colouredText, "|Hitem:", (gp1+1));
			gp3 = string.find(colouredText, "|h|r", gp2a);
			if ( gp3 == nil ) then
				malformed = true;
				break;
			end
			if ( gp2b == nil ) or ( gp2b > gp3 ) then
				plainText = plainText..string.sub(colouredText, (gp2a+12), (gp3-1));
			elseif ( (gp2b-gp2a) == 10 ) then
				plainText = plainText..string.sub(colouredText, gp2a, (gp3+3));
			else
				malformed = true;
				break;
			end
			gp1 = gp3 + 3;
		end
	end
	if ( not malformed ) then
		postfix = string.sub(colouredText, (gp1+1));
		if ( postfix ) then
			plainText = plainText..postfix;
		end
	else
		plainText = "";
		NuN_Message(NUN_COLOUR_ERROR_REPORT);
	end

	return plainText;
end


function NuN_Validate(txt, tst)
	local p1 = 0;
	local p2 = 0;
	local count = 0;

	while ( true ) do
		p2 = string.find(txt, tst, (p1+1));
		if ( p2 == nil ) then
			break;
		else
			count = count + 1;
			p1 = p2;
		end
	end

	return count;
end


function NuN_ChatCheckBox_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_CHATCHECK_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_CHATCHECK_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_CHATCHECK_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end



function NuN_CheckHyperlinkPositions(theText)
	local hypBegs = {};
	local p1 = 0;
	local p2 = 0;
	local counter = 0;
	local Begs = 0;
	local rtrnText = "";

	while ( true ) do
		p2 = string.find(theText, "|Hitem:", (p1+1) );
		if ( p2 == nil ) then
			break;
		else
			counter = counter + 1;
			hypBegs[counter] = p2 - 10;
			p1 = p2;
		end
	end

	if ( hypBegs ) then
		local base = 1;
		local preText = "";
		local len = 0;
		for i=1, getn(hypBegs), 1 do
			preText = string.sub(theText, base, (hypBegs[i] - 1));
			len = string.len(preText);
			local p3 = 0;
			local p4 = 0;
			p2 = nil;
			while ( true ) do
				p4 = string.find(preText, "\n", (p3+1));
				if ( p4 == nil ) then
					break;
				else
					p2 = p4;
					p3 = p4;
				end
			end
			if ( p2 == nil ) and ( len > 120 ) then
				rtrnText = rtrnText..preText.."\n";
				base = base + len;
			elseif ( p2 ) and ( (len - p2) > 120 ) then
				rtrnText = rtrnText..preText.."\n";
				base = base + len;
			elseif ( p2 ) then
				rtrnText = rtrnText..string.sub(theText, base, (base + p2));
				base = base + p2 + 1;
			end
		end
		rtrnText = rtrnText..string.sub(theText, base);
	end

	return rtrnText;
end



function NuN_Level_CheckBox_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_LEVEL_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_LEVEL_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_LEVEL_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end



function NuNGTypeDropDown_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_GTYPE_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_GTYPE_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_GTYPE_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end



function NuNScaleFrameButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_SCALE_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_SCALE_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_SCALE_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end



function NuN_NPCTarget()
	local chkName = UnitName("target");
	local npcText = "";

	if ( ( chkName ) and ( not UnitPlayerControlled("target") ) ) then
		npcText = NuN_NPCInfo();
		NuNGNoteTextScroll:SetText( NuNGNoteTextScroll:GetText().."\n"..npcText );
	end
end


function NuNScaleFrameShow()
	if ( NuN_ScaleFrame:IsVisible() ) then
		HideUIPanel(NuN_ScaleFrame);
	else
		ShowUIPanel(NuN_ScaleFrame);
	end
end


function NuNFrameScaleSlider_OnShow()
	local pScale = NuNSettings[pKey].pScale;

	NuNFrameScaleSliderCurrent:SetText( string.format("%d", (pScale * 100)) .. "%");
	this:SetMinMaxValues(NUN_FRAMESCALE_MIN, NUN_FRAMESCALE_MAX);
	this:SetValueStep(NUN_FRAMESCALE_STEP);
	this:SetValue(NUN_FRAMESCALE_MIN + NUN_FRAMESCALE_MAX - pScale);
	this.previousValue = this:GetValue();
end


function NuNFrameScaleSlider_OnValueChanged()
	local pScale;

	if (this:GetValue() ~= this.previousValue) then
		this.previousValue = this:GetValue();
		pScale = (NUN_FRAMESCALE_MIN + NUN_FRAMESCALE_MAX - this:GetValue());
		NuNSettings[pKey].pScale = pScale;
		NuNFrameScaleSliderCurrent:SetText( string.format("%d", (pScale * 100)) .. "%");
		if ( NuNOptionsFrame:IsVisible() ) then
			NuNOptionsFrame:SetScale(NuNSettings[pKey].pScale);
		end
		if ( NuNFrame:IsVisible() ) then
			NuNFrame:SetScale(NuNSettings[pKey].pScale);
		end
		if ( NuNGNoteFrame:IsVisible() ) then
			NuNGNoteFrame:SetScale(NuNSettings[pKey].pScale);
		end
		if ( NuNSearchFrame:IsVisible() ) then
			NuNSearchFrame:SetScale(NuNSettings[pKey].pScale);
		end
	end
end


function NuNFontScaleSlider_OnShow()
	local tScale = NuNSettings[pKey].tScale;

	NuNFontScaleSliderCurrent:SetText( string.format("%d", (tScale * 100)) .. "%");
	this:SetMinMaxValues(NUN_TT_FONTSCALE_MIN, NUN_TT_FONTSCALE_MAX);
	this:SetValueStep(NUN_FONTSCALE_STEP);
	this:SetValue(NUN_TT_FONTSCALE_MIN + NUN_TT_FONTSCALE_MAX - tScale);
	this.previousValue = this:GetValue();
end


function NuNFontScaleSlider_OnValueChanged()
	local tScale;

	if (this:GetValue() ~= this.previousValue) then
		this.previousValue = this:GetValue();
		tScale = (NUN_TT_FONTSCALE_MIN + NUN_TT_FONTSCALE_MAX - this:GetValue());
		NuNSettings[pKey].tScale = tScale;
		NuNFontScaleSliderCurrent:SetText( string.format("%d", (tScale * 100)) .. "%");
		NuN_PinnedTooltip:SetScale(NuNSettings[pKey].tScale);
		NuN_Tooltip:SetScale(NuNSettings[pKey].tScale);
	end
end


function NuNMapFontScaleSlider_OnShow()
	local mScale = NuNSettings[pKey].mScale;

	NuNMapFontScaleSliderCurrent:SetText( string.format("%d", (mScale * 100)) .. "%");
	this:SetMinMaxValues(NUN_TT_MAPFONTSCALE_MIN, NUN_TT_MAPFONTSCALE_MAX);
	this:SetValueStep(NUN_MAPFONTSCALE_STEP);
	this:SetValue(NUN_TT_MAPFONTSCALE_MIN + NUN_TT_MAPFONTSCALE_MAX - mScale);
	this.previousValue = this:GetValue();
end


function NuNMapFontScaleSlider_OnValueChanged()
	local mScale;

	if (this:GetValue() ~= this.previousValue) then
		this.previousValue = this:GetValue();
		mScale = (NUN_TT_MAPFONTSCALE_MIN + NUN_TT_MAPFONTSCALE_MAX - this:GetValue());
		NuNSettings[pKey].mScale = mScale;
		NuNMapFontScaleSliderCurrent:SetText( string.format("%d", (mScale * 100)) .. "%");
		mScale = UIParent:GetScale() * NuNSettings[pKey].mScale;
		WorldMapTooltip:SetScale(NuNSettings[pKey].mScale);
		NuN_MapTooltip:SetScale(NuNSettings[pKey].mScale);
		NuNPopup:SetScale(NuNSettings[pKey].mScale);
	end
end



function NuN_BuildQuestText()
	local numQuestRewards, numQuestChoices, numQuestSpellRewards;
	local QuestRewardMoney, QuestRequiredMoney;
	local qText = "\n";
	local obj, objTxt, objType, itm, itmTxt;
	local gold, silver, copper, moneyTxt;
	local tmpQText1 = "";
	local tmpQText2 = "";
	local questItem = "QuestLogItem";
	local error = false;

	numQuestRewards = GetNumQuestLogRewards();
	numQuestChoices = GetNumQuestLogChoices();
	if ( GetQuestLogRewardSpell() ) then
		numQuestSpellRewards = 1;
	end
	QuestRewardMoney = GetQuestLogRewardMoney();
	QuestRequiredMoney = GetQuestLogRequiredMoney();

	tmpQText1, tmpQText2 = GetQuestLogQuestText();
	qText = tmpQText2.."\n\n";

	if ( GetQuestLogTimeLeft() ) then
		qText = qText.."\nTimed Quest\n";
	end

	if ( QuestRequiredMoney ) and ( QuestRequiredMoney > 0 ) then
		if ( QuestRequiredMoney > 9999 ) then
			gold = ( QuestRequiredMoney / 10000 );
			gold = string.format("%d", gold);
			QuestRequiredMoney = QuestRequiredMoney - ( gold * 10000 );
		else
			gold = 0;
		end
		if ( QuestRequiredMoney > 99 ) then
			silver = ( QuestRequiredMoney / 100 );
			silver = string.format("%d", silver);
			QuestRequiredMoney = QuestRequiredMoney - ( silver * 100 );
		else
			silver = 0;
		end
		copper = QuestRequiredMoney;
		QuestRequiredMoneyTxt = string.format("\n%dg %ds %dc", gold, silver, copper);
		qText = qText..QuestRequiredMoneyTxt.."\n\n";
	end

	qText = qText.."\n\n"..tmpQText1.."\n";

	if ( ( QuestRewardMoney ) and ( QuestRewardMoney > 0 ) ) or ( numQuestRewards > 0 ) then
		qText = qText.."\n"..NUN_REWARDS.."\n";
	end

	if ( QuestRewardMoney ) and ( QuestRewardMoney > 0 ) then
		QuestRewardMoneyTxt = NuN_BuildMoneyString(QuestRewardMoney);
		qText = qText..QuestRewardMoneyTxt.."\n";
	end

	for i=1, numQuestRewards, 1 do
		bttn = getglobal("QuestLogItem"..i + numQuestChoices);
		if ( bttn.type ) then
			local link = GetQuestLogItemLink(bttn.type, bttn:GetID());
			if ( link ) then
				qText = qText..link.."\n";
			else
				link = GetQuestLogItemLink(bttn.type, ( i + numQuestChoices ) );
				if ( link ) then
					qText = qText..link.."\n";
				else
					error = true;
					qText = NUN_SLOWSERVER.." : NuN Err03";
					return qText, error;
				end
			end
		end
	end

	if ( numQuestChoices > 1 ) then
		qText = qText.."\n"..NUN_CHOICES.."\n";
	end

	for i=1, numQuestChoices, 1 do
		bttn = getglobal("QuestLogItem"..i);
		if ( bttn.type ) then
			local link = GetQuestLogItemLink(bttn.type, bttn:GetID());
			if ( link ) then
				if ( i > 1 ) then
					qText = qText.." / "..link;
				else
					qText = qText..link;
				end
			else
				link = GetQuestLogItemLink(bttn.type, i);
				if ( link ) then
					if ( i > 1 ) then
						qText = qText.." / "..link;
					else
						qText = qText..link;
					end
				else
					error = true;
					qText = NUN_SLOWSERVER.." : NuN Err03";
					return qText, error;
				end
			end
		end
	end

	if ( qText ) then
		qText = NuN_CleanQuestText(qText);
	end

	return qText, error;
end

function NuN_CheckQuestList(findName)
	local qTitle, qLevel, qTag, qHeader, qCollapsed, qComplete;
	local foundIndex = -1;
	local rLevel, rTag, rComplete;

	NuNQuestLog = {};

	for i = 1, GetNumQuestLogEntries(), 1 do
		qTitle, qLevel, qTag, qHeader, qCollapsed, qComplete = GetQuestLogTitle(i);
		if ( ( qTitle ) and ( not qHeader ) ) then
			NuNQuestLog[qTitle] = 1;
			if ( ( findName ) and ( findName == qTitle ) ) then
				foundIndex = i;
				rLevel = qLevel;
				rTag = qTag;
				rComplete = qComplete;
			end
		end
	end

	return foundIndex, rLevel, rTag, rComplete;
end

function NuN_UpdateQuestNotes(qEvent)
	local quest, qLevel, qTag, qHeader, qCollapsed, qComplete;

	qTriggs = 0;

	if ( pFaction ) then
		for qI=1, GetNumQuestLogEntries(), 1 do
			quest, qLevel, qTag, qHeader, qCollapsed, qComplete = GetQuestLogTitle(qI);
			if ( ( quest ) and ( not qHeader ) ) then
				NuN_ProcessQuest(quest, qLevel, qTag, qHeader, qCollapsed, qComplete, qI);
			end
		end
	end

	if ( qTriggs > 2 ) then
		timeSinceLastUpdate = 0;
		NuN_QuestsUpdating = "True";
	end
end

function NuN_ProcessQuest(quest, qLevel, qTag, qHeader, qCollapsed, qComplete, qI)
	local saveLvl = nil;
	local qText;
	local location = NuN_GetLoc();

	local l_c_note = c_note;
	local l_g_text = g_text;
	local l_c_name = c_name;

	if ( ( NuNData[pKey].QuestHistory[pName][quest] ) and ( NuNData[pKey].QuestHistory[pName][quest].abandoned ) ) then
		NuNData[pKey].QuestHistory[pName][quest].abandoned = nil;
		return;
	end

	QuestLog_SetSelection(qI);

	local qChar = NuN_CheckTarget();
	if ( qChar == "N" ) then
		qChar = c_note;
	else
		qChar = "";
	end
	if ( ( not NuNData[pKey].QuestHistory[pName][quest] ) and ( NuNSettings[pKey].autoQ ) ) then
		NuNData[pKey].QuestHistory[pName][quest] = {};
		NuNData[pKey].QuestHistory[pName][quest].sortDate = tostring(date("%Y%m%d%H%M%S"))..":"..qI;
		NuNData[pKey].QuestHistory[pName][quest].pLevel = UnitLevel("player");
		NuNData[pKey].QuestHistory[pName][quest].txt = NUN_CREATED.."   "..qChar.."\n    "..NuN_GetDateStamp().."\n    "..location.."\n";
		qTriggs = qTriggs + 1;
	end

	local chk = NuN_CleanQuestText( GetQuestLogQuestText() );
	if ( qLevel == nil ) then
		qLevel = "--";
	end
	if ( qTag == nil ) then
		qTag = "";
	end
	if ( qChar ~= "" ) then
		qChar = qChar.."   "..NuN_LocStrip(location);
	end
	qText = "\n"..quest.."     "..NUN_QLVL..qLevel.."     "..qTag.."\n"..qChar.."\n\n"..NuN_BuildQuestText().."\n";

	if ( not string.find(chk, "Unknown Entity") ) then
		if ( ( qComplete ) and ( NuNData[pKey].QuestHistory[pName][quest] ) and ( ( not NuNData[pKey].QuestHistory[pName][quest].complete ) or ( ( NuNData[pKey].QuestHistory[pName][quest].complete ~= chk ) and ( string.find(qText, chk) ) ) ) ) then
			NuNData[pKey].QuestHistory[pName][quest].complete = chk;
			NuNData[pKey].QuestHistory[pName][quest].txt = NuNData[pKey].QuestHistory[pName][quest].txt.."\n\n"..NUN_COMPLETE.."\n    "..NuN_GetDateStamp().."\n    "..location.."\n";
		end
		if ( NuNData[Notes][quest] ) then
			c_note = quest;
			g_text = NuN_GetGText(c_note);
			if ( ( not string.find( g_text, chk) ) and ( string.find(qText, chk) ) ) then
				if ( ( NuNGNoteFrame:IsVisible() ) and ( noteTypes[NuNGNoteFrame.type].Command == "QST" ) ) then
					HideUIPanel(NuNGNoteFrame);
				end
				g_text = g_text.."\n\n".."--------------".."\n\n"..qText;
				NuN_SetGText("Account");
			end
		elseif ( NuNData[pKey][Notes][quest] ) then
			c_note = quest;
			g_text = NuN_GetGText(c_note);
			if ( ( not string.find( g_text, chk ) ) and ( string.find(qText, chk) ) ) then
				if ( ( NuNGNoteFrame:IsVisible() ) and ( noteTypes[NuNGNoteFrame.type].Command == "QST" ) ) then
					HideUIPanel(NuNGNoteFrame);
				end
				g_text = g_text.."\n\n".."--------------".."\n\n"..qText;
				NuN_SetGText("Realm");
			end
		elseif ( ( not NuNData[Notes][quest] ) and ( not NuNData[pKey][Notes][quest] ) and ( NuNSettings[pKey].autoQ ) ) then
			if ( NuNSettings[pKey].dLevel ) then
				NuNData[Notes][quest] = {};
				NuNData[Notes][quest].type = 5;
				saveLvl = "Account";
			else
				NuNData[pKey][Notes][quest] = {};
				NuNData[pKey][Notes][quest].type = 5;
				saveLvl = "Realm";
			end
			c_note = quest;
			g_text = qText;
			NuN_SetGText(saveLvl);
			if ( ( qChar ~= "" ) and ( NuNSettings[pKey].autoMapNotes ) ) then
				NuN_MapNote("Target", NUN_QUEST_GIVER, "", 9);
			end
		end
	end

	c_note = l_c_note;
	g_text = l_g_text;
	c_name = l_c_name;
end

function NuN_AbandonQuest(qTitle)
	if ( NuNData[pKey].QuestHistory[pName][qTitle] ) then
		NuNData[pKey].QuestHistory[pName][qTitle].abandoned = true;
		if ( NuNQuestLog[qTitle] ) then
			NuNQuestLog[qTitle] = nil;
		end
	end
end

function NuN_QuestHandIn(q)
	if ( NuNData[pKey].QuestHistory[pName][q] ) then
		local l_c_note = c_note;
		local l_c_name = c_name;
		local qChar = NuN_CheckTarget();
		if ( qChar == "N" ) then
			qChar = c_note;
		else
			qChar = "";
		end
		NuNData[pKey].QuestHistory[pName][q].handedIn = 1;
		NuNData[pKey].QuestHistory[pName][q].txt = NuNData[pKey].QuestHistory[pName][q].txt.."\n\n"..NUN_FINISHED.."   "..qChar.."\n    "..NuN_GetDateStamp().."\n    "..NuN_GetLoc().."\n";
		c_note = l_c_note;
		c_name = l_c_name;
	end
end



function NuN_InitialiseSavedVariables()
	local index, value;

	pKey = GetCVar("realmName");
	if (not NuNData[pKey]) then
		NuNData[pKey] = {};
		NuNSettings[pKey] = {};
		NuNSettings[pKey].toolTips = "1";
		NuNSettings[pKey].pScale = 1.00;
		NuNSettings[pKey].tScale = 1.00;
		NuNSettings[pKey].mScale = 1.00;
		NuNSettings[pKey].ttLen = NUN_TT_MAX;
		NuNSettings[pKey].ttLLen = NUN_TT_LEN;
		NuNData[pKey][Notes] = {};
		NuNSettings[pKey].minOver = "1";
		NuNSettings[pKey].dLevel = "1";
	end
	if ( not NuNSettings.Version ) then
		for index, value in NuNSettings do
			if ( index ~= "Version" ) then
				NuNSettings[index].toolTips = "1";
				NuNSettings[index].pScale = 1.00;
				NuNSettings[index].tScale = 1.00;
				NuNSettings[index].mScale = 1.00;
				NuNSettings[index].ttLen = NUN_TT_MAX;
				NuNSettings[index].ttLLen = NUN_TT_LEN;
				NuNSettings[index].minOver = "1";
				NuNSettings[pKey].dLevel = "1";
			end
		end
		NuNSettings.Version = NUN_VERSION;
	end
	if ( NuNSettings.Version < "2.51" ) then
		for index, value in NuNSettings do
			if ( index ~= "Version" ) then
				NuNSettings[index].mScale = 1.00;
				NuNSettings[index].minOver = "1";
			end
		end
		NuNSettings.Version = NUN_VERSION;
	end
	if ( NuNSettings.Version < "3.00" ) then
		for index, value in NuNSettings do
			if ( index ~= "Version" ) then
				NuNSettings[index].mScale = 1.00;
			end
		end
		NuNSettings.Version = NUN_VERSION;
	end
	if ( NuNSettings.Version < NUN_VERSION ) then
		NuNSettings.Version = NUN_VERSION;
	end
	if ( not NuNData[itmIndex] ) then
		NuNData[itmIndex] = {};
	end
	if ( not NuNData[Notes] ) then
		NuNData[Notes] = {};
	end
	if ( not NuNData[pKey].QuestHistory ) then
		NuNData[pKey].QuestHistory = {};
	end
	if ( not NuNData[pKey].QuestHistory[pName] ) then
		NuNData[pKey].QuestHistory[pName] = {};
	end
	if ( not NuNData[mrgIndex] ) then
		NuNData[mrgIndex] = {};
	end
end



function NuN_OptionsTextLengthSet()
	local len = this:GetText();

	if ( len ) then
		NuNSettings[pKey].ttLen = len;
	else
		NuNSettings[pKey].ttLen = "0";
	end
end



function NuN_OptionsTextLineLengthSet()
	local len = this:GetText();

	if ( len ) then
		NuNSettings[pKey].ttLLen = len;
	else
		NuNSettings[pKey].ttLLen = "0";
	end
end



function NuN_FetchQuestHistory()
	local index, value;
	local counter = 0;
	local results = 0;

	foundNuN = {};
	for index, value in NuNData[pKey].QuestHistory[pName] do
		counter = counter + 1;
		foundNuN[counter] = NUN_QUEST_C..index;
	end

	table.sort(foundNuN, NuN_SortQuestHistory);
	results = getn(foundNuN);
	NuNSearchTitleText:SetText(pName.."'s "..NUN_QUESTS_TEXT.." ("..results..")");

	NuNSearch_Update();
	if ( ( deletedE ) and ( visibles > 0 ) and ( lastBttn ~= nil ) ) then
		deletedE = false;
		if ( lastBttnIndex > visibles ) then
			NuNSearch_HighlightRefresh(lastVisible);
			NuNSearchNote_OnClick(lastVisible);
		else
			NuNSearch_HighlightRefresh(lastBttn);
			NuNSearchNote_OnClick(lastBttn);
		end
	else
		NuNSearch_HighlightRefresh(nil);
	end
end



function NuN_SortQuestHistory(ele1, ele2)
	ele1 = string.sub(ele1, 2);
	ele2 = string.sub(ele2, 2);
	if ( NuNData[pKey].QuestHistory[pName][ele1].sortDate > NuNData[pKey].QuestHistory[pName][ele2].sortDate ) then
		return true;
	end

	return false;
end



function NuN_CleanQuestText(dirtyText)
	local cleanText = string.gsub(dirtyText, pName, NUN_REPLACEQNAME_TXT);
	cleanText = string.gsub(cleanText, "$N", NUN_REPLACEQNAME_TXT);

	local class = UnitClass("player");
	cleanText = string.gsub(cleanText, class, NUN_REPLACEQCLASS_TXT);
	cleanText = string.gsub(cleanText, strlower(class), NUN_REPLACEQCLASS_TXT);

	return cleanText;
end


function NuN_ToggleMicroButtons()
	if ( NuNMicroFrame:IsVisible() ) then
		HideUIPanel(NuNMicroFrame);
		NuNSettings[pKey].hideMicro = "1";
	else
		ShowUIPanel(NuNMicroFrame);
		NuNSettings[pKey].hideMicro = nil;
	end
end


function NuN_ProcessParty()
	local pChanged = nil;
	local lMember, index, value;
	local partyA = {};
	local lMembers = GetNumPartyMembers();

	if ( not NuNData[pKey][NuN_Parties] ) then
		NuNData[pKey][NuN_Parties] = {};
	end
	if ( ( not NuNData[pKey][NuN_Parties][pName] ) or ( ( not UnitInRaid("player") ) and ( lMembers == 0 ) ) ) then
		NuNData[pKey][NuN_Parties][pName] = {};
	end

	for i = 1, lMembers, 1 do
		lMember = UnitName("party"..i);
		if ( lMember == "Unknown Entity" ) then
			return;
		end
		if ( lMember ) then
			partyA[lMember] = {};
			partyA[lMember].pos = i;
			if ( not NuNData[pKey][NuN_Parties][pName][lMember] ) then
				NuNData[pKey][NuN_Parties][pName][lMember] = {};
				NuNData[pKey][NuN_Parties][pName][lMember].pos = i;
				if ( not NuNData[pKey][lMember] ) then
					NuNData[pKey][lMember] = {};
					NuNData[pKey][lMember].type = NUN_PARTY_C;
					NuNData[pKey][lMember].faction = pFaction;
					NuNData[pKey][lMember][txtTxt] = NUN_AUTO_PARTIED..NuN_GetDateStamp();
					NuNData[pKey][lMember][pName] = {};
					NuNData[pKey][lMember][pName].partied = 1;
				else
					if ( not NuNData[pKey][lMember][pName] ) then
						NuNData[pKey][lMember][pName] = {};
						NuNData[pKey][lMember][pName].partied = 1;
					elseif ( not NuNData[pKey][lMember][pName].partied ) then
						NuNData[pKey][lMember][pName].partied = 1;
					else
						NuNData[pKey][lMember][pName].partied = NuNData[pKey][lMember][pName].partied + 1;
					end
				end
			end
		end
	end

	for index, value in NuNData[pKey][NuN_Parties][pName] do
		if ( not partyA[index] ) then
			if ( UnitInRaid("player") ) then
				local rID = NuN_CheckRaidByName(index);
				if ( not rID ) then
					NuNData[pKey][NuN_Parties][pName][index] = nil;
				end
			else
				NuNData[pKey][NuN_Parties][pName][index] = nil;
			end
		end
	end
end



function NuN_PartyDownButton_OnClick()
	local lParties = NuNData[pKey][c_name][pName].partied;

	lParties = lParties - 1;
	if ( lParties < 1 ) then
		NuNData[pKey][c_name][pName].partied = nil;
		NuNPartiedLabel:Hide();
		NuNPartiedNumberLabel:SetText("(0)");
		NuNPartiedNumberLabel:Hide();
		NuNFramePartyDownButton:Hide();
	else
		NuNData[pKey][c_name][pName].partied = lParties;
		NuNPartiedNumberLabel:SetText("(x"..tostring(lParties)..")");
	end
end


function NuN_PartyDownButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_PDOWN_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_PDOWN_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_PDOWN_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_bHaveTTCheckBox_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		NuN_Tooltip:SetOwner(this);
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_BHAVE_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_BHAVE_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_BHAVE_TXT3, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_BHAVE_TXT4, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_BHAVE_TXT5, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end

function NuN_BuildShoppingList()
	local listText = "";
	local mName = MerchantNameText:GetText();

	if ( mName == c_note ) then
		local iPrice, iPriceTxt, iQuant, iNumAvail, iLink, iDiscard;
		local numMerchantItems = GetMerchantNumItems();

		for i=1, numMerchantItems, 1 do
			iLink = GetMerchantItemLink(i);
			if ( iLink ) then
				listText = listText.."\n"..iLink;
			end
			iDiscard, iDiscard, iPrice, iQuant, iNumAvail = GetMerchantItemInfo(i);
			if ( ( iQuant ) and ( iQuant > 1 ) ) then
				listText = listText.." ("..iQuant..") ";
			end
			if ( ( iPrice ) and ( iPrice > 0 ) ) then
				iPriceTxt = NuN_BuildMoneyString(iPrice);
				listText = listText.."   "..iPriceTxt;
			end
			if ( ( iNumAvail ) and ( iNumAvail > 0 ) ) then
				listText = listText.."        "..NUN_LIMITED;
			end
		end
	end

	if ( listText == "" ) then
		return nil;
	else
		return listText;
	end
end


function NuN_BuildMoneyString(moneyVal)
	local moneyTxt = nil;
	local gold, silver, copper;

	if ( ( moneyVal ) and ( moneyVal > 0 ) ) then
		if ( moneyVal > 9999 ) then
			gold = ( moneyVal / 10000 );
			gold = string.format("%d", gold);
			moneyVal = moneyVal - ( gold * 10000 );
		else
			gold = 0;
		end
		if ( moneyVal > 99 ) then
			silver = ( moneyVal / 100 );
			silver = string.format("%d", silver);
			moneyVal = moneyVal - ( silver * 100 );
		else
			silver = 0;
		end
		copper = moneyVal;
		moneyTxt = string.format("%dg %ds %dc", gold, silver, copper);
	end

	return moneyTxt;
end


function NuN_SaveOpen()
	if ( NuNFrame:IsVisible() ) then
		NuN_WriteNote();
	end
	if ( NuNGNoteFrame:IsVisible() ) then
		NuNGNote_WriteNote();
	end
end


function NuN_TextEscape(lFrame, lText)
	if ( NuNSettings[pKey].bHave ) then
		lText:ClearFocus();
		if ( ( lText:GetText() == nil ) or ( lText:GetText() == "" ) ) then
			lText:SetText("\n");
		end
	else
		HideUIPanel(lFrame);
	end
end



function NuN_OverTTCheckBox_OnClick()
	if ( NuN_OverTTCheckBox:GetChecked() ) then
		NuNSettings[pKey].minOver = "1";
	else
		NuNSettings[pKey].minOver = nil;
	end
end



function NuN_AutoPartyCheckBox_OnClick()
	if ( NuN_AutoPartyCheckBox:GetChecked() ) then
		NuNSettings[pKey].autoP = "1";
		NuN_ProcessParty();
	else
		NuNSettings[pKey].autoP = nil;

	end
end


function NuN_BehaveCheckBox_OnClick()
	if ( NuN_BehaveCheckBox:GetChecked() ) then
		NuNSettings[pKey].bHave = "1";
	else
		NuNSettings[pKey].bHave = nil;
	end
end


function NuN_DeleteNote(dType)
	if ( NuNcDeleteFrame:IsVisible() ) then
		NuNcDeleteFrame:Hide();
	end
	NuNcDeleteFrame.type = dType;
	if ( dType == "Contact" ) then
		NuNcDeleteLabel:SetText(NUN_CONTACT_TXT.." :\n"..c_name);
		ShowUIPanel(NuNcDeleteFrame);
		NuNText:ClearFocus();
		NuNcDeleteGhostTextBox:SetFocus();
	else
		if ( NuNGNoteFrame.fromQuest ) then
			NuNcDeleteLabel:SetText(NUN_QUEST_NOTE.." :\n"..c_note);
		else
			NuNcDeleteLabel:SetText(NUN_GENERAL_TXT.." :\n"..c_note);
		end
		ShowUIPanel(NuNcDeleteFrame);
		NuNGNoteTextScroll:ClearFocus();
		NuNcDeleteGhostTextBox:SetFocus();
	end
end


function NuNcDeleteButton_OnClick()
	if ( NuNcDeleteFrame.type == "Contact" ) then
		HideUIPanel(NuNcDeleteFrame);
		NuN_Delete();
	elseif ( NuNcDeleteFrame.type == "General" ) then
		HideUIPanel(NuNcDeleteFrame);
		NuNGNote_Delete();
	end
end


function NuN_LocStrip(locData)
	if ( locData ) then
		local p = string.find(locData, " : ");
		if ( p ) then
			locData = string.sub(locData, (p+3));
		end
	end

	return locData;
end




function NuN_MapNote(MNType, MNxtra1, MNxtra2, MNColour)
	local MNCont, MNZone, x, y;
	local checknote = nil;
	local nKey = nil;

	if ( ( MetaMapNotes_OnLoad ) or ( MapNotes_OnLoad ) ) then
	else
		return;
	end

	MNCont, MNZone, x, y, checknote, nKey = NuN_GetMapNotesKey();
	if ( ( not MNCont ) or ( ( x == 0 ) and ( y == 0 ) ) ) then
		if ( MetaMapNotes_OnLoad ) then
			MetaMap_StatusPrint(METAMAPNOTES_QUICKNOTE_NOPOSITION);
		elseif ( MapNotes_OnLoad ) then
			MapNotes_StatusPrint(MAPNOTES_QUICKNOTE_NOPOSITION);
		end
        	return;
	end

	local MNLine1, MNLine2, MNAuthor, NuN_Reaction;
	local MNName;
	local tName = UnitName("target");
	if ( ( MNType == "Target" ) and ( tName ) and ( not UnitPlayerControlled("target") ) ) then
		NuN_Reaction = UnitReaction("player", "target");
		if ( not MNColour ) then
			if ( NuN_Reaction < 4 ) then
				MNColour = 1;
			elseif ( NuN_Reaction == 4 ) then
				MNColour = 0;
			end
		end
		MNName = UnitName("target");
	else
		MNName = c_note;
	end
	if ( not MNColour ) then
		MNColour = 3;
	end

	local theData;
	if ( MetaMapNotes_OnLoad ) then
		theData = MetaMapNotes_Data[MNCont];
	elseif ( MapNotes_OnLoad ) then
		theData = MapNotes_Data[MNCont];
	end

	if (checknote) then
		if ( ( inBG ) and ( MNName == theData[checknote].name ) ) then
			NuN_ReLinkMapNote(MNName, MNCont, MNZone, checknote);
			return;
		elseif ( ( not inBG ) and ( MNName == theData[MNZone][checknote].name ) ) then
			NuN_ReLinkMapNote(MNName, MNCont, MNZone, checknote);
			return;
		end
		local mergeFailed = NuN_MergeMapNote(MNCont, MNZone, checknote, MNName, nKey, MNxtra1, MNxtra2);
		if ( mergeFailed ) then
			local repName;
			if ( inBG ) then
				repName = theData[checknote].name;
			else
				repName = theData[zone][checknote].name;
			end
			if ( MetaMapNotes_OnLoad ) then
				MetaMap_StatusPrint( format(METAMAPNOTES_QUICKNOTE_NOTETONEAR, repName));
			elseif ( MapNotes_OnLoad ) then
				MapNotes_StatusPrint( format(MAPNOTES_QUICKNOTE_NOTETONEAR, repName));
			end
			NuN_Message( NUN_MAX_MERGED );
		end
	else
		MNLine1 = MNxtra1;
		MNLine2 = MNxtra2;
		MNAuthor = "NotesUNeed - "..pName;
		NuN_WriteMapNote(MNCont, MNZone, x, y, MNColour, MNName, MNLine1, MNLine2, MNAuthor);
	end
end

function NuN_ReLinkMapNote(MNName, MNCont, MNZone, tmpID)
	local NuN_Key = MNCont.."-"..MNZone.."-"..tmpID;
	if ( not NuNData[mrgIndex] ) then
		NuNData[mrgIndex] = {};
	end
	if ( not NuNData[mrgIndex][NuN_Key] ) then
		NuNData[mrgIndex][NuN_Key] = {};
		NuNData[mrgIndex][NuN_Key].noteCounter = 0;
	end
	if ( NuNData[mrgIndex][NuN_Key][MNName] ) then
		NuN_Message(NUN_NOTESUNEED_INFO);
		return;
	end
	if ( not NuNData[mrgIndex][NuN_Key].noteCounter ) then
		NuNData[mrgIndex][NuN_Key].noteCounter = 0;
	end
	NuNData[mrgIndex][NuN_Key].noteCounter = NuNData[mrgIndex][NuN_Key].noteCounter + 1;
	NuNData[mrgIndex][NuN_Key][MNName] = "1";
	if ( MetaMapNotes_OnLoad ) then
		NuN_Message("NotesUNeed <> MetaMapNote");
	elseif ( MapNotes_OnLoad ) then
		NuN_Message("NotesUNeed <> MapNote");
	end
end

function NuN_MergeMapNote(MNCont, MNZone, id, MNName, NuN_Key, MNxtra1, MNxtra2)
	local Merged = nil;
	local MNLine1, MNLine2, MNAuthor;
	local mrgEntry = nil;
	local oriNote;
	local mapNoted = true;
	local theData;

	if ( MetaMapNotes_OnLoad ) then
		if ( inBG ) then
			theData = MetaMapNotes_Data[MNCont];
		else
			theData = MetaMapNotes_Data[MNCont][MNZone];
		end
	elseif ( MapNotes_OnLoad ) then
		if ( inBG ) then
			theData = MapNotes_Data[MNCont];
		else
			theData = MapNotes_Data[MNCont][MNZone];
		end
	else
		return;
	end
	oriNote = theData[id].name;

	if ( not string.find(oriNote, MNName) ) then
		mapNoted = nil;
	end

	if ( not NuNData[mrgIndex] ) then
		NuNData[mrgIndex] = {};
	end
	if ( not NuNData[mrgIndex][NuN_Key] ) then
		NuNData[mrgIndex][NuN_Key] = {};
	else
		mrgEntry = true;
	end

	if ( mrgEntry ) then
		if ( not NuNData[mrgIndex][NuN_Key].noteCounter ) then
			local counter = 0;
			local index, value;
			for index, value in NuNData[mrgIndex][NuN_Key] do
				counter = counter + 1;
			end
			NuNData[mrgIndex][NuN_Key].noteCounter = counter;
		end
		if ( NuNData[mrgIndex][NuN_Key].noteCounter > 4 ) then
			return "Failed";
		end
		if ( NuNData[mrgIndex][NuN_Key][MNName] ) then
			return nil;
		else
			NuNData[mrgIndex][NuN_Key].noteCounter = NuNData[mrgIndex][NuN_Key].noteCounter + 1;
			NuNData[mrgIndex][NuN_Key][MNName] = "1";
		end
	elseif ( mapNoted ) then
		NuN_ReLinkMapNote(MNName, MNCont, MNZone, id);
	else
		if ( ( not NuNData[Notes][oriNote] ) and ( not NuNData[pKey][Notes][oriNote] ) ) then
			NuNData[mrgIndex][NuN_Key].noteCounter = 1;
			NuNData[mrgIndex][NuN_Key][MNName] = "1";
		else
			NuNData[mrgIndex][NuN_Key].noteCounter = 2;
			NuNData[mrgIndex][NuN_Key][MNName] = "1";
			NuNData[mrgIndex][NuN_Key][oriNote] = "1";
		end
	end

	if ( not mapNoted ) then
		theData[id].name = theData[id].name.." | "..MNName;
		theData[id].inf1 = theData[id].inf1.." | "..MNxtra1;
		theData[id].inf2 = theData[id].inf2.." | "..MNxtra2;
		theData[id].creator = NUN_POPUP_TITLE.." - "..pName;
	end

	if ( MetaMapNotes_OnLoad ) then
			MetaMap_StatusPrint( format(NUN_MERGING.." "..theData[id].name) );
	elseif ( MapNotes_OnLoad ) then
			MapNotes_StatusPrint( format(NUN_MERGING.." "..theData[id].name) );
	end

	return nil;
end


function NuN_WriteMapNote(MNCont, MNZone, x, y, MNColour, MNName, MNLine1, MNLine2, MNAuthor)
	local id = 0;
	local NuN_Key;
	local theData, theMiniData;
	local NuN_SetNextAsMiniNote;
	local numNotes, i, j, tmpID;

	if ( MetaMapNotes_OnLoad ) then
		if ( inBG ) then
			theData = MetaMapNotes_Data[MNCont];
		else
			theData = MetaMapNotes_Data[MNCont][MNZone];
		end
		theMiniData = MetaMapNotes_MiniNote_Data;
		NuN_SetNextAsMiniNote = MetaMapNotes_SetNextAsMiniNote;
		numNotes = MetaMapNotes_NotesPerZone;
		i = MetaMapNotes_GetZoneTableSize(theData);
	elseif ( MapNotes_OnLoad ) then
		if ( inBG ) then
			theData = MapNotes_Data[MNCont];
		else
			theData = MapNotes_Data[MNCont][MNZone];
		end
		theMiniData = MapNotes_MiniNote_Data;
		NuN_SetNextAsMiniNote = MapNotes_SetNextAsMiniNote;
		numNotes = MapNotes_NotesPerZone;
		i = 0;
		for j, value in MapNotes_Data[MNCont][MNZone] do
			i = i + 1;
		end
	else
		return;
	end

	if (NuN_SetNextAsMiniNote ~= 2) then
		if (i < numNotes) then
			tmpID = i + 1;
			theData[tmpID] = {};
			theData[tmpID].name = MNName;
			theData[tmpID].ncol = 0;
			theData[tmpID].inf1 = MNLine1;
			theData[tmpID].in1c = 0;
			theData[tmpID].inf2 = MNLine2;
			theData[tmpID].in2c = 0;
			theData[tmpID].creator = MNAuthor;
			theData[tmpID].icon = MNColour;
			theData[tmpID].xPos = x;
			theData[tmpID].yPos = y;
			if ( MetaMapNotes_OnLoad ) then
				MetaMap_StatusPrint(format(METAMAPNOTES_QUICKNOTE_OK, GetRealZoneText()));
			else
				MapNotes_StatusPrint(format(MAPNOTES_QUICKNOTE_OK, GetRealZoneText()));
			end

			NuN_Key = MNCont.."-"..MNZone.."-"..tmpID;
			if ( not NuNData[mrgIndex] ) then
				NuNData[mrgIndex] = {};
			end
			if ( not NuNData[mrgIndex][NuN_Key] ) then
				NuNData[mrgIndex][NuN_Key] = {};
			end
			NuNData[mrgIndex][NuN_Key].noteCounter = 1;
			NuNData[mrgIndex][NuN_Key][MNName] = "1";
		else
			if ( MetaMapNotes_OnLoad ) then
				MetaMap_StatusPrint(format(METAMAPNOTES_QUICKNOTE_TOOMANY, GetRealZoneText()));
			elseif ( MapNotes_OnLoad ) then
				MapNotes_StatusPrint(format(MAPNOTES_QUICKNOTE_TOOMANY, GetRealZoneText()));
			end
		end
	end

	if (NuN_SetNextAsMiniNote ~= 0) then
		theMiniData.xPos = x;
		theMiniData.yPos = y;
		theMiniData.MNCont = MNCont;
		theMiniData.MNZone = MNZone;
		theMiniData.id = id;
		theMiniData.name = MNName;
		theMiniData.color = 0;
		theMiniData.icon = MNColour;
		MiniNotePOITexture:SetTexture("Interface\\AddOns\\MapNotes\\POIIcons\\Icon"..MNColour);
		MiniNotePOI:Show();
		if ( MetaMapNotes_OnLoad ) then
			MetaMapNotes_SetNextAsMiniNote = 0;
			MetaMap_StatusPrint(METAMAPNOTES_SETMININOTE.." - "..MNName);
		elseif ( MapNotes_OnLoad ) then
			MapNotes_SetNextAsMiniNote = 0;
			MapNotes_StatusPrint(MAPNOTES_SETMININOTE.." - "..MNName);
		end
	end
end


function NuN_GetMapNotesKey()
	local id = nil;
	local nKey = nil;
	local x, y;
	local MNCont = nil;
	local MNZone = nil;

	inBG = false;

	SetMapToCurrentZone();
	MNCont = GetCurrentMapContinent();

	if ( MetaMapNotes_OnLoad ) then
		if ( MNCont == -1 ) then
			if ( not MetaMapNotes_Data[GetRealZoneText()] ) then
				MetaMapNotes_Data[GetRealZoneText()] = {};
			end
			MNCont = GetRealZoneText();
			MNZone = 0;
			inBG = true;
		else
			MNZone = MetaMapNotes_ZoneShift[MNCont][GetCurrentMapZone()];
			if ( not MetaMapNotes_Data[MNCont][MNZone] ) then
				MetaMapNotes_Data[MNCont][MNZone] = {};
			end
		end
	elseif ( MapNotes_OnLoad ) then
		if ( MNCont == -1 ) then
			if ( not MapNotes_Data[GetRealZoneText()] ) then
				MapNotes_Data[GetRealZoneText()] = {};
			end
			MNCont = GetRealZoneText();
			MNZone = 0;
			inBG = true;
		else
			MNZone = MapNotes_ZoneShift[MNCont][GetCurrentMapZone()];
			if ( not MapNotes_Data[MNCont][MNZone] ) then
				MapNotes_Data[MNCont][MNZone] = {};
			end
		end
	end

	x, y = GetPlayerMapPosition("player");
	if ( ( ( x == 0 ) and ( y == 0 ) ) or ( MNCont == 0 ) ) then
		return nil;
	end

	if ( inBG ) then
		id = NuN_ProximityCheck(MNCont, x, y);
	elseif ( MetaMapNotes_OnLoad ) then
		id = MetaMapNotes_CheckNearNotes(MNCont, MNZone, x, y);
	elseif ( MapNotes_OnLoad ) then
		id = MapNotes_CheckNearNotes(MNCont, MNZone, x, y);
	end

	if ( id ) then
		nKey = MNCont.."-"..MNZone.."-"..id;
	end

	return MNCont, MNZone, x, y, id, nKey;
end

function NuN_ProximityCheck(theBG, xPos, yPos)
	local chkData = {};
	local minDiff;

	local chkData = {};

	if ( MetaMapNotes_OnLoad ) then
		chkData = MetaMapNotes_Data[theBG];
		minDiff = MetaMapNotes_MinDiff;
	elseif ( MapNotes_OnLoad ) then
		chkData = MapNotes_Data[theBG];
		minDiff = MapNotes_MinDiff;
	end

	if ( ( not minDiff ) or ( minDiff == 0 ) ) then
		minDiff = 7;
	end

	if ( not chkData ) then
		return;
	end

	local i = 1;
	for j, value in chkData do
		local deltax = abs(chkData[i].xPos - xPos);
		local deltay = abs(chkData[i].yPos - yPos);
		if(deltax <= 0.0009765625 * minDiff and deltay <= 0.0013020833 * minDiff) then
			return i;
		end
		i = i + 1;
	end

	return nil;
end



function NuN_AutoMapCheckBox_OnClick()
	if ( NuN_AutoMapCheckBox:GetChecked() ) then
		NuNSettings[pKey].autoMapNotes = "1";
	else
		NuNSettings[pKey].autoMapNotes = nil;
	end
end


function NuN_AutoMapCheckBox_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_MAPCHECK_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_MAPCHECK_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_MAPCHECK_TXT3, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_MAPCHECK_TXT4, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_MAPCHECK_TXT5, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end



function NuN_HyperButton_OnClick(nType)
	local p1, p2;
	local linkA = {};
	local aCounter = 0;
	local lText, lTextLen;

	if ( nType == "Contact" ) then
		lText = NuNText:GetText();
	elseif ( nType == "General" ) then
		lText = NuNGNoteTextScroll:GetText();
	else
		NuN_Message(NUN_LINKFAILURE);
		return;
	end

	lTextLen = string.len(lText);

	p1 = string.find(lText, "|Hitem");
	while ( ( p1 ) and ( p1 > 10 ) ) do
		p2 = string.find(lText, "|h|r", p1);
		if ( ( not p2 ) or ( (p2+3) > lTextLen ) ) then
			break;
		end
		p1 = p1 - 10;
		p2 = p2 + 3;
		local link = string.sub(lText, p1, p2);
		aCounter = aCounter + 1;
		linkA[aCounter] = link;
		p1 = string.find(lText, "|Hitem", (p2+1));
	end

	local loops = getn(linkA);
	if ( loops ) and ( loops > 0 ) then
		for i=1, loops, 1 do
			DEFAULT_CHAT_FRAME:AddMessage(linkA[i]);
		end
	else
		NuN_Message(NUN_NOLINKS);
	end
end



function NuN_HyperButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPRIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_TOPLEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_HYPERLINKS_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_HYPERLINKS_TXT2, 0, 1, 0);
		NuN_Tooltip:AddLine(NUN_TT_HYPERLINKS_TXT3, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end




function NuNPopup_OnClick(bttn, noteN)
	if ( IsAltKeyDown() ) then
		if ( bttn == "LeftButton" ) then
			HideUIPanel(WorldMapFrame);
			if ( NuNGNoteFrame:IsVisible() ) then
				if ( c_note == noteN ) then
					return;
				end
				NuNGNoteFrame:Hide();
			end
			NuNGNoteFrame.fromQuest = nil;
			c_note = noteN;
			NuN_ShowSavedGNote();
		elseif ( bttn == "RightButton" ) then
			NuN_DeleteMapIndexNote(NuNPopup.id, noteN);
		end
	end
end

function NuNPopup_OnShow()
	popUpHide = nil;
end

function NuNPopup_OnUpdate(arg1)
	popUpTimeSinceLastUpdate = popUpTimeSinceLastUpdate + arg1;
	if ( popUpTimeSinceLastUpdate > popUpUpdateInterval ) then
		if ( ( popUpHide ) and ( not MouseIsOver(NuNPopup) )  ) then
			NuNPopup:Hide();
		end
		popUpTimeSinceLastUpdate = 0;
	end
end


function NuN_Message(msg)
	msg = "NotesUNeed : "..msg;
	if DEFAULT_CHAT_FRAME then
		DEFAULT_CHAT_FRAME:AddMessage(msg, 0.64, 0.21, 0.93);
	end
end



function NuN_UpdateMapNotesIndex(deletedNote)
	local MNindex, MNvalue, nIndex, nValue;

	for MNindex, MNvalue in NuNData[mrgIndex] do
		for nIndex, nValue in NuNData[mrgIndex][MNindex] do
			if ( nIndex == deletedNote ) then
				NuNData[mrgIndex][MNindex][nIndex] = nil;
				NuNData[mrgIndex][MNindex].noteCounter = NuNData[mrgIndex][MNindex].noteCounter - 1;
				break;
			end
			if ( NuNData[mrgIndex][MNindex].noteCounter < 1 ) then
				NuNData[mrgIndex][MNindex] = nil;
			end
		end
	end
end



function NuN_PreDeleteMapIndex(id, cont, zone)
	local nKey, lstKey, curZ, lstEntry;

	if ( MetaMapNotes_OnLoad ) then
		curZ = MetaMapNotes_Data;
	elseif ( MapNotes_OnLoad ) then
		curZ = MapNotes_Data;
	end

	if ( ( not cont ) or ( cont < 1 ) or ( not zone ) or ( zone < 1 ) ) then
		cont = GetCurrentMapContinent();
		if ( cont == -1 ) then
			cont = GetRealZoneText();
			zone = 0;
			curZ = curZ[cont];
		elseif ( cont == 0 ) then
			return 0, 0, 0;
		else
			if  ( MetaMapNotes_OnLoad ) then
				zone = MetaMapNotes_ZoneShift[cont][GetCurrentMapZone()];
			elseif ( MapNotes_OnLoad ) then
				zone = MapNotes_ZoneShift[cont][GetCurrentMapZone()];
			end
			if ( ( not zone ) or ( zone < 1 ) ) then
				return 0, 0, 0;
			end
			curZ = curZ[cont][zone];
		end
	end

	lstEntry = NuN_GetZoneTableSize(curZ);
	return cont, zone, lstEntry;
end

-- Called when a MapNote is deleted

function NuN_DeleteMapIndex(id, cont, zone, lstEntry)
	local nKey = cont.."-"..zone.."-"..id;
	local lstKey = cont.."-"..zone.."-"..lstEntry;
	if ( NuNData[mrgIndex][nKey] ) then
		NuNData[mrgIndex][nKey] = nil;
	end
	if ( ( lstEntry ~= 0 ) and ( nKey ~= lstKey ) and ( NuNData[mrgIndex][lstKey] ) ) then
		local index, value;
		NuNData[mrgIndex][nKey] = {};
		for index, value in NuNData[mrgIndex][lstKey] do
			NuNData[mrgIndex][nKey][index] = NuNData[mrgIndex][lstKey][index];
		end
		NuNData[mrgIndex][lstKey] = nil;
	end
end



-- Called when Alt-Right Clicking on a button in the Popup to remove a single NuN - MapNote link

function NuN_DeleteMapIndexNote(id, noteN)
	local cont = GetCurrentMapContinent();
	if ( cont == -1 ) then
		cont = GetRealZoneText();
		zone = 0;
	elseif ( cont == 0 ) then
		return;
	else
		if  ( MetaMapNotes_OnLoad ) then
			zone = MetaMapNotes_ZoneShift[cont][GetCurrentMapZone()];
		elseif ( MapNotes_OnLoad ) then
			zone = MapNotes_ZoneShift[cont][GetCurrentMapZone()];
		end
		if ( ( not zone ) or ( zone < 1 ) ) then
			return;
		end
	end
	local nKey = cont.."-"..zone.."-"..id;
	if ( ( NuNData[mrgIndex][nKey] ) and ( NuNData[mrgIndex][nKey][noteN] ) ) then
		NuNData[mrgIndex][nKey][noteN] = nil;
		NuNData[mrgIndex][nKey].noteCounter = NuNData[mrgIndex][nKey].noteCounter - 1;
		if ( NuNData[mrgIndex][nKey].noteCounter < 1 ) then
			NuNData[mrgIndex][nKey] = nil;
		end
	end
	WorldMapTooltip:Hide();
	NuNPopup:Hide();
	NuN_MapTooltip:Hide();
end



function NuN_MapIndexHouseKeeping()
	local MNindex, MNvalue;

	if ( ( MetaMapNotes_OnLoad ) and ( MapNotes_OnLoad ) ) then
		return;
	end

	for MNindex, MNvalue in NuNData[mrgIndex] do
		local valid = NuN_ExtractMapNotesInfo(MNindex);
		if ( not valid ) then
			NuNData[mrgIndex][MNindex] = nil;
		end
	end
end


function NuN_ExtractMapNotesInfo(nKey)
	local cont, zone, id;
	local sep = "-";
	local p, q;

	p = string.find(nKey, sep);
	if ( not p ) then
		return nil;
	end
	q = string.find(nKey, sep, (p+1));
	if ( not q ) then
		return nil;
	end

	cont = tonumber( string.sub(nKey, 1, (p-1)) );
	zone = tonumber( string.sub(nKey, (p+1), (q-1)) );
	id = tonumber( string.sub(nKey, (q+1)) );

	if ( MetaMapNotes_OnLoad ) then
		theData = MetaMapNotes_Data;
	elseif ( MapNotes_OnLoad ) then
		theData = MapNotes_Data;
	end
	if ( ( zone == 0 ) and ( theData[cont] ) and ( theData[cont][id] ) ) then
		return true;
	elseif ( ( theData[cont] ) and ( theData[cont][zone] ) and ( theData[cont][zone][id] ) ) then
		return true;
	else
		return nil;
	end
end



function NuN_ValidateMapNotesVersion()
	if ( MAPNOTES_VERSION ) then
		local MNVersion = MAPNOTES_VERSION;
		for i = 1, getn(NuN_MapNotesValidVersions), 1 do
			if ( NuN_MapNotesValidVersions[1] == MNVersion ) then
				return true;
			end
		end
		if ( NuNSettings[pKey].mapNotesPlayedVersions ) then
			local vs = getn(NuNSettings[pKey].mapNotesPlayedVersions);
			for i = 1, vs, 1 do
				if ( NuNSettings[pKey].mapNotesPlayedVersions[i] == MNVersion ) then
					return true;
				end
			end
			vs = vs + 1;
			NuNSettings[pKey].mapNotesPlayedVersions[vs] = MNVersion;
		else
			NuNSettings[pKey].mapNotesPlayedVersions = {};
			NuNSettings[pKey].mapNotesPlayedVersions[1] = MNVersion;
		end
	end
	return nil;
end



function NuN_NotInfiniteIgored(ctact)
	ctact = string.lower(ctact);
	if ( ( InfinateIgnore_Config ) and ( InfinateIgnore_Config[pKey] ) and ( InfinateIgnore_Config[pKey].Ignoring ) and ( InfinateIgnore_Config[pKey].Ignoring[ctact] ) ) then
		return nil;
	end
	return true;
end




function NuN_SaveLast(saveType)
	NuN_LastOpen.type = saveType;
	if ( saveType == "Contact" ) then
		NuN_LastOpen.name = c_name;
	elseif ( saveType == "General" ) then
		NuN_LastOpen.note = c_note;
	end
end


function NuN_ReOpen()
	if ( NuN_LastOpen.type ) then
		if ( NuN_LastOpen.type == "Contact" ) then
			if ( NuNData[pKey][NuN_LastOpen.name] ) then
				NuN_ShowSavedNote(NuN_LastOpen.name);
			end
		elseif ( NuN_LastOpen.type == "General" ) then
			if ( ( NuNData[pKey][Notes][NuN_LastOpen.note] ) or ( NuNData[Notes][NuN_LastOpen.note] ) ) then
				c_note = NuN_LastOpen.note;
				NuN_ShowSavedGNote();
			end
		end
	end
end



function NuN_RunButton_OnClick()
	local script = NuNGNoteTextScroll:GetText();

	RunScript(script);
end

function NuN_RunButton_OnEnter()
	if ( NuNSettings[pKey].toolTips ) then
		NuN_Fade = "False";
		local x, y = GetCursorPosition();
		if ( x > 500 ) then
			NuN_Tooltip:SetOwner(this, "ANCHOR_RIGHT");
		else
			NuN_Tooltip:SetOwner(this, "ANCHOR_LEFT");
		end
		NuN_Tooltip:ClearLines();
		NuN_Tooltip:AddLine(NUN_TT_RUN_TXT1, 1, 0.7, 0);
		NuN_Tooltip:AddLine(NUN_TT_RUN_TXT2, 0, 1, 0);
		NuN_Tooltip:Show();
	end
end



function NuN_GetTipAnchor(theTT)
	local anchorBy, anchorTo;
	local x1, y1 = theTT:GetCenter();
	local x2, y2 = UIParent:GetCenter();

	if ( theTT == ShoppingTooltip1 ) then
		anchorBy = "TOPLEFT";
		anchorTo = "TOPRIGHT";
		return anchorBy, anchorTo;
	elseif ( theTT == ShoppingTooltip2 ) then
		anchorBy = "TOPLEFT";
		anchorTo = "BOTTOMLEFT";
		return anchorBy, anchorTo;
	end

	if ( ( not x1 ) or ( not y1 ) ) then
		anchorBy = "BOTTOMRIGHT";
		anchorTo = "BOTTOMLEFT";
	else
		if ( y1 > y2 ) then
			if ( x1 > x2 ) then
				anchorBy = "TOPRIGHT";
				anchorTo = "TOPLEFT";
			else
				anchorBy = "TOPLEFT";
				anchorTo = "TOPRIGHT";
			end
		else
			if ( x1 > x2 ) then
				anchorBy = "BOTTOMRIGHT";
				anchorTo = "BOTTOMLEFT";
			else
				anchorBy = "BOTTOMLEFT";
				anchorTo = "BOTTOMRIGHT";
			end
		end
	end

	return anchorBy, anchorTo;
end




--------------------------------------------------------------------------------

function NuN_LocaliseDateStamp(dateStamp)
	if ( ( GetLocale() ~= "enUS" ) and ( NUN_DAY_LIST ) and ( NUN_MONTH_LIST ) ) then
		dateStamp = string.gsub(dateStamp, "Monday", NUN_DAY_LIST[1]);
		dateStamp = string.gsub(dateStamp, "Tuesday", NUN_DAY_LIST[2]);
		dateStamp = string.gsub(dateStamp, "Wednesday", NUN_DAY_LIST[3]);
		dateStamp = string.gsub(dateStamp, "Thursday", NUN_DAY_LIST[4]);
		dateStamp = string.gsub(dateStamp, "Friday", NUN_DAY_LIST[5]);
		dateStamp = string.gsub(dateStamp, "Saturday", NUN_DAY_LIST[6]);
		dateStamp = string.gsub(dateStamp, "Sunday", NUN_DAY_LIST[7]);
		dateStamp = string.gsub(dateStamp, "January", NUN_MONTH_LIST[1]);
		dateStamp = string.gsub(dateStamp, "February", NUN_MONTH_LIST[2]);
		dateStamp = string.gsub(dateStamp, "March", NUN_MONTH_LIST[3]);
		dateStamp = string.gsub(dateStamp, "April", NUN_MONTH_LIST[4]);
		dateStamp = string.gsub(dateStamp, "May", NUN_MONTH_LIST[5]);
		dateStamp = string.gsub(dateStamp, "June", NUN_MONTH_LIST[6]);
		dateStamp = string.gsub(dateStamp, "July", NUN_MONTH_LIST[7]);
		dateStamp = string.gsub(dateStamp, "August", NUN_MONTH_LIST[8]);
		dateStamp = string.gsub(dateStamp, "September", NUN_MONTH_LIST[9]);
		dateStamp = string.gsub(dateStamp, "October", NUN_MONTH_LIST[10]);
		dateStamp = string.gsub(dateStamp, "November", NUN_MONTH_LIST[11]);
		dateStamp = string.gsub(dateStamp, "December", NUN_MONTH_LIST[12]);
	end
	return dateStamp;
end

--------------------------------------------------------------------------------

function NuN_LangPatch(langDirection)
	local toDeutschAR = {
		4,
		1,
		2,
		3
	}

	local toDeutschHC = {
		1,
		3,
		5,
		6,
		8,
		7,
		2,
		4
	}

	local toDeutschAC = {
		1,
		3,
		5,
		6,
		7,
		8,
		2,
		4
	}

	local toDeutschP = {
		1,
		12,
		13,
		14,
		15,
		16,
		18,
		3,
		4,
		5,
		6,
		8,
		9,
		10,
		11,
		2,
		7,
		17
	}
	local index, value;

	if ( NuNData[pKey] ) then
		if ( langDirection == "->de" ) then
			for index, value in NuNData[pKey] do
				if ( NuNData[pKey][index].faction ) then
					if ( NuNData[pKey][index].faction == "Horde" ) then
						if ( NuNData[pKey][index].cls ) then
							NuNData[pKey][index].cls = toDeutschHC[NuNData[pKey][index].cls];
						end
					else
						if ( NuNData[pKey][index].race ) then
							NuNData[pKey][index].race = toDeutschAR[NuNData[pKey][index].race];
						end
						if ( NuNData[pKey][index].cls ) then
							NuNData[pKey][index].cls = toDeutschAC[NuNData[pKey][index].cls];
						end
					end
					if ( NuNData[pKey][index].prof1 ) then
						NuNData[pKey][index].prof1 = toDeutschP[NuNData[pKey][index].prof1];
					end
					if ( NuNData[pKey][index].prof2 ) then
						NuNData[pKey][index].prof2 = toDeutschP[NuNData[pKey][index].prof2];
					end
				end
			end
		elseif ( langDirection == "->en" ) then
			for index, value in NuNData[pKey] do
				if ( NuNData[pKey][index].faction ) then
					if ( NuNData[pKey][index].faction == "Horde" ) then
						if ( NuNData[pKey][index].cls ) then
							NuNData[pKey][index].cls = NuNGet_TableID(toDeutschHC, NuNData[pKey][index].cls);
						end
					else
						if ( NuNData[pKey][index].race ) then
							NuNData[pKey][index].race = NuNGet_TableID(toDeutschAR, NuNData[pKey][index].race);
						end
						if ( NuNData[pKey][index].cls ) then
							NuNData[pKey][index].cls = NuNGet_TableID(toDeutschAC, NuNData[pKey][index].cls);
						end
					end
					if ( NuNData[pKey][index].prof1 ) then
						NuNData[pKey][index].prof1 = NuNGet_TableID(toDeutschP, NuNData[pKey][index].prof1);
					end
					if ( NuNData[pKey][index].prof2 ) then
						NuNData[pKey][index].prof2 = NuNGet_TableID(toDeutschP, NuNData[pKey][index].prof2);
					end
				end
			end
		end
	end
end


```

## NotesUNeed.toc
```toc
## Interface: 11200
## Title: Notes'U'Need v3.21.11000
## Notes: Notes Manager that allows you to track Friends, Ignores, Guild members, Quests, Items and generic notes
##  storing information like Professions, Guild, PvP ranks, real world contact information, and anything
##  else you like really.  Also provides a search function allowing the user to find notes on players
##  of a given class, profession, guild, or just for free text information in any notes.
## Notes-deDE: Dies ist eine Notizverwaltung mit der du deine Freund-, Ignorier-, Gildenliste sowie Quests, Gegenstaende
##  und einfache Notizen verwalten kannst. Diese werden dann als Tooltip mit den Berufs, Gilden, PvP, und Kontakt
##  Informationen angezeigt wenn du mit der Maus daueber gehst.
## SavedVariables: NuNData, NuNSettings
## OptionalDeps: MapNotes, MetaMapNotes
## Dependencies:
NotesUNeed.xml
```

## NotesUNeed.xml
```xml
<Ui xmlns="http://www.blizzard.com/wow/ui/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"   xsi:schemaLocation="http://www.blizzard.com/wow/ui/">

<script file="Localisation.lua"/>
<script file="Localisation.de.lua"/>
<Script file="NotesUNeed.lua"/>


<!-- Templates -->
	<Button name="NuNButtonTemplate" inherits="UIPanelButtonTemplate" virtual="true">
		<Size>
			<AbsDimension x="88" y="21"/>
		</Size>
		<NormalText inherits="GameFontNormal"/>
		<DisabledText inherits="GameFontDisable"/>
		<HighlightText inherits="GameFontNormal"/>
	</Button>

	<Button name="NuNOptionsButtonTemplate" inherits="UIPanelButtonTemplate2" virtual="true">
		<Size>
			<AbsDimension x="180" y="21"/>
		</Size>
		<NormalText inherits="GameFontNormal"/>
		<DisabledText inherits="GameFontDisable"/>
		<HighlightText inherits="GameFontNormal"/>
	</Button>

	<Button name="NuNDetailTitleButtonTemplate" virtual="true">
		<Size>
			<AbsDimension x="159" y="14"/>
		</Size>
		<Frames>
			<Frame name="$parentButtonText" setAllPoints="true">
				<Layers>
					<Layer level="BORDER">
						<FontString name="$parentHeading" inherits="GameFontNormalSmall" justifyH="LEFT">
							<Anchors>
								<Anchor point="TOPLEFT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
			</Frame>
		</Frames>
		<Scripts>
			<OnClick>
				NuNUserButton_OnClick(this);
			</OnClick>
			<OnEnter>
				NuN_UserButtons_OnEnter(this);
			</OnEnter>
			<OnLeave>
				NuN_TTButton_OnLeave();
			</OnLeave>
		</Scripts>
		<HighlightTexture file="Interface\QuestFrame\UI-QuestTitleHighlight" alphaMode="ADD"/>
	</Button>

	<Button name="NuNDetailInforButtonTemplate" virtual="true">
		<Size>
			<AbsDimension x="155" y="12"/>
		</Size>
		<Frames>
			<Frame name="$parentButtonText" setAllPoints="true">
				<Layers>
					<Layer level="BORDER">
						<FontString name="$parentDetail" inherits="GameFontHighlightSmall" justifyH="LEFT">
							<Anchors>
								<Anchor point="TOPLEFT">
									<Offset>
										<AbsDimension x="4" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
			</Frame>
		</Frames>
		<Scripts>
			<OnClick>
				NuNUserButton_OnClick(this);
			</OnClick>
			<OnEnter>
				NuN_UserButtons_OnEnter(this);
			</OnEnter>
			<OnLeave>
				NuN_TTButton_OnLeave();
			</OnLeave>
		</Scripts>
		<HighlightTexture file="Interface\QuestFrame\UI-QuestTitleHighlight" alphaMode="ADD"/>
	</Button>

	<Button name="NuNSearchNoteTemplate" virtual="true">
		<Size>
			<AbsDimension x="300" y="16"/>
		</Size>
		<Frames>
			<Frame name="$parentFrame" setAllPoints="true">
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="$parentHFlag" file="Interface\AddOns\NotesUNeed\Artwork\tHorde" hidden="true">
							<Size>
								<AbsDimension x="18" y="18"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
								</Anchor>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="$parentAFlag" file="Interface\Addons\NotesUNeed\Artwork\tAlliance" hidden="true">
							<Size>
								<AbsDimension x="18" y="18"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
								</Anchor>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="$parentNFlag" file="Interface\Buttons\UI-GuildButton-PublicNote-Up" hidden="true">
							<Size>
								<AbsDimension x="12" y="12"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="-3" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="$parentLFlag" file="Interface\Buttons\UI-CheckBox-Check" hidden="true">
							<Size>
								<AbsDimension x="16" y="16"/>
							</Size>
							<Anchors>
								<Anchor point="LEFT">
									<Offset>
										<AbsDimension x="0" y="-1"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
						<FontString name="$parentType" inherits="GameFontNormalSmall" text="   ">
							<Anchors>
								<Anchor point="RIGHT" relativeTo="$parentHFlag" relativePoint="LEFT">
									<Offset>
										<AbsDimension x="-2" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
			</Frame>
		</Frames>
		<Scripts>
			<OnLoad>
				this:RegisterForClicks("LeftButtonUp", "RightButtonUp");
			</OnLoad>
			<OnClick>
				NuNSearchNote_OnClick(this);
			</OnClick>
			<OnEnter>
				NuNSearchNote_OnEnter(this);
			</OnEnter>
			<OnLeave>
				NuN_TTButton_OnLeave();
			</OnLeave>
		</Scripts>
		<HighlightTexture file="Interface\QuestFrame\UI-QuestTitleHighlight" alphaMode="ADD"/>
		<NormalText name="$parentText" inherits="GameFontNormal" justifyH="LEFT">
			<Size>
				<AbsDimension x="275" y="12"/>
			</Size>
			<Anchors>
				<Anchor point="LEFT">
					<Offset>
						<AbsDimension x="20" y="0"/>
					</Offset>
				</Anchor>
			</Anchors>
		</NormalText>
	</Button>


	<Button name="NuN_NoteButtonTemplate" virtual="true" hidden="false">
		<Size>
			<AbsDimension x="16" y="16"/>
		</Size>
		<Anchors>
			<Anchor point="RIGHT" relativePoint="LEFT">
				<Offset>
					<AbsDimension x="310" y="0"/>
				</Offset>
			</Anchor>
		</Anchors>
		<Frames>
			<Frame name="$parentFrame" setAllPoints="true">
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="$parentHFlag" file="Interface\AddOns\NotesUNeed\Artwork\tHorde" hidden="true">
							<Size>
								<AbsDimension x="18" y="18"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="2" y="-2"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="$parentAFlag" file="Interface\Addons\NotesUNeed\Artwork\tAlliance" hidden="true">
							<Size>
								<AbsDimension x="18" y="18"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="2" y="-2"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="$parentNFlag" file="Interface\Buttons\UI-GuildButton-PublicNote-Disabled" hidden="true">
							<Size>
								<AbsDimension x="12" y="12"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="-2" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
			</Frame>
		</Frames>
		<Scripts>
			<OnClick>
				NuN_NoteButton_OnInteract(this:GetID(), "Click");
			</OnClick>
			<OnEnter>
				NuN_Tooltip:SetOwner(this, "ANCHOR_RIGHT");
				NuN_NoteButton_OnInteract(this:GetID(), "MouseOver");
			</OnEnter>
			<OnLeave>
				NuN_TTButton_OnLeave();
			</OnLeave>
		</Scripts>
		<HighlightTexture file="Interface\QuestFrame\UI-QuestTitleHighlight" alphaMode="ADD"/>
	</Button>

	<Button name="NuN_NoteButtonTemplate2" virtual="true" hidden="false">
		<Size>
			<AbsDimension x="16" y="16"/>
		</Size>
		<Anchors>
			<Anchor point="RIGHT" relativePoint="LEFT">
				<Offset>
					<AbsDimension x="310" y="-2"/>
				</Offset>
			</Anchor>
		</Anchors>
		<Frames>
			<Frame name="$parentFrame" setAllPoints="true">
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="$parentHFlag" file="Interface\AddOns\NotesUNeed\Artwork\tHorde" hidden="true">
							<Size>
								<AbsDimension x="18" y="18"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="2" y="-2"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="$parentAFlag" file="Interface\Addons\NotesUNeed\Artwork\tAlliance" hidden="true">
							<Size>
								<AbsDimension x="18" y="18"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="2" y="-2"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="$parentNFlag" file="Interface\Buttons\UI-GuildButton-PublicNote-Disabled" hidden="true">
							<Size>
								<AbsDimension x="12" y="12"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="-2" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
			</Frame>
		</Frames>
		<Scripts>
			<OnClick>
				NuN_NoteButton_OnInteract(this:GetID(), "Click");
			</OnClick>
			<OnEnter>
				NuN_Tooltip:SetOwner(this, "ANCHOR_RIGHT");
				NuN_NoteButton_OnInteract(this:GetID(), "MouseOver");
			</OnEnter>
			<OnLeave>
				NuN_TTButton_OnLeave();
			</OnLeave>
		</Scripts>
		<HighlightTexture file="Interface\QuestFrame\UI-QuestTitleHighlight" alphaMode="ADD"/>
	</Button>

	<Button name="NuN_NoteButtonTemplate3" virtual="true" hidden="false">
		<Size>
			<AbsDimension x="16" y="16"/>
		</Size>
		<Anchors>
			<Anchor point="RIGHT" relativePoint="LEFT">
				<Offset>
					<AbsDimension x="315" y="-2"/>
				</Offset>
			</Anchor>
		</Anchors>
		<Frames>
			<Frame name="$parentFrame" setAllPoints="true">
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="$parentHFlag" file="Interface\AddOns\NotesUNeed\Artwork\tHorde" hidden="true">
							<Size>
								<AbsDimension x="18" y="18"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="2" y="-2"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="$parentAFlag" file="Interface\Addons\NotesUNeed\Artwork\tAlliance" hidden="true">
							<Size>
								<AbsDimension x="18" y="18"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="2" y="-2"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="$parentNFlag" file="Interface\Buttons\UI-GuildButton-PublicNote-Disabled" hidden="true">
							<Size>
								<AbsDimension x="12" y="12"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="-2" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
			</Frame>
		</Frames>
		<Scripts>
			<OnClick>
				NuN_NoteButton_OnInteract(this:GetID(), "Click");
			</OnClick>
			<OnEnter>
				NuN_Tooltip:SetOwner(this, "ANCHOR_RIGHT");
				NuN_NoteButton_OnInteract(this:GetID(), "MouseOver");
			</OnEnter>
			<OnLeave>
				NuN_TTButton_OnLeave();
			</OnLeave>
		</Scripts>
		<HighlightTexture file="Interface\QuestFrame\UI-QuestTitleHighlight" alphaMode="ADD"/>
	</Button>

	<Button name="NuN_NoteButtonTemplate4" virtual="true" hidden="false">
		<Size>
			<AbsDimension x="16" y="16"/>
		</Size>
		<Anchors>
			<Anchor point="RIGHT" relativePoint="LEFT">
				<Offset>
					<AbsDimension x="228" y="-1"/>
				</Offset>
			</Anchor>
		</Anchors>
		<Frames>
			<Frame name="$parentFrame" setAllPoints="true">
				<Layers>
					<Layer level="ARTWORK">
		     		           	<Texture name="$parentNFlag" file="Interface\Buttons\UI-GuildButton-PublicNote-Disabled" hidden="true">
							<Size>
								<AbsDimension x="12" y="12"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="-2" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="$parentQFlag" file="Interface\Buttons\UI-GuildButton-PublicNote-Up" hidden="true">
							<Size>
								<AbsDimension x="12" y="12"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="-2" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
			</Frame>
		</Frames>
		<Scripts>
			<OnClick>
				NuN_NoteButton_OnInteract(this:GetID(), "Click");
			</OnClick>
			<OnEnter>
				NuN_Tooltip:SetOwner(this, "ANCHOR_RIGHT");
				NuN_NoteButton_OnInteract(this:GetID(), "MouseOver");
			</OnEnter>
			<OnLeave>
				NuN_TTButton_OnLeave();
			</OnLeave>
		</Scripts>
		<HighlightTexture file="Interface\QuestFrame\UI-QuestTitleHighlight" alphaMode="ADD"/>
	</Button>

	<Button name="NuNPopupButtonTemplate" virtual="true" hidden="true">
		<Size>
			<AbsDimension x="64" y="12"/>
		</Size>
		<Scripts>
			<OnLoad>
				this:RegisterForClicks("LeftButtonUp", "RightButtonUp");
			</OnLoad>
			<OnClick>
				NuNPopup_OnClick(arg1, this:GetText());
			</OnClick>
			<OnEnter>
				NuN_MapTooltipShow(this.note, "NuNPopup", NuNPopup.point, NuNPopup.relativePoint);
			</OnEnter>
			<OnLeave>
				NuN_MapTooltip:Hide();
			</OnLeave>
		</Scripts>
		<NormalText inherits="GameFontNormal"/>
		<HighlightText inherits="GameFontHighlight"/>
		<DisabledText inherits="GameFontDisable"/>
	</Button>

<!-- Main NuN Frame for displaying and editing note details -->
<!-- f1  -->
	<Frame name="NuNFrame" toplevel="true" enableMouse="true" movable="true" parent="UIParent" hidden="true">
		<TitleRegion setAllPoints="true"/>
		<Size>
			<AbsDimension x="640" y="512"/>
		</Size>
		<Anchors>
			<Anchor point="CENTER">
				<Offset>
					<AbsDimension x="220" y="15"/>
				</Offset>
			</Anchor>
		</Anchors>
		<HitRectInsets>
			<AbsInset left="0" right="44" top="0" bottom="13"/>
		</HitRectInsets>
		<Layers>
			<Layer level="BACKGROUND">
				<Texture file="Interface\HelpFrame\HelpFrame-TopLeft">
					<Size>
						<AbsDimension x="256" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT"/>
					</Anchors>
				</Texture>
				<Texture file="Interface\HelpFrame\HelpFrame-Top">
					<Size>
						<AbsDimension x="256" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="256" y="0"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<Texture file="Interface\HelpFrame\HelpFrame-TopRight">
					<Size>
						<AbsDimension x="128" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="TOPRIGHT"/>
					</Anchors>
				</Texture>
				<Texture file="Interface\HelpFrame\HelpFrame-BotLeft">
					<Size>
						<AbsDimension x="256" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="BOTTOMLEFT"/>
					</Anchors>
				</Texture>
				<Texture file="Interface\HelpFrame\HelpFrame-Bottom">
					<Size>
						<AbsDimension x="256" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="BOTTOMLEFT">
							<Offset>
								<AbsDimension x="256" y="0"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<Texture file="Interface\HelpFrame\HelpFrame-BotRight">
					<Size>
						<AbsDimension x="128" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="BOTTOMRIGHT"/>
					</Anchors>
				</Texture>
				<FontString name="NuNCTTCheckBoxLabel" inherits="GameFontNormalSmall" text="NUN_TT_PIN_TXT">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="48" y="-14"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNPartiedLabel" inherits="GameFontNormalSmall" text="NUN_PARTIED_WITH">
					<Anchors>
						<Anchor point="TOP">
							<Offset>
								<AbsDimension x="-80" y="-26"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNPartiedNumberLabel" inherits="GameFontNormalSmall">
					<Anchors>
						<Anchor point="TOP" relativeTo="NuNPartiedLabel" relativePoint="BOTTOM">
							<Offset>
								<AbsDimension x="0" y="-1"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
			<Layer level="ARTWORK">
				<Texture name="NuNFrameHeader" file="Interface\DialogFrame\UI-DialogBox-Header">
					<Size>
						<AbsDimension x="436" y="64"/>
					</Size>
					<Anchors>
						<Anchor point="TOP">
							<Offset>
								<AbsDimension x="-12" y="12"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<FontString name="NuNHeader" inherits="GameFontNormal" text="NUN_EDIT_NOTE">
					<Anchors>
						<Anchor point="TOP" relativeTo="NuNFrameHeader">
							<Offset>
								<AbsDimension x="0" y="-14"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<Texture name="NuNHFlag" file="Interface\AddOns\NotesUNeed\Artwork\tHorde" hidden="true">
					<Size>
						<AbsDimension x="32" y="32"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="-5" y="5"/>
							</Offset>
						</Anchor>
					</Anchors>
     		           	</Texture>
     		           	<Texture name="NuNAFlag" file="Interface\Addons\NotesUNeed\Artwork\tAlliance" hidden="true">
					<Size>
						<AbsDimension x="32" y="32"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="-5" y="5"/>
							</Offset>
						</Anchor>
					</Anchors>
     		           	</Texture>
			</Layer>
		</Layers>

<!-- f1fs1 -->
		<Frames>
		<!-- Window Close -->
			<Button name="NuNFrameCloseButton" inherits="UIPanelCloseButton">
				<Anchors>
					<Anchor point="TOPRIGHT">
						<Offset>
							<AbsDimension x="-42" y="-3"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNFrameScaleButton" inherits="UIPanelButtonTemplate2">
				<Size>
					<AbsDimension x="24" y="24"/>
				</Size>
		    		<Anchors>
		      			<Anchor point="RIGHT" relativeTo="NuNFrameCloseButton" relativePoint="LEFT">
		        			<Offset>
		          				<AbsDimension x="4" y="0"/>
		        			</Offset>
		      			</Anchor>
		    		</Anchors>
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="NuNFrameScaleIcon" file="Interface\AddOns\NotesUNeed\Artwork\NuNScale">
							<Size>
								<AbsDimension x="16" y="16"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnClick>
						NuNScaleFrameShow();
					</OnClick>
					<OnEnter>
						NuNScaleFrameButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
			<Button name="NuNFramePartyDownButton" inherits="UIPanelButtonTemplate2" text="-" hidden="true">
				<Size>
					<AbsDimension x="24" y="24"/>
				</Size>
		    		<Anchors>
		      			<Anchor point="LEFT" relativeTo="NuNPartiedLabel" relativePoint="RIGHT">
		        			<Offset>
		          				<AbsDimension x="2" y="-8"/>
		        			</Offset>
		      			</Anchor>
		    		</Anchors>
				<Scripts>
					<OnClick>
						NuN_PartyDownButton_OnClick();
					</OnClick>
					<OnEnter>
						NuN_PartyDownButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
<!-- f1fs1f2 -->
			<CheckButton name="NuN_CTTCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="18" y="18"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="26" y="-12" />
						</Offset>
					</Anchor>
				</Anchors>
				<HitRectInsets>
					<AbsInset left="0" right="-60" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_TTCheckBox_OnClick("Contact");
					</OnClick>
					<OnEnter>
						NuN_TTCheckBox_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</CheckButton>
			<Frame name="NuNInnerFrame" setAllPoints="true">
<!-- f1fs1f2fs2 -->
				<Frames>
	<!-- User definable Buttons -->
					<Button name="NuNTitleButton1" inherits="NuNDetailTitleButtonTemplate">
						<Anchors>
							<Anchor point="TOPLEFT">
								<Offset>
									<AbsDimension x="20" y="-55"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Button>
					<Button name="NuNInforButton1" inherits="NuNDetailInforButtonTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNTitleButton1" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="0" y="-1"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Button>
					<Button name="NuNTitleButton2" inherits="NuNDetailTitleButtonTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNInforButton1" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="0" y="-2"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Button>
					<Button name="NuNInforButton2" inherits="NuNDetailInforButtonTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNTitleButton2" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="0" y="-1"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Button>
					<Button name="NuNTitleButton3" inherits="NuNDetailTitleButtonTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNInforButton2" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="0" y="-2"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Button>
					<Button name="NuNInforButton3" inherits="NuNDetailInforButtonTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNTitleButton3" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="0" y="-1"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Button>
					<Button name="NuNTitleButton4" inherits="NuNDetailTitleButtonTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNInforButton3" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="0" y="-2"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Button>
					<Button name="NuNInforButton4" inherits="NuNDetailInforButtonTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNTitleButton4" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="0" y="-1"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Button>
					<Button name="NuNTitleButton5" inherits="NuNDetailTitleButtonTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNInforButton4" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="0" y="-2"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Button>
					<Button name="NuNInforButton5" inherits="NuNDetailInforButtonTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNTitleButton5" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="0" y="-1"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Button>
<!-- f1fs1f2fs2f3 -->
					<Frame name="NuNDivider" inherits="HelpFrameDividerTemplate">
						<Anchors>
							<Anchor point="TOPLEFT">
								<Offset>
									<AbsDimension x="12" y="-196"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Frame>
<!-- f1fs1f2fs2/f3 -->
					<ScrollFrame name="NuNScrollFrame" inherits="UIPanelScrollFrameTemplate">
						<Size>
							<AbsDimension x="540" y="255"/>
						</Size>
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNDivider" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="8" y="4"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="ARTWORK">
								<Texture name="NuNScrollBarTop" file="Interface\PaperDollInfoFrame\UI-Character-ScrollBar">
									<Size>
										<AbsDimension x="31" y="156"/>
									</Size>
									<Anchors>
										<Anchor point="TOPLEFT" relativePoint="TOPRIGHT">
											<Offset>
												<AbsDimension x="0" y="5"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0" right="0.484375" top="0" bottom="1.0"/>
								</Texture>
								<Texture name="NuNScrollBarBottom" file="Interface\PaperDollInfoFrame\UI-Character-ScrollBar">
									<Size>
										<AbsDimension x="31" y="106"/>
									</Size>
									<Anchors>
										<Anchor point="BOTTOMLEFT" relativePoint="BOTTOMRIGHT">
											<Offset>
												<AbsDimension x="0" y="-2"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0.515625" right="1.0" top="0" bottom="0.4140625"/>
								</Texture>
								<Texture name="NuNScrollBarMiddle" file="Interface\PaperDollInfoFrame\UI-Character-ScrollBar">
									<Size>
										<AbsDimension x="31" y="60"/>
									</Size>
									<Anchors>
										<Anchor point="TOP" relativeTo="NuNScrollBarTop" relativePoint="BOTTOM">
											<Offset>
												<AbsDimension x="0" y="0"/>
											</Offset>
										</Anchor>
										<Anchor point="BOTTOM" relativeTo="NuNScrollBarBottom" relativePoint="TOP">
											<Offset>
												<AbsDimension x="0" y="0"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0" right="0.484375" top=".75" bottom="1.0"/>
								</Texture>
								<FontString name="NuNTextLabel" inherits="GameFontNormalSmall" text="NUN_TXT_LABEL">
									<Anchors>
										<Anchor point="RIGHT" relativeTo="NuNScrollBarBottom" relativePoint="BOTTOMLEFT">
											<Offset>
												<AbsDimension x="-18" y="2"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<ScrollChild>
							<EditBox name="NuNText" autofocus="false" multiLine="true" letters="5060" text="NUN_BOILERPLATE">
								<Size>
									<AbsDimension x="541" y="234"/>
								</Size>
								<Scripts>
									<OnTextChanged>
										ScrollingEdit_OnTextChanged();
										NuN_TextWarning(this, "NuNTextLabel");
									</OnTextChanged>
									<OnCursorChanged>
										ScrollingEdit_OnCursorChanged(arg1, arg2, arg3, arg4);
									</OnCursorChanged>
									<OnUpdate>
										ScrollingEdit_OnUpdate();
									</OnUpdate>
									<OnEscapePressed>
										NuN_TextEscape(NuNFrame, NuNText);
									</OnEscapePressed>
								</Scripts>
								<FontString inherits="ChatFontNormal"/>
							</EditBox>
						</ScrollChild>
					</ScrollFrame>
				<!-- Buttons for Saving and Cancelling -->
					<Button name="NuNButtonSaveNote" inherits="NuNButtonTemplate" text="NUN_SAVE" enabled="false">
						<Anchors>
							<Anchor point="CENTER" relativePoint="BOTTOMRIGHT">
								<Offset>
									<AbsDimension x="-198" y="32"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_WriteNote();
							</OnClick>
						</Scripts>
					</Button>
					<Button name="NuNButtonCancel" inherits="NuNButtonTemplate" text="NUN_CANCEL">
						<Anchors>
							<Anchor point="LEFT" relativePoint="RIGHT" relativeTo="NuNButtonSaveNote">
								<Offset>
									<AbsDimension x="6" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_HideFrame();
							</OnClick>
						</Scripts>
					</Button>
					<Button name="NuNButtonDelete" inherits="NuNButtonTemplate" text="NUN_DELETE">
						<Anchors>
							<Anchor point="RIGHT" relativePoint="LEFT" relativeTo="NuNButtonSaveNote">
								<Offset>
									<AbsDimension x="-6" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_DeleteNote("Contact");
							</OnClick>
						</Scripts>
					</Button>
					<Button name="NuNButtonOptions" inherits="NuNButtonTemplate" text="NUN_OPTIONS">
						<Anchors>
							<Anchor point="RIGHT" relativePoint="LEFT" relativeTo="NuNButtonDelete">
								<Offset>
									<AbsDimension x="-6" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_Options();
							</OnClick>
						</Scripts>
					</Button>

					<Button name="NuNButtonTarget" inherits="NuNButtonTemplate" text="NUN_TARGET" enabled="false">
						<Anchors>
							<Anchor point="CENTER" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="64" y="32"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_Target();
							</OnClick>
							<OnEnter>
								NuN_TargetButton_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</Button>
					<Button name="NuNButtonWho" inherits="NuNButtonTemplate" text="NUN_WHO">
						<Anchors>
							<Anchor point="LEFT" relativePoint="RIGHT" relativeTo="NuNButtonTarget">
								<Offset>
									<AbsDimension x="6" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_Who();
							</OnClick>
							<OnEnter>
								NuN_WhoButton_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</Button>
					<Button name="NuNButtonDateStamp" inherits="NuNButtonTemplate" text="NUN_STAMP">
						<Anchors>
							<Anchor point="TOPLEFT">
								<Offset>
									<AbsDimension x="19" y="-28"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_DateStamp();
							</OnClick>
						</Scripts>
					</Button>
					<Button name="NuNButtonLoc" inherits="NuNButtonTemplate" text="NUN_LOC">
						<Anchors>
							<Anchor point="LEFT" relativeTo="NuNButtonDateStamp" relativePoint="RIGHT">
								<Offset>
									<AbsDimension x="6" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_Loc();
							</OnClick>
							<OnEnter>
								NuN_LocButton_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</Button>
					<Button name="NuNCOpenChatButton" inherits="UIPanelButtonTemplate2">
						<Size>
							<AbsDimension x="24" y="24"/>
						</Size>
						<Anchors>
							<Anchor point="TOPRIGHT">
								<Offset>
									<AbsDimension x="-68" y="-28"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								NuN_OpenChat("Contact");
							</OnClick>
							<OnEnter>
								NuN_OpenChat_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
						<NormalTexture file="Interface\ChatFrame\UI-ChatIcon-Chat-Up"/>
						<PushedTexture file="Interface\ChatFrame\UI-ChatIcon-Chat-Down"/>
						<DisabledTexture file="Interface\ChatFrame\UI-ChatIcon-Chat-Disabled"/>
						<HighlightTexture file="Interface\MainMenuBar\UI-MainMenu-ScrollUpButton-Highlight" alphaMode="ADD"/>
					</Button>

					<Button name="NuNFrameHyperButton" inherits="UIPanelButtonTemplate2" text="[]">
						<Size>
							<AbsDimension x="24" y="24"/>
						</Size>
				    		<Anchors>
				      			<Anchor point="LEFT" relativeTo="NuNCOpenChatButton" relativePoint="RIGHT">
				        			<Offset>
				          				<AbsDimension x="-2" y="0"/>
				        			</Offset>
				      			</Anchor>
				    		</Anchors>
						<Scripts>
							<OnClick>
								NuN_HyperButton_OnClick("Contact");
							</OnClick>
							<OnEnter>
								NuN_HyperButton_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</Button>

					<Button name="NuNButtonClrDD" inherits="NuNButtonTemplate" text="NUN_CLRDD">
						<Size>
							<AbsDimension x="122" y="21"/>
						</Size>
				    		<Anchors>
				      			<Anchor point="RIGHT" relativePoint="LEFT" relativeTo="NuNCOpenChatButton">
				        			<Offset>
				          				<AbsDimension x="-5" y="0"/>
				        			</Offset>
				      			</Anchor>
				    		</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_ClrDD();
							</OnClick>
							<OnEnter>
								NuN_ClearDD_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</Button>
<!-- f1fs1f2/fs2 -->
				</Frames>
<!-- f1fs1/f2 -->
			</Frame>
		<!-- Drop Down Menus Frame -->
<!-- f1fs1f2 -->
			<Frame name="NuNDropDownFrame" parent="NuNInnerFrame" enableMouse="true">
				<Size>
					<AbsDimension x="420" y="157"/>
				</Size>
				<Anchors>
					<Anchor point="TOPRIGHT" relativeTo="NuNInnerFrame" relativePoint="TOPRIGHT">
						<Offset>
							<AbsDimension x="-48" y="-48"/>
						</Offset>
					</Anchor>
				</Anchors>

				<Backdrop bgFile="Interface\AddOns\NotesUNeed\Artwork\Texture1" edgeFile="Interface\DialogFrame\UI-DialogBox-Border" tile="true">
					<BackgroundInsets>
						<AbsInset left="11" right="12" top="12" bottom="11"/>
					</BackgroundInsets>
					<TileSize>
						<AbsValue val="32"/>
					</TileSize>
					<EdgeSize>
						<AbsValue val="32"/>
					</EdgeSize>
				</Backdrop>
<!-- f1fs1f2fs2 -->
				<Frames>
<!-- f1fs1f2fs2f3 -->
					<Frame name="NuNARaceDropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativePoint="TOPLEFT" relativeTo="NuNInnerFrame">
								<Offset>
									<AbsDimension x="174" y="-74"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_RACE">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNARaceDropDown_OnLoad();
							</OnLoad>
						</Scripts>
					</Frame>
					<Frame name="NuNHRaceDropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativePoint="TOPLEFT" relativeTo="NuNInnerFrame">
								<Offset>
									<AbsDimension x="174" y="-74"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_RACE">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNHRaceDropDown_OnLoad();
							</OnLoad>
						</Scripts>
					</Frame>
<!-- f1fs1f2fs2/f3 -->
<!-- f1fs1f2fs2f3 -->
					<Frame name="NuNAClassDropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="LEFT" relativeTo="NuNARaceDropDown" relativePoint="RIGHT">
								<Offset>
									<AbsDimension x="20" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_CLASS">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNAClassDropDown_OnLoad();
							</OnLoad>
							<OnEvent>

							</OnEvent>
						</Scripts>
					</Frame>
					<Frame name="NuNHClassDropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="LEFT" relativeTo="NuNHRaceDropDown" relativePoint="RIGHT">
								<Offset>
									<AbsDimension x="20" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_CLASS">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNHClassDropDown_OnLoad();
							</OnLoad>
							<OnEvent>

							</OnEvent>
						</Scripts>
					</Frame>
<!-- f1fs1f2fs2/f3 -->
<!-- f1fs1f2fs2f3 -->
					<Frame name="NuNSexDropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="LEFT" relativePoint="RIGHT" relativeTo="NuNAClassDropDown">
								<Offset>
									<AbsDimension x="20" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_SEX">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNSexDropDown_OnLoad();
							</OnLoad>
						</Scripts>
					</Frame>
<!-- f1fs1f2fs2/f3 -->
<!-- f1fs1f2fs2f3 -->
					<Frame name="NuNProf1DropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNARaceDropDown" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="0" y="-10"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_PROF1">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNProf1DropDown_OnLoad();
							</OnLoad>
						</Scripts>
					</Frame>
<!-- f1fs1f2fs2/f3 -->
<!-- f1fs1f2fs2f3 -->
					<Frame name="NuNProf2DropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="TOP" relativeTo="NuNProf1DropDown" relativePoint="BOTTOM">
								<Offset>
									<AbsDimension x="0" y="-11"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_PROF2">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNProf2DropDown_OnLoad();
							</OnLoad>
						</Scripts>
					</Frame>
<!-- f1fs1f2fs2/f3 -->
<!-- f1fs1f2fs2f3 -->
					<Frame name="NuNACRankDropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="LEFT" relativeTo="NuNProf1DropDown" relativePoint="RIGHT">
								<Offset>
									<AbsDimension x="-20" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_CURR_RANK">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNACRankDropDown_OnLoad();
							</OnLoad>
						</Scripts>
					</Frame>
					<Frame name="NuNHCRankDropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="LEFT" relativeTo="NuNProf1DropDown" relativePoint="RIGHT">
								<Offset>
									<AbsDimension x="-20" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_CURR_RANK">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNHCRankDropDown_OnLoad();
							</OnLoad>
						</Scripts>
					</Frame>
<!-- f1fs1f2fs2/f3 -->
<!-- f1fs1f2fs2f3 -->
					<Frame name="NuNAHRankDropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="LEFT" relativeTo="NuNProf2DropDown" relativePoint="RIGHT">
								<Offset>
									<AbsDimension x="-20" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_HIGH_RANK">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNAHRankDropDown_OnLoad();
							</OnLoad>
						</Scripts>
					</Frame>
					<Frame name="NuNHHRankDropDown" inherits="UIDropDownMenuTemplate">
						<Anchors>
							<Anchor point="LEFT" relativeTo="NuNProf2DropDown" relativePoint="RIGHT">
								<Offset>
									<AbsDimension x="-20" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="OVERLAY">
								<FontString inherits="GameFontNormalSmall" text="NUN_HIGH_RANK">
									<Anchors>
										<Anchor point="TOPLEFT">
											<Offset>
												<AbsDimension x="20" y="10"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
								NuNHHRankDropDown_OnLoad();
							</OnLoad>
						</Scripts>
					</Frame>
<!-- f1fs1f2fs2/f3 -->
				</Frames>
<!-- f1fs1f2/fs2 -->
			</Frame>
<!-- f1fs1/f2 -->
		<!-- Frame for Detail Entry edit box -->
<!-- f1fs1f2 -->
			<Frame name="NuNEditDetailsFrame" toplevel="true" enableMouse="true" movable="true" parent="NuNFrame" hidden="true">
				<Size>
					<AbsDimension x="400" y="105"/>
				</Size>

				<Anchors>
					<Anchor point="CENTER">
						<Offset>
							<AbsDimension x="-5" y="-20"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Backdrop bgFile="Interface\AddOns\NotesUNeed\Artwork\Texture1" edgeFile="Interface\DialogFrame\UI-DialogBox-Border" tile="true">

					<BackgroundInsets>
						<AbsInset left="11" right="12" top="12" bottom="11"/>
					</BackgroundInsets>
					<TileSize>
						<AbsValue val="32"/>
					</TileSize>
					<EdgeSize>
						<AbsValue val="32"/>
					</EdgeSize>
				</Backdrop>
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="NuNEditDetailsHeader" file="Interface\DialogFrame\UI-DialogBox-Header">
							<Size>
								<AbsDimension x="256" y="64"/>
							</Size>
							<Anchors>
								<Anchor point="TOP">
									<Offset>
										<AbsDimension x="0" y="12"/>
									</Offset>
								</Anchor>
							</Anchors>
						</Texture>
						<FontString inherits="GameFontNormal" text="NUN_EDIT_DETAIL">
							<Anchors>
								<Anchor point="TOP" relativeTo="NuNEditDetailsHeader">
									<Offset>
										<AbsDimension x="0" y="-14"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
					<Layer level="BACKGROUND">
						<FontString name="NuNCheckBoxLabel" inherits="GameFontNormalSmall" text="NUN_SAVE_AS_DEFAULT">
							<Anchors>
								<Anchor point="BOTTOM">
									<Offset>
										<AbsDimension x="-122" y="16"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
<!-- f1fs1f2fs2 -->
				<Frames>
					<Button name="NuNEditDetailsCancelButton" inherits="UIPanelButtonTemplate" text="NUN_CANCEL_DETAIL">
						<Size>
							<AbsDimension x="60" y="21"/>
						</Size>
						<NormalText inherits="GameFontHighlight"/>
						<DisabledText inherits="GameFontDisable"/>
						<HighlightText inherits="GameFontHighlight"/>
						<Anchors>
							<Anchor point="TOPRIGHT" relativePoint="RIGHT" relativeTo="NuNEditDetailsFrame">
								<Offset>
									<AbsDimension x="-14" y="-17"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuNEditDetails_HideFrame();
							</OnClick>
						</Scripts>
					</Button>
					<Button name="NuNEditDetailsSaveButton" inherits="UIPanelButtonTemplate" text="NUN_SAVE_DETAIL">
						<Size>
							<AbsDimension x="60" y="21"/>
						</Size>
						<NormalText inherits="GameFontHighlight"/>
						<DisabledText inherits="GameFontDisable"/>
						<HighlightText inherits="GameFontHighlight"/>
						<Anchors>
							<Anchor point="RIGHT" relativePoint="LEFT" relativeTo="NuNEditDetailsCancelButton">
								<Offset>
									<AbsDimension x="-5" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								NuNEditDetails();
							</OnClick>
						</Scripts>
					</Button>
					<Button name="NuNEditDetailsRestoreButton" inherits="UIPanelButtonTemplate" text="NUN_RESTORE_DETAIL">
						<Size>
							<AbsDimension x="120" y="21"/>
						</Size>
						<NormalText inherits="GameFontHighlight"/>
						<DisabledText inherits="GameFontDisable"/>
						<HighlightText inherits="GameFontHighlight"/>
						<Anchors>
							<Anchor point="RIGHT" relativePoint="LEFT" relativeTo="NuNEditDetailsSaveButton">
								<Offset>
									<AbsDimension x="-12" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								NuNEditDetailsRestore();
							</OnClick>
							<OnEnter>
								NuN_RestoreDefButton_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</Button>
					<EditBox name="NuNEditDetailsBox" autofocus="false" historyLines="0" letters="32">
						<Size>
							<AbsDimension x="350" y="64"/>
						</Size>
						<Anchors>
							<Anchor point="CENTER" relativePoint="TOP">
								<Offset>
									<AbsDimension x="0" y="-42"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="BACKGROUND">
								<Texture name="NuN_TitleBoxLeft" file="Interface\ChatFrame\UI-ChatInputBorder-Left">
									<Size>
										<AbsDimension x="256" y="32"/>
									</Size>
									<Anchors>
										<Anchor point="LEFT">
											<Offset>
												<AbsDimension x="-10" y="0"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0" right="1.0" top="0" bottom="1.0"/>
								</Texture>
								<Texture name="NuN_TitleBoxRight" file="Interface\ChatFrame\UI-ChatInputBorder-Right">
									<Size>
										<AbsDimension x="75" y="32"/>
									</Size>
									<Anchors>
										<Anchor point="RIGHT">
											<Offset>
												<AbsDimension x="10" y="0"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0.70703125" right="1.0" top="0" bottom="1.0"/>
								</Texture>
								<Texture file="Interface\ChatFrame\UI-ChatInputBorder-Left">
									<Size>
										<AbsDimension x="2" y="32"/>
									</Size>
									<Anchors>
										<Anchor point="LEFT" relativeTo="NuN_TitleBoxLeft" relativePoint="RIGHT">
											<Offset>
												<AbsDimension x="0" y="0"/>
											</Offset>
										</Anchor>
										<Anchor point="RIGHT" relativeTo="NuN_TitleBoxRight" relativePoint="LEFT">
											<Offset>
												<AbsDimension x="0" y="0"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0.29296875" right="1.0" top="0" bottom="1.0"/>
								</Texture>
							</Layer>
						</Layers>
						<Scripts>
							<OnLoad>
							</OnLoad>
							<OnTextChanged>
							</OnTextChanged>
							<OnEnterPressed>
								NuNEditDetails();
							</OnEnterPressed>
							<OnEscapePressed>
								NuNEditDetails_HideFrame();
							</OnEscapePressed>
						</Scripts>
						<FontString inherits="ChatFontNormal"/>
					</EditBox>
					<CheckButton name="NuNEditDetail_CheckButton" inherits="UICheckButtonTemplate"  hidden="true">
						<Anchors>
							<Anchor point="BOTTOMLEFT" relativeTo="NuNEditDetailsFrame" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="10" y="6" />
								</Offset>
							</Anchor>
						</Anchors>
						<HitRectInsets>
							<AbsInset left="0" right="-60" top="-10" bottom="0"/>
						</HitRectInsets>
						<Scripts>
							<OnClick>
								if ( this:GetChecked() ) then
									PlaySound("igMainMenuOptionCheckBoxOff");
								else
									PlaySound("igMainMenuOptionCheckBoxOn");
								end
								NuN_EditDetailCheckButtonOnClick();
							</OnClick>
							<OnEnter>
								NuN_SaveDefCheck_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</CheckButton>
				</Frames>
<!-- f1fs1f2/fs2 -->
			</Frame>
<!-- f1fs1/f2 -->
		</Frames>
<!-- f1/fs1 -->
		<Scripts>
			<OnLoad>
				tinsert(UISpecialFrames,"NuNFrame");
				NuN_OnLoad();
			</OnLoad>
			<OnEvent>
				NuN_OnEvent();
			</OnEvent>
			<OnHide>
				NuN_SaveLast("Contact");
				if ( NuN_ChatFrame:IsVisible() ) then
					HideUIPanel(NuN_ChatFrame);
				end
				if ( NuN_ScaleFrame:IsVisible() ) then
					HideUIPanel(NuN_ScaleFrame);
				end
				if ( ( NuNcDeleteFrame:IsVisible() ) and ( NuNcDeleteFrame.type == "Contact" ) ) then
					HideUIPanel(NuNcDeleteFrame);
				end
			</OnHide>
		</Scripts>
	</Frame>
<!-- /f1 -->




<!-- NuN control menu, options, and search function -->
	<Frame name="NuNOptionsFrame" toplevel="true" hidden="true" parent="UIParent" movable="true" enableMouse="true">
		<Size>
			<AbsDimension x="410" y="540"/>
		</Size>
		<Anchors>
			<Anchor point="CENTER">
				<Offset>
					<AbsDimension x="0" y="80"/>
				</Offset>
			</Anchor>
		</Anchors>
		<Backdrop bgFile="Interface\AddOns\NotesUNeed\Artwork\Texture1" edgeFile="Interface\DialogFrame\UI-DialogBox-Border" tile="true">
			<BackgroundInsets>
				<AbsInset left="11" right="12" top="12" bottom="11"/>
			</BackgroundInsets>
			<TileSize>
				<AbsValue val="32"/>
			</TileSize>
			<EdgeSize>
				<AbsValue val="32"/>
			</EdgeSize>
		</Backdrop>
		<Layers>
			<Layer level="ARTWORK">
				<Texture name="NuNOptionsHeader" file="Interface\DialogFrame\UI-DialogBox-Header">
					<Size>
						<AbsDimension x="330" y="60"/>
					</Size>
					<Anchors>
						<Anchor point="TOP">
							<Offset>
								<AbsDimension x="0" y="12"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<FontString inherits="GameFontNormal" text="NUN_OPTIONS_HEADER">
					<Anchors>
						<Anchor point="TOP" relativeTo="NuNOptionsHeader">
							<Offset>
								<AbsDimension x="0" y="-14"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNOptionsVersionLabel" inherits="GameFontNormalSmall" text="v3.21.11000">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="12" y="-12"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
			<Layer level="BACKGROUND">
				<FontString name="NuNOptionsGuildCheckBoxLabel" inherits="GameFontHighlightSmall" text="NUN_AUTO_GUILD">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="46" y="-56"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNOptionsAddCheckBoxLabel" inherits="GameFontHighlightSmall" text="NUN_AUTO_ADD">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="46" y="-108"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNOptionsDeleteCheckBoxLabel" inherits="GameFontHighlightSmall" text="NUN_AUTO_DELETE">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="46" y="-125"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNOptionsDeleteCheckBoxLabel2" inherits="GameFontHighlightSmall" text="NUN_AUTO_DELETE2">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="56" y="-135"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNOptionsTTLengthTextBoxLabel" inherits="GameFontNormalSmall" text="NUN_TTLENGTH_TEXTBOX_LABEL">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="28" y="-170"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNOptionsTTLengthTextBoxLabel2" inherits="GameFontNormalSmall" text="NUN_TTTOTAL_LABEL">
					<Anchors>
						<Anchor point="TOPLEFT" relativeTo="NuNOptionsTTLengthTextBoxLabel" relativePoint="BOTTOM">
							<Offset>
								<AbsDimension x="-63" y="-14"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNOptionsTTLineLengthTextBoxLabel" inherits="GameFontNormalSmall" text="NUN_TTLINEL_LABEL">
					<Anchors>
						<Anchor point="TOPLEFT" relativeTo="NuNOptionsTTLengthTextBoxLabel" relativePoint="BOTTOM">
							<Offset>
								<AbsDimension x="92" y="-14"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
		</Layers>
		<Frames>
			<Button name="NuNOptionsScaleFrameButton" inherits="UIPanelButtonTemplate2">
				<Size>
					<AbsDimension x="24" y="24"/>
				</Size>
		    		<Anchors>
		      			<Anchor point="TOPRIGHT">
		        			<Offset>
		          				<AbsDimension x="-7" y="-7"/>
		        			</Offset>
		      			</Anchor>
		    		</Anchors>
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="NuNScaleIcon" file="Interface\AddOns\NotesUNeed\Artwork\NuNScale">
							<Size>
								<AbsDimension x="16" y="16"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnClick>
						NuNScaleFrameShow();
					</OnClick>
					<OnEnter>
						NuNScaleFrameButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
			<Button name="NuNOptionsImport" inherits="NuNOptionsButtonTemplate" text="NUN_IMPORT">
				<Size>
					<AbsDimension x="370" y="21"/>
				</Size>
				<Anchors>
					<Anchor point="CENTER" relativePoint="TOP">
						<Offset>
							<AbsDimension x="0" y="-42"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						NuNOptions_Import();
					</OnClick>
				</Scripts>
			</Button>
			<CheckButton name="NuNOptionsGuildCheckButton" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="29" y="-53" />
						</Offset>
					</Anchor>
				</Anchors>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_OptionsGuildCheckBox_OnClick();
					</OnClick>
					<OnEnter>
						if ( this.tooltipText ) then
							GameTooltip_AddNewbieTip("Option Info.", 1.0, 1.0, 1.0, this.tooltipText);
						end
					</OnEnter>
					<OnLeave>
						GameTooltip:Hide();
					</OnLeave>
				</Scripts>
			</CheckButton>
			<Button name="NuNOptionsExport" inherits="NuNOptionsButtonTemplate" text="NUN_EXPORT">
				<Size>
					<AbsDimension x="370" y="21"/>
				</Size>
				<Anchors>
					<Anchor point="CENTER" relativePoint="TOP" relativeTo="NuNOptionsImport">
						<Offset>
							<AbsDimension x="0" y="-63"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						NuNOptions_Export();
					</OnClick>
				</Scripts>
			</Button>
			<CheckButton name="NuNOptionsAddCheckButton" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="29" y="-105" />
						</Offset>
					</Anchor>
				</Anchors>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_OptionsAddCheckBox_OnClick();
					</OnClick>
					<OnEnter>
						if ( this.tooltipText ) then
							GameTooltip_AddNewbieTip("Option Info.", 1.0, 1.0, 1.0, this.tooltipText);
						end
					</OnEnter>
					<OnLeave>
						GameTooltip:Hide();
					</OnLeave>
				</Scripts>
			</CheckButton>
			<CheckButton name="NuNOptionsDeleteCheckButton" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="29" y="-122" />
						</Offset>
					</Anchor>
				</Anchors>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_OptionsDeleteCheckBox_OnClick();
					</OnClick>
					<OnEnter>
						if ( this.tooltipText ) then
							GameTooltip_AddNewbieTip("Option Info.", 1.0, 1.0, 1.0, this.tooltipText);
						end
					</OnEnter>
					<OnLeave>
						GameTooltip:Hide();
					</OnLeave>
				</Scripts>
			</CheckButton>

<!-- New Options as of Version 2.0 -->
			<EditBox name="NuNOptionsTTLengthTextBox" numeric="true" autoFocus="false" historyLines="0" letters="4" hidden="false">
				<Size>
					<AbsDimension x="80" y="54"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNOptionsTTLengthTextBoxLabel" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="10" y="8"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="BACKGROUND">
						<Texture name="NuNOptionsTTLengthBoxLeft" file="Interface\ChatFrame\UI-ChatInputBorder-Left">
							<Size>
								<AbsDimension x="66" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="LEFT">
									<Offset>
										<AbsDimension x="-10" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0" right="1.0" top="0" bottom="1.0"/>
						</Texture>
						<Texture name="NuNOptionsTTLengthBoxRight" file="Interface\ChatFrame\UI-ChatInputBorder-Right">
							<Size>
								<AbsDimension x="30" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="10" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0.70703125" right="1.0" top="0" bottom="1.0"/>
						</Texture>
						<Texture file="Interface\ChatFrame\UI-ChatInputBorder-Left">
							<Size>
								<AbsDimension x="5" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuNOptionsTTLengthBoxLeft" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
								<Anchor point="RIGHT" relativeTo="NuNOptionsTTLengthBoxRight" relativePoint="LEFT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0.29296875" right="1.0" top="0" bottom="1.0"/>
						</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnTextChanged>
						NuN_OptionsTextLengthSet();
					</OnTextChanged>
					<OnEscapePressed>
						HideUIPanel(NuNOptionsFrame);
					</OnEscapePressed>
					<OnTabPressed>
						NuNOptionsTTLengthTextBox:ClearFocus();
						NuNOptionsTTLineLengthTextBox:SetFocus();
					</OnTabPressed>
				</Scripts>
				<FontString inherits="ChatFontNormal"/>
			</EditBox>
			<EditBox name="NuNOptionsTTLineLengthTextBox" numeric="true" autoFocus="false" historyLines="0" letters="3" hidden="false">
				<Size>
					<AbsDimension x="50" y="54"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNOptionsTTLengthTextBoxLabel" relativePoint="BOTTOM">
						<Offset>
							<AbsDimension x="30" y="8"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="BACKGROUND">
						<Texture name="NuNOptionsTTLineLengthBoxLeft" file="Interface\ChatFrame\UI-ChatInputBorder-Left">
							<Size>
								<AbsDimension x="36" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="LEFT">
									<Offset>
										<AbsDimension x="-10" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0" right="1.0" top="0" bottom="1.0"/>
						</Texture>
						<Texture name="NuNOptionsTTLineLengthBoxRight" file="Interface\ChatFrame\UI-ChatInputBorder-Right">
							<Size>
								<AbsDimension x="20" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="10" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0.70703125" right="1.0" top="0" bottom="1.0"/>
						</Texture>
						<Texture file="Interface\ChatFrame\UI-ChatInputBorder-Left">
							<Size>
								<AbsDimension x="5" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuNOptionsTTLineLengthBoxLeft" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
								<Anchor point="RIGHT" relativeTo="NuNOptionsTTLineLengthBoxRight" relativePoint="LEFT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0.29296875" right="1.0" top="0" bottom="1.0"/>
						</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnTextChanged>
						NuN_OptionsTextLineLengthSet();
					</OnTextChanged>
					<OnEscapePressed>
						HideUIPanel(NuNOptionsFrame);
					</OnEscapePressed>
					<OnTabPressed>
						NuNOptionsTTLineLengthTextBox:ClearFocus();
						NuNOptionsTTLengthTextBox:SetFocus();
					</OnTabPressed>
				</Scripts>
				<FontString inherits="ChatFontNormal"/>
			</EditBox>

			<CheckButton name="NuN_DefaultLevelCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNOptionsTTLengthTextBox" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="-10" y="-8" />
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString inherits="GameFontHighlightSmall" text="NUN_DEFAULTLEVEL_CHECKBOX_LABEL">
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuN_DefaultLevelCheckBox" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_DefaultLevelCheckBox_OnClick();
					</OnClick>
					<OnEnter>
					</OnEnter>
					<OnLeave>
					</OnLeave>
				</Scripts>
			</CheckButton>

			<CheckButton name="NuN_HelpTTCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuN_DefaultLevelCheckBox" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="-8" />
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString inherits="GameFontHighlightSmall" text="NUN_SHOWHELPTT_CHECKBOX_LABEL">
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuN_HelpTTCheckBox" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_HelpTTCheckBox_OnClick();
					</OnClick>
					<OnEnter>
					</OnEnter>
					<OnLeave>
					</OnLeave>
				</Scripts>
			</CheckButton>

			<CheckButton name="NuN_OverTTCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuN_HelpTTCheckBox" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="-8" />
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString inherits="GameFontHighlightSmall" text="NUN_MINOVERTT_CHECKBOX_LABEL">
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuN_OverTTCheckBox" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_OverTTCheckBox_OnClick();
					</OnClick>
					<OnEnter>
					</OnEnter>
					<OnLeave>
					</OnLeave>
				</Scripts>
			</CheckButton>

			<CheckButton name="NuN_AutoQuestCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuN_OverTTCheckBox" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="-8" />
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString inherits="GameFontHighlightSmall" text="NUN_QUESTNOTE_CHECKBOX_LABEL">
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuN_AutoQuestCheckBox" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_AutoQuestCheckBox_OnClick();
					</OnClick>
					<OnEnter>
					</OnEnter>
					<OnLeave>
					</OnLeave>
				</Scripts>
			</CheckButton>

			<CheckButton name="NuN_AutoNoteCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuN_AutoQuestCheckBox" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="-8" />
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString inherits="GameFontHighlightSmall" text="NUN_AUTONOTE_CHECKBOX_LABEL">
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuN_AutoNoteCheckBox" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_AutoNoteCheckBox_OnClick();
					</OnClick>
					<OnEnter>
					</OnEnter>
					<OnLeave>
					</OnLeave>
				</Scripts>
			</CheckButton>

			<CheckButton name="NuN_AutoPartyCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuN_AutoNoteCheckBox" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="-8" />
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString inherits="GameFontHighlightSmall" text="NUN_AUTOPARTY_CHECKBOX_LABEL">
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuN_AutoPartyCheckBox" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_AutoPartyCheckBox_OnClick();
					</OnClick>
					<OnEnter>
					</OnEnter>
					<OnLeave>
					</OnLeave>
				</Scripts>
			</CheckButton>

			<CheckButton name="NuN_BehaveCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuN_AutoPartyCheckBox" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="-8" />
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString inherits="GameFontHighlightSmall" text="NUN_BEHAVE_CHECKBOX_LABEL">
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuN_BehaveCheckBox" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_BehaveCheckBox_OnClick();
					</OnClick>
					<OnEnter>
						NuN_bHaveTTCheckBox_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</CheckButton>

			<CheckButton name="NuN_AutoMapCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="19" y="19"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuN_BehaveCheckBox" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="-8" />
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString name="NuN_AutoMapCheckBoxLabel" inherits="GameFontHighlightSmall" text="NUN_AUTOMAP_CHECKBOX_LABEL">
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuN_AutoMapCheckBox" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<HitRectInsets>
					<AbsInset left="0" right="-240" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_AutoMapCheckBox_OnClick();
					</OnClick>
					<OnEnter>
						NuN_AutoMapCheckBox_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</CheckButton>

<!-- New Options as of Version 2.0 -->

			<Frame name="NuNOptionsSearchDropDown" inherits="UIDropDownMenuTemplate">
				<Anchors>
					<Anchor point="BOTTOMLEFT" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="5" y="14"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString inherits="GameFontNormalSmall" text="NUN_SEARCH_CRITERIA">
							<Anchors>
								<Anchor point="TOPLEFT">
									<Offset>
										<AbsDimension x="20" y="10"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<Scripts>
					<OnLoad>
						NuNOptionsSearchDropDown_OnLoad();
					</OnLoad>
					<OnShow>
						NuNOptionsSearchDropDown_OnLoad();
					</OnShow>
					<OnEvent>
						</OnEvent>
				</Scripts>
			</Frame>
			<Button name="NuNOptionsSearch" inherits="NuNOptionsButtonTemplate" text="NUN_SEARCH">
				<Anchors>
					<Anchor point="BOTTOMLEFT" relativePoint="TOPLEFT" relativeTo="NuNOptionsSearchDropDown">
						<Offset>
							<AbsDimension x="18" y="15"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						NuNOptions_Search();
					</OnClick>
				</Scripts>
			</Button>
			<Button name="NuNOptionsClose" inherits="NuNOptionsButtonTemplate" text="NUN_CLOSE">
				<Anchors>
					<Anchor point="BOTTOMRIGHT" relativePoint="BOTTOMRIGHT">
						<Offset>
							<AbsDimension x="-18" y="22"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						HideUIPanel(NuNOptionsFrame);
					</OnClick>
				</Scripts>
			</Button>
			<Button name="NuNOptionsReset" inherits="NuNOptionsButtonTemplate" text="NUN_RESET">
				<Anchors>
					<Anchor point="BOTTOMRIGHT" relativePoint="TOPRIGHT" relativeTo="NuNOptionsClose">
						<Offset>
							<AbsDimension x="0" y="18"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						NuNOptions_ResetDefaults();
					</OnClick>
					<OnEnter>
						NuN_ResetButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
		</Frames>
		<Scripts>
			<OnLoad>
				tinsert(UISpecialFrames,"NuNOptionsFrame");
			</OnLoad>
			<OnHide>
				if ( NuN_ScaleFrame:IsVisible() ) then
					HideUIPanel(NuN_ScaleFrame);
				end
			</OnHide>
		</Scripts>
	</Frame>



	<Frame name="NuN_ChatFrame" toplevel="true" hidden="true" parent="UIParent" frameStrata="HIGH" movable="true" enableMouse="true">
		<TitleRegion setAllPoints="true"/>
		<Size>
			<AbsDimension x="440" y="180"/>
		</Size>
		<Anchors>
			<Anchor point="CENTER"/>
		</Anchors>
		<Backdrop bgFile="Interface\AddOns\NotesUNeed\Artwork\Texture1" edgeFile="Interface\DialogFrame\UI-DialogBox-Border" tile="true">
			<BackgroundInsets>
				<AbsInset left="11" right="12" top="12" bottom="11"/>
			</BackgroundInsets>
			<TileSize>
				<AbsValue val="32"/>
			</TileSize>
			<EdgeSize>
				<AbsValue val="32"/>
			</EdgeSize>
		</Backdrop>
		<Layers>
			<Layer level="ARTWORK">
				<Texture name="NuNChatHeader" file="Interface\DialogFrame\UI-DialogBox-Header">
					<Size>
						<AbsDimension x="230" y="60"/>
					</Size>
					<Anchors>
						<Anchor point="TOP">
							<Offset>
								<AbsDimension x="0" y="12"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<FontString inherits="GameFontNormal" text="NUN_CHAT_HEADER">
					<Anchors>
						<Anchor point="TOP" relativeTo="NuNChatHeader">
							<Offset>
								<AbsDimension x="0" y="-14"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
			<Layer level="BACKGROUND">
				<FontString name="NuNChatNoteTitleLabel" inherits="GameFontHighlight" text="NUN_CHAT_NOTETITLE_LABEL">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="26" y="-36"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNChatNoteTitle" inherits="GameFontNormal" text="NUN_PLACE_HOLDER">
					<Anchors>
						<Anchor point="TOPLEFT" relativeTo="NuNChatNoteTitleLabel" relativePoint="BOTTOMLEFT">
							<Offset>
								<AbsDimension x="10" y="-6"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
		</Layers>
		<Frames>
			<CheckButton name="NuN_ChatCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="18" y="18"/>
				</Size>
				<Anchors>
					<Anchor point="LEFT" relativeTo="NuNChatNoteTitleLabel" relativePoint="RIGHT">
						<Offset>
							<AbsDimension x="26" y="-2" />
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString inherits="GameFontNormalSmall" text="NUN_CHATCHECKBOX_LABEL">
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuN_ChatCheckBox" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="10" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<HitRectInsets>
					<AbsInset left="0" right="-60" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
					</OnClick>
					<OnEnter>
						NuN_ChatCheckBox_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</CheckButton>
			<Frame name="NuNChatDropDown" inherits="UIDropDownMenuTemplate">
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="9" y="-92"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="OVERLAY">
						<FontString inherits="GameFontNormalSmall" text="NUN_CHAT_DROPDOWN_LABEL">
							<Anchors>
								<Anchor point="TOPLEFT">
									<Offset>
										<AbsDimension x="24" y="12"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<Scripts>
					<OnLoad>
						NuNChatDropDown_OnLoad();
					</OnLoad>
					<OnShow>
						NuNChatDropDown_OnLoad();
					</OnShow>
					<OnEvent>
						</OnEvent>
				</Scripts>
			</Frame>
			<Button name="NuNTransmit" inherits="UIPanelButtonTemplate" text="NUN_CHAT_SEND">
				<Size>
					<AbsDimension x="90" y="21"/>
				</Size>
				<Anchors>
					<Anchor point="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="25" y="22"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						NuN_Transmit();
					</OnClick>
				</Scripts>
			</Button>
			<EditBox name="NuNChatTextBox" historyLines="0" letters="25" hidden="true">
				<Size>
					<AbsDimension x="200" y="54"/>
				</Size>
				<Anchors>
					<Anchor point="LEFT" relativeTo="NuNChatDropDown" relativePoint="RIGHT">
						<Offset>
							<AbsDimension x="22" y="3"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="BACKGROUND">
						<Texture name="NuNChatBoxLeft" file="Interface\ChatFrame\UI-ChatInputBorder-Left">
							<Size>
								<AbsDimension x="106" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="LEFT">
									<Offset>
										<AbsDimension x="-10" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0" right="1.0" top="0" bottom="1.0"/>
						</Texture>
						<Texture name="NuNChatBoxRight" file="Interface\ChatFrame\UI-ChatInputBorder-Right">
							<Size>
								<AbsDimension x="75" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="10" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0.70703125" right="1.0" top="0" bottom="1.0"/>
						</Texture>
						<Texture file="Interface\ChatFrame\UI-ChatInputBorder-Left">
							<Size>
								<AbsDimension x="5" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuNChatBoxLeft" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
								<Anchor point="RIGHT" relativeTo="NuNChatBoxRight" relativePoint="LEFT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0.29296875" right="1.0" top="0" bottom="1.0"/>
						</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnTextChanged>
						if ( ( this:GetText() == nil ) or ( this:GetText() == "" ) ) then
							NuNTransmit:Disable();
						else
							NuNTransmit:Enable();
						end
					</OnTextChanged>
					<OnEscapePressed>
						HideUIPanel(NuN_ChatFrame);
					</OnEscapePressed>
				</Scripts>
				<FontString inherits="ChatFontNormal"/>
			</EditBox>
			<Button name="NuNChatClose" inherits="NuNOptionsButtonTemplate" text="NUN_CANCEL">
				<Size>
					<AbsDimension x="90" y="21"/>
				</Size>
				<Anchors>
					<Anchor point="BOTTOMRIGHT">
						<Offset>
							<AbsDimension x="-24" y="22"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						HideUIPanel(NuN_ChatFrame);
					</OnClick>
				</Scripts>
			</Button>
		</Frames>
		<Scripts>
			<OnLoad>
				tinsert(UISpecialFrames,"NuN_ChatFrame");
				this.type = "Empty";
			</OnLoad>
		</Scripts>
	</Frame>


	<Frame name="NuN_ConfirmFrame" toplevel="true" hidden="true" parent="UIParent" frameStrata="HIGH" movable="true" enableMouse="true">
		<TitleRegion setAllPoints="true"/>
		<Size>
			<AbsDimension x="440" y="180"/>
		</Size>
		<Anchors>
			<Anchor point="CENTER"/>
		</Anchors>
		<Backdrop bgFile="Interface\AddOns\NotesUNeed\Artwork\Texture1" edgeFile="Interface\DialogFrame\UI-DialogBox-Border" tile="true">
			<BackgroundInsets>
				<AbsInset left="11" right="12" top="12" bottom="11"/>
			</BackgroundInsets>
			<TileSize>
				<AbsValue val="32"/>
			</TileSize>
			<EdgeSize>
				<AbsValue val="32"/>
			</EdgeSize>
		</Backdrop>
		<Layers>
			<Layer level="ARTWORK">
				<Texture name="NuNConfirmHeader" file="Interface\DialogFrame\UI-DialogBox-Header">
					<Size>
						<AbsDimension x="230" y="60"/>
					</Size>
					<Anchors>
						<Anchor point="TOP">
							<Offset>
								<AbsDimension x="0" y="12"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<FontString inherits="GameFontNormal" text="NUN_CONFIRM">
					<Anchors>
						<Anchor point="TOP" relativeTo="NuNChatHeader">
							<Offset>
								<AbsDimension x="0" y="-14"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
			<Layer level="BACKGROUND">
				<FontString name="NuNConflictLabel1" inherits="GameFontNormal" text="NUN_CONFLICT_LABEL1">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="26" y="-36"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNConflictLabel2" inherits="GameFontNormal" text="NUN_CONFLICT_LABEL2">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="26" y="-56"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNConflictedRealmsLabel" inherits="GameFontHighlight" text=" ">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="26" y="-76"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
		</Layers>
		<Frames>
			<Button name="NuNConfirmButton" inherits="UIPanelButtonTemplate" text="NUN_CONFIRM">
				<Size>
					<AbsDimension x="90" y="21"/>
				</Size>
				<Anchors>
					<Anchor point="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="25" y="22"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						NuNGNoteFrame.confirmed = true;
						NuNGNote_WriteNote();
					</OnClick>
				</Scripts>
			</Button>
			<Button name="NuNConfirmCancelButton" inherits="NuNOptionsButtonTemplate" text="NUN_CANCEL">
				<Size>
					<AbsDimension x="90" y="21"/>
				</Size>
				<Anchors>
					<Anchor point="BOTTOMRIGHT">
						<Offset>
							<AbsDimension x="-24" y="22"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						HideUIPanel(NuN_ConfirmFrame);
					</OnClick>
				</Scripts>
			</Button>
		</Frames>
		<Scripts>
			<OnLoad>
			</OnLoad>
		</Scripts>
	</Frame>



<!--  Search Frame -->

	<Frame name="NuNSearchFrame" toplevel="true" enableMouse="true" movable="true" parent="UIParent" hidden="true">
		<TitleRegion setAllPoints="true"/>
		<Size>
			<AbsDimension x="384" y="512"/>
		</Size>
		<Anchors>
 			<Anchor point="TOPLEFT">
 				<Offset>
 					<AbsDimension x="60" y="-144"/>
 				</Offset>
 			</Anchor>
 		</Anchors>
		<HitRectInsets>
			<AbsInset left="0" right="35" top="0" bottom="75"/>
		</HitRectInsets>
		<Layers>
			<Layer level="BACKGROUND">
              			<Texture name="NuNSearchFramePortrait" file="Interface\PetitionFrame\GuildCharter-Icon">
					<Size>
						<AbsDimension x="58" y="58"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="8" y="-9"/>
							</Offset>
						</Anchor>
					</Anchors>
     		           	</Texture>
     			</Layer>
			<Layer level="ARTWORK">
				<Texture file="Interface\TaxiFrame\UI-TaxiFrame-TopLeft">
					<Size>
						<AbsDimension x="256" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT"/>
					</Anchors>
				</Texture>
				<Texture file="Interface\TaxiFrame\UI-TaxiFrame-TopRight">
					<Size>
						<AbsDimension x="128" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="256" y="0"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<Texture file="Interface\TaxiFrame\UI-TaxiFrame-BotLeft">
					<Size>
						<AbsDimension x="256" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="0" y="-256"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<Texture file="Interface\TaxiFrame\UI-TaxiFrame-BotRight">
					<Size>
						<AbsDimension x="128" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="256" y="-256"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<FontString name="NuNSearchTitleText" inherits="GameFontNormal" text="NUN_SEARCH">
					<Size>
						<AbsDimension x="300" y="14"/>
					</Size>
					<Anchors>
						<Anchor point="TOP" relativeTo="NuNSearchFrame" relativePoint="TOP">
							<Offset>
								<AbsDimension x="0" y="-15"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
		</Layers>
		<Frames>
			<Button name="NuNSearchFrameCloseButton" inherits="UIPanelCloseButton">
				<Anchors>
					<Anchor point="TOPRIGHT" relativeTo="NuNSearchFrame" relativePoint="TOPRIGHT">
						<Offset>
							<AbsDimension x="-29" y="-8"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchFrameScaleButton" inherits="UIPanelButtonTemplate2">
				<Size>
					<AbsDimension x="24" y="24"/>
				</Size>
		    		<Anchors>
		      			<Anchor point="RIGHT" relativeTo="NuNSearchFrameCloseButton" relativePoint="LEFT">
		        			<Offset>
		          				<AbsDimension x="4" y="0"/>
		        			</Offset>
		      			</Anchor>
		    		</Anchors>
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="NuNSearchFrameScaleIcon" file="Interface\AddOns\NotesUNeed\Artwork\NuNScale">
							<Size>
								<AbsDimension x="16" y="16"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnClick>
						NuNScaleFrameShow();
					</OnClick>
					<OnEnter>
						NuNScaleFrameButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>

	<!-- Drop Down Search Boxes / Free Text Search Box -->
			<Button name="NuNSearchClassDropDown" inherits="UIDropDownMenuTemplate" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="52" y="-40"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
						NuNSearchClassDropDown_OnLoad();
					</OnLoad>
				</Scripts>
			</Button>
			<Button name="NuNSearchProfDropDown" inherits="UIDropDownMenuTemplate" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="52" y="-40"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
						NuNSearchProfDropDown_OnLoad();
					</OnLoad>
				</Scripts>
			</Button>
<!-- -->
			<EditBox name="NuNSearchTextBox" autofocus="false" historyLines="0" letters="50" hidden="true">
				<Size>
					<AbsDimension x="200" y="54"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="81" y="-26"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="BACKGROUND">
						<Texture name="NuNSearchBoxLeft" file="Interface\ChatFrame\UI-ChatInputBorder-Left">
							<Size>
								<AbsDimension x="106" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="LEFT">
									<Offset>
										<AbsDimension x="-10" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0" right="1.0" top="0" bottom="1.0"/>
						</Texture>
						<Texture name="NuNSearchBoxRight" file="Interface\ChatFrame\UI-ChatInputBorder-Right">
							<Size>
								<AbsDimension x="75" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="RIGHT">
									<Offset>
										<AbsDimension x="10" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0.70703125" right="1.0" top="0" bottom="1.0"/>
						</Texture>
						<Texture file="Interface\ChatFrame\UI-ChatInputBorder-Left">
							<Size>
								<AbsDimension x="5" y="27"/>
							</Size>
							<Anchors>
								<Anchor point="LEFT" relativeTo="NuNSearchBoxLeft" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
								<Anchor point="RIGHT" relativeTo="NuNSearchBoxRight" relativePoint="LEFT">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0.29296875" right="1.0" top="0" bottom="1.0"/>
						</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnTextChanged>
					</OnTextChanged>
					<OnEscapePressed>
						if ( NuNSearchFrame.backEnabled ) then
							NuNSearch_Back();
						else
							HideUIPanel(NuNSearchFrame);
						end
					</OnEscapePressed>
					<OnEnterPressed>
						NuNSearch_Search();
					</OnEnterPressed>
				</Scripts>
				<FontString inherits="ChatFontNormal"/>
			</EditBox>
<!-- -->

			<Button name="NuNSearchFrameSearchButton" inherits="UIPanelButtonTemplate" text="NUN_SEARCH">
				<Size>
					<AbsDimension x="56" y="20"/>
				</Size>
				<Anchors>
					<Anchor point="TOPRIGHT">
						<Offset>
							<AbsDimension x="-39" y="-33"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnClick>
						NuNSearch_Search();
					</OnClick>
				</Scripts>
			</Button>
			<Button name="NuNSearchFrameBackButton" inherits="UIPanelButtonTemplate" text="NUN_GOBACK">
				<Size>
					<AbsDimension x="56" y="20"/>
				</Size>
				<Anchors>
					<Anchor point="TOPRIGHT">
						<Offset>
							<AbsDimension x="-39" y="-50"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnClick>
						NuNSearch_Back();
					</OnClick>
				</Scripts>
			</Button>


	<!-- Faux Scroll Buttons for holding found NuN -->

			<Button name="NuNSearchNote1" inherits="NuNSearchNoteTemplate" id="1" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchFrame">
						<Offset>
							<AbsDimension x="19" y="-75"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote2" inherits="NuNSearchNoteTemplate" id="2" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote1" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote3" inherits="NuNSearchNoteTemplate" id="3" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote2" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote4" inherits="NuNSearchNoteTemplate" id="4" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote3" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote5" inherits="NuNSearchNoteTemplate" id="5" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote4" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote6" inherits="NuNSearchNoteTemplate" id="6" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote5" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote7" inherits="NuNSearchNoteTemplate" id="7" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote6" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote8" inherits="NuNSearchNoteTemplate" id="8" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote7" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote9" inherits="NuNSearchNoteTemplate" id="9" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote8" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote10" inherits="NuNSearchNoteTemplate" id="10" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote9" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote11" inherits="NuNSearchNoteTemplate" id="11" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote10" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote12" inherits="NuNSearchNoteTemplate" id="12" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote11" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote13" inherits="NuNSearchNoteTemplate" id="13" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote12" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote14" inherits="NuNSearchNoteTemplate" id="14" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote13" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote15" inherits="NuNSearchNoteTemplate" id="15" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote14" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote16" inherits="NuNSearchNoteTemplate" id="16" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote15" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote17" inherits="NuNSearchNoteTemplate" id="17" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote16" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote18" inherits="NuNSearchNoteTemplate" id="18" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote17" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote19" inherits="NuNSearchNoteTemplate" id="19" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote18" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote20" inherits="NuNSearchNoteTemplate" id="20" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote19" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote21" inherits="NuNSearchNoteTemplate" id="21" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote20" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote22" inherits="NuNSearchNoteTemplate" id="22" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote21" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNSearchNote23" inherits="NuNSearchNoteTemplate" id="23" hidden="true">
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchNote22" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="0" y="1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<ScrollFrame name="NuNSearchListScrollFrame" inherits="FauxScrollFrameTemplate">
				<Size>
					<AbsDimension x="296" y="354"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT" relativeTo="NuNSearchFrame">
						<Offset>
							<AbsDimension x="19" y="-75"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Layers>
					<Layer level="ARTWORK">
						<Texture file="Interface\PaperDollInfoFrame\UI-Character-ScrollBar">
							<Size>
								<AbsDimension x="31" y="256"/>
							</Size>
							<Anchors>
								<Anchor point="TOPLEFT" relativePoint="TOPRIGHT">
									<Offset>
										<AbsDimension x="0" y="5"/>
									</Offset>
								</Anchor>
							</Anchors>
						<TexCoords left="0" right="0.484375" top="0" bottom="1.0"/>
						</Texture>
						<Texture file="Interface\PaperDollInfoFrame\UI-Character-ScrollBar">
							<Size>
								<AbsDimension x="31" y="106"/>
							</Size>
							<Anchors>
								<Anchor point="BOTTOMLEFT" relativePoint="BOTTOMRIGHT">
									<Offset>
										<AbsDimension x="0" y="-2"/>
									</Offset>
								</Anchor>
							</Anchors>
							<TexCoords left="0.515625" right="1.0" top="0" bottom="0.4140625"/>
						</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnVerticalScroll>
						FauxScrollFrame_OnVerticalScroll(NUN_NOTE_HEIGHT, NuNSearch_Update);
					</OnVerticalScroll>
				</Scripts>
			</ScrollFrame>
		</Frames>
		<Scripts>
			<OnLoad>
				tinsert(UISpecialFrames,"NuNSearchFrame");
			</OnLoad>
			<OnHide>
				if ( NuN_ScaleFrame:IsVisible() ) then
					HideUIPanel(NuN_ScaleFrame);
				end
			</OnHide>
		</Scripts>
	</Frame>


<!-- Generic Note Frame -->
	<Frame name="NuNGNoteFrame" toplevel="true" enableMouse="true" movable="true" parent="UIParent" hidden="true">
		<TitleRegion setAllPoints="true"/>
		<Size>
			<AbsDimension x="640" y="512"/>
		</Size>
		<Anchors>
			<Anchor point="CENTER">
				<Offset>
					<AbsDimension x="250" y="-15"/>
				</Offset>
			</Anchor>
		</Anchors>
		<HitRectInsets>
			<AbsInset left="0" right="44" top="0" bottom="13"/>
		</HitRectInsets>
		<Layers>
			<Layer level="BACKGROUND">
				<Texture file="Interface\HelpFrame\HelpFrame-TopLeft">
					<Size>
						<AbsDimension x="256" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT"/>
					</Anchors>
				</Texture>
				<Texture file="Interface\HelpFrame\HelpFrame-Top">
					<Size>
						<AbsDimension x="256" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="256" y="0"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<Texture file="Interface\HelpFrame\HelpFrame-TopRight">
					<Size>
						<AbsDimension x="128" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="TOPRIGHT"/>
					</Anchors>
				</Texture>
				<Texture file="Interface\HelpFrame\HelpFrame-BotLeft">
					<Size>
						<AbsDimension x="256" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="BOTTOMLEFT"/>
					</Anchors>
				</Texture>
				<Texture file="Interface\HelpFrame\HelpFrame-Bottom">
					<Size>
						<AbsDimension x="256" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="BOTTOMLEFT">
							<Offset>
								<AbsDimension x="256" y="0"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<Texture file="Interface\HelpFrame\HelpFrame-BotRight">
					<Size>
						<AbsDimension x="128" y="256"/>
					</Size>
					<Anchors>
						<Anchor point="BOTTOMRIGHT"/>
					</Anchors>
				</Texture>
				<FontString name="NuNGTTCheckBoxLabel" inherits="GameFontNormalSmall" text="NUN_TT_PIN_TXT">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="48" y="-14"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="NuNGLevelCheckBoxLabel" inherits="GameFontNormalSmall" text="NUN_LEVEL_TXT">
					<Anchors>
						<Anchor point="TOPRIGHT">
							<Offset>
								<AbsDimension x="-114" y="-14"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
			<Layer level="ARTWORK">
				<Texture name="NuNGNoteFrameHeader" file="Interface\DialogFrame\UI-DialogBox-Header">
					<Size>
						<AbsDimension x="436" y="64"/>
					</Size>
					<Anchors>
						<Anchor point="TOP">
							<Offset>
								<AbsDimension x="-12" y="12"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<FontString name="NuNGNoteHeader" inherits="GameFontNormal">
					<Anchors>
						<Anchor point="TOP" relativeTo="NuNGNoteFrameHeader">
							<Offset>
								<AbsDimension x="0" y="-14"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
		</Layers>

<!-- f1fs1 -->
		<Frames>
		<!-- Window Close -->
			<Button name="NuNGNoteFrameCloseButton" inherits="UIPanelCloseButton">
				<Anchors>
					<Anchor point="TOPRIGHT">
						<Offset>
							<AbsDimension x="-42" y="-3"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNGNoteFrameScaleButton" inherits="UIPanelButtonTemplate2">
				<Size>
					<AbsDimension x="24" y="24"/>
				</Size>
		    		<Anchors>
		      			<Anchor point="RIGHT" relativeTo="NuNGNoteFrameCloseButton" relativePoint="LEFT">
		        			<Offset>
		          				<AbsDimension x="4" y="0"/>
		        			</Offset>
		      			</Anchor>
		    		</Anchors>
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="NuNGNoteFrameScaleIcon" file="Interface\AddOns\NotesUNeed\Artwork\NuNScale">
							<Size>
								<AbsDimension x="16" y="16"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnClick>
						NuNScaleFrameShow();
					</OnClick>
					<OnEnter>
						NuNScaleFrameButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
			<Button name="NuNGNoteFrameRunButton" inherits="NuNButtonTemplate" text="NUN_RUN">
				<Anchors>
					<Anchor point="TOP">
						<Offset>
							<AbsDimension x="-69" y="-28"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnClick>
						NuN_RunButton_OnClick();
					</OnClick>
					<OnEnter>
						NuN_RunButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
<!-- f1fs1f2 -->

			<CheckButton name="NuN_GTTCheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="18" y="18"/>
				</Size>
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="26" y="-12" />
						</Offset>
					</Anchor>
				</Anchors>
				<HitRectInsets>
					<AbsInset left="0" right="-60" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
						NuN_TTCheckBox_OnClick("General");
					</OnClick>
					<OnEnter>
						NuN_TTCheckBox_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</CheckButton>
			<CheckButton name="NuN_GLevel_CheckBox" inherits="UICheckButtonTemplate">
				<Size>
					<AbsDimension x="18" y="18"/>
				</Size>
				<Anchors>
					<Anchor point="TOPRIGHT">
						<Offset>
							<AbsDimension x="-193" y="-12" />
						</Offset>
					</Anchor>
				</Anchors>
				<HitRectInsets>
					<AbsInset left="0" right="-60" top="-10" bottom="0"/>
				</HitRectInsets>
				<Scripts>
					<OnClick>
						if ( this:GetChecked() ) then
							PlaySound("igMainMenuOptionCheckBoxOff");
						else
							PlaySound("igMainMenuOptionCheckBoxOn");
						end
					</OnClick>
					<OnEnter>
						NuN_Level_CheckBox_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</CheckButton>
			<Button name="NuNNPCTargetButton" inherits="NuNButtonTemplate" text="NUN_NPC_TARGET" enabled="true" hidden="true">
				<Anchors>
					<Anchor point="CENTER" relativePoint="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="64" y="32"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnClick>
						PlaySound("igMainMenuOption");
						NuN_NPCTarget();
					</OnClick>
					<OnEnter>
						NuN_NPCTargetButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
			<Frame name="NuNGTypeDropDown" inherits="UIDropDownMenuTemplate">
				<Size>
					<AbsDimension x="70" y="16"/>
				</Size>
				<Anchors>
					<Anchor point="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="98" y="14"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
						NuNGTypeDropDown_OnLoad();
					</OnLoad>
					<OnShow>
						NuNGTypeDropDown_OnLoad();
					</OnShow>
					<OnEnter>
						NuNGTypeDropDown_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
					<OnEvent>
					</OnEvent>
				</Scripts>
			</Frame>

			<Frame name="NuNGNoteInnerFrame" setAllPoints="true">
<!-- f1fs1f2fs2 -->
				<Frames>
<!-- f1fs1f2fs2f3 -->
					<Button name="NuNGNoteTitleButton">
						<Size>
							<AbsDimension x="548" y="32"/>
						</Size>
						<Anchors>
							<Anchor point="TOPLEFT">
								<Offset>
									<AbsDimension x="30" y="-50"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								NuN_GNoteTitle_OnClick();
							</OnClick>
						</Scripts>
						<HighlightTexture file="Interface\QuestFrame\UI-QuestTitleHighlight" alphaMode="ADD"/>
						<NormalText name="NuNGNoteTitleButtonText" inherits="GameFontNormal" justifyH="LEFT">
							<Size>
								<AbsDimension x="520" y="30"/>
							</Size>
							<Anchors>
								<Anchor point="LEFT">
									<Offset>
										<AbsDimension x="10" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</NormalText>
					</Button>

					<EditBox name="NuNGNoteTextBox" historyLines="0" letters="75">
						<Size>
							<AbsDimension x="548" y="32"/>
						</Size>
						<Anchors>
							<Anchor point="TOPLEFT">
								<Offset>
									<AbsDimension x="30" y="-50"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="BACKGROUND">
								<Texture name="NuNGNoteBoxLeft" file="Interface\ChatFrame\UI-ChatInputBorder-Left">
									<Size>
										<AbsDimension x="106" y="32"/>
									</Size>
									<Anchors>
										<Anchor point="LEFT">
											<Offset>
												<AbsDimension x="-10" y="0"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0" right="1.0" top="0" bottom="1.0"/>
								</Texture>
								<Texture name="NuNGNoteBoxRight" file="Interface\ChatFrame\UI-ChatInputBorder-Right">
									<Size>
										<AbsDimension x="75" y="32"/>
									</Size>
									<Anchors>
										<Anchor point="RIGHT">
											<Offset>
												<AbsDimension x="10" y="0"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0.70703125" right="1.0" top="0" bottom="1.0"/>
								</Texture>
								<Texture file="Interface\ChatFrame\UI-ChatInputBorder-Left">
									<Size>
										<AbsDimension x="5" y="32"/>
									</Size>
									<Anchors>
										<Anchor point="LEFT" relativeTo="NuNGNoteBoxLeft" relativePoint="RIGHT">
											<Offset>
												<AbsDimension x="0" y="0"/>
											</Offset>
										</Anchor>
										<Anchor point="RIGHT" relativeTo="NuNGNoteBoxRight" relativePoint="LEFT">
											<Offset>
												<AbsDimension x="0" y="0"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0.29296875" right="1.0" top="0" bottom="1.0"/>
								</Texture>
							</Layer>
						</Layers>
						<Scripts>
							<OnTextChanged>
								if ( ( this:GetText() == nil ) or ( this:GetText() == "" ) ) then
									NuNGNoteButtonSaveNote:Disable();
									NuNGNoteButtonDateStamp:Disable();
									NuNGNoteButtonLoc:Disable();
								elseif ( not NuNGNoteFrame.fromQuest ) then
									NuNGNoteButtonSaveNote:Enable();
									NuNGNoteButtonDateStamp:Enable();
									NuNGNoteButtonLoc:Enable();
								end
							</OnTextChanged>
							<OnEnterPressed>
								if ( ( this:GetText() == nil ) or ( this:GetText() == "" ) or ( NuNGNoteFrame.fromQuest ) ) then
								else
									this:ClearFocus();
									NuNGNoteTextBox:ClearFocus();
									NuNGNoteTextScroll:SetFocus();
									NuN_GNoteTitleSet();
								end
							</OnEnterPressed>
							<OnTabPressed>
								if ( ( this:GetText() == nil ) or ( this:GetText() == "" ) or ( NuNGNoteFrame.fromQuest ) ) then
								else
									this:ClearFocus();
									NuNGNoteTextBox:ClearFocus();
									NuNGNoteTextScroll:SetFocus();
									NuN_GNoteTitleSet();
								end
							</OnTabPressed>
							<OnEnter>
								NuN_GNoteTitle_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
							<OnEscapePressed>
								NuNGNote_HideFrame();
							</OnEscapePressed>
						</Scripts>
						<FontString inherits="ChatFontNormal"/>
					</EditBox>

					<Button name="NuNGOpenChatButton" inherits="UIPanelButtonTemplate2">
						<Size>
							<AbsDimension x="24" y="24"/>
						</Size>
						<Anchors>
							<Anchor point="TOPRIGHT">
								<Offset>
									<AbsDimension x="-68" y="-28"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								NuN_OpenChat("General");
							</OnClick>
							<OnEnter>
								NuN_OpenChat_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
						<NormalTexture file="Interface\ChatFrame\UI-ChatIcon-Chat-Up"/>
						<PushedTexture file="Interface\ChatFrame\UI-ChatIcon-Chat-Down"/>
						<DisabledTexture file="Interface\ChatFrame\UI-ChatIcon-Chat-Disabled"/>
						<HighlightTexture file="Interface\MainMenuBar\UI-MainMenu-ScrollUpButton-Highlight" alphaMode="ADD"/>
					</Button>
					<Button name="NuNGFrameHyperButton" inherits="UIPanelButtonTemplate2" text="[]">
						<Size>
							<AbsDimension x="24" y="24"/>
						</Size>
				    		<Anchors>
				      			<Anchor point="LEFT" relativeTo="NuNGOpenChatButton" relativePoint="RIGHT">
				        			<Offset>
				          				<AbsDimension x="-2" y="0"/>
				        			</Offset>
				      			</Anchor>
				    		</Anchors>
						<Scripts>
							<OnClick>
								NuN_HyperButton_OnClick("General");
							</OnClick>
							<OnEnter>
								NuN_HyperButton_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</Button>

					<Button name="NuNMapNoteButton" inherits="NuNButtonTemplate" text="NUN_MAPNOTES_TXT">
						<Size>
							<AbsDimension x="122" y="21"/>
						</Size>
				    		<Anchors>
				      			<Anchor point="RIGHT" relativePoint="LEFT" relativeTo="NuNGOpenChatButton">
				        			<Offset>
				          				<AbsDimension x="-5" y="0"/>
				        			</Offset>
				      			</Anchor>
				    		</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_MapNote("Note", "", "", nil);
							</OnClick>
							<OnEnter>
								NuNMapNoteButton_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</Button>

					<Frame name="NuNGNoteDivider" inherits="HelpFrameDividerTemplate">
						<Anchors>
							<Anchor point="TOPLEFT">
								<Offset>
									<AbsDimension x="12" y="-75"/>
								</Offset>
							</Anchor>
						</Anchors>
					</Frame>

<!-- f1fs1f2fs2/f3 -->
					<ScrollFrame name="NuNGNoteScrollFrame" inherits="UIPanelScrollFrameTemplate">
						<Size>
							<AbsDimension x="540" y="375"/>
						</Size>
						<Anchors>
							<Anchor point="TOPLEFT" relativeTo="NuNGNoteDivider" relativePoint="BOTTOMLEFT">
								<Offset>
									<AbsDimension x="8" y="4"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Layers>
							<Layer level="ARTWORK">
								<Texture name="NuNGNoteScrollBarTop" file="Interface\PaperDollInfoFrame\UI-Character-ScrollBar">
									<Size>
										<AbsDimension x="31" y="156"/>
									</Size>
									<Anchors>
										<Anchor point="TOPLEFT" relativePoint="TOPRIGHT">
											<Offset>
												<AbsDimension x="0" y="5"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0" right="0.484375" top="0" bottom="1.0"/>
								</Texture>
								<Texture name="NuNGNoteScrollBarBottom" file="Interface\PaperDollInfoFrame\UI-Character-ScrollBar">
									<Size>
										<AbsDimension x="31" y="106"/>
									</Size>
									<Anchors>
										<Anchor point="BOTTOMLEFT" relativePoint="BOTTOMRIGHT">
											<Offset>
												<AbsDimension x="0" y="-2"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0.515625" right="1.0" top="0" bottom="0.4140625"/>
								</Texture>
								<Texture name="NuNGNoteScrollBarMiddle" file="Interface\PaperDollInfoFrame\UI-Character-ScrollBar">
									<Size>
										<AbsDimension x="31" y="60"/>
									</Size>
									<Anchors>
										<Anchor point="TOP" relativeTo="NuNGNoteScrollBarTop" relativePoint="BOTTOM">
											<Offset>
												<AbsDimension x="0" y="0"/>
											</Offset>
										</Anchor>
										<Anchor point="BOTTOM" relativeTo="NuNGNoteScrollBarBottom" relativePoint="TOP">
											<Offset>
												<AbsDimension x="0" y="0"/>
											</Offset>
										</Anchor>
									</Anchors>
									<TexCoords left="0" right="0.484375" top=".75" bottom="1.0"/>
								</Texture>
								<FontString name="NuNGNoteTextLabel" inherits="GameFontNormalSmall" text="NUN_TXT_LABEL">
									<Anchors>
										<Anchor point="RIGHT" relativeTo="NuNGNoteScrollBarBottom" relativePoint="BOTTOMLEFT">
											<Offset>
												<AbsDimension x="-18" y="2"/>
											</Offset>
										</Anchor>
									</Anchors>
								</FontString>
							</Layer>
						</Layers>
						<ScrollChild>
							<EditBox name="NuNGNoteTextScroll" autoFocus="false" multiLine="true" letters="5060" text="NUN_BOILERPLATE">
								<Size>
									<AbsDimension x="541" y="234"/>
								</Size>
								<Scripts>
									<OnTextChanged>
										ScrollingEdit_OnTextChanged();
										NuN_TextWarning(this, "NuNGNoteTextLabel");
									</OnTextChanged>
									<OnCursorChanged>
										ScrollingEdit_OnCursorChanged(arg1, arg2, arg3, arg4);
									</OnCursorChanged>
									<OnUpdate>
										ScrollingEdit_OnUpdate();
									</OnUpdate>
									<OnEscapePressed>
										NuN_TextEscape(NuNGNoteFrame, NuNGNoteTextScroll);
									</OnEscapePressed>
								</Scripts>
								<FontString inherits="ChatFontNormal"/>
							</EditBox>
						</ScrollChild>
					</ScrollFrame>


				<!-- Buttons for Saving and Cancelling -->
					<Button name="NuNGNoteButtonSaveNote" inherits="NuNButtonTemplate" text="NUN_SAVE" enabled="false">
						<Anchors>
							<Anchor point="CENTER" relativePoint="BOTTOMRIGHT">
								<Offset>
									<AbsDimension x="-198" y="32"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuNGNoteFrame.confirmed = false;
								NuNGNote_WriteNote();
							</OnClick>
						</Scripts>
					</Button>
					<Button name="NuNGNoteButtonCancel" inherits="NuNButtonTemplate" text="NUN_CANCEL">
						<Anchors>
							<Anchor point="LEFT" relativePoint="RIGHT" relativeTo="NuNGNoteButtonSaveNote">
								<Offset>
									<AbsDimension x="6" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuNGNote_HideFrame();
							</OnClick>
						</Scripts>
					</Button>
					<Button name="NuNGNoteButtonDelete" inherits="NuNButtonTemplate" text="NUN_DELETE">
						<Anchors>
							<Anchor point="RIGHT" relativePoint="LEFT" relativeTo="NuNGNoteButtonSaveNote">
								<Offset>
									<AbsDimension x="-6" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_DeleteNote("General");
							</OnClick>
							<OnEnter>
								NuN_GNoteButtonDelete_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</Button>
					<Button name="NuNGNoteButtonOptions" inherits="NuNButtonTemplate" text="NUN_OPTIONS">
						<Anchors>
							<Anchor point="RIGHT" relativePoint="LEFT" relativeTo="NuNGNoteButtonDelete">
								<Offset>
									<AbsDimension x="-6" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuN_Options();
							</OnClick>
						</Scripts>
					</Button>
					<Button name="NuNGNoteButtonDateStamp" inherits="NuNButtonTemplate" text="NUN_STAMP">
						<Anchors>
							<Anchor point="TOPLEFT">
								<Offset>
									<AbsDimension x="19" y="-28"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuNGNote_DateStamp();
							</OnClick>
						</Scripts>
					</Button>
					<Button name="NuNGNoteButtonLoc" inherits="NuNButtonTemplate" text="NUN_LOC">
						<Anchors>
							<Anchor point="LEFT" relativeTo="NuNGNoteButtonDateStamp" relativePoint="RIGHT">
								<Offset>
									<AbsDimension x="6" y="0"/>
								</Offset>
							</Anchor>
						</Anchors>
						<Scripts>
							<OnClick>
								PlaySound("igMainMenuOption");
								NuNGNote_Loc();
							</OnClick>
							<OnEnter>
								NuN_LocButton_OnEnter();
							</OnEnter>
							<OnLeave>
								NuN_TTButton_OnLeave();
							</OnLeave>
						</Scripts>
					</Button>

				</Frames>
			</Frame>
		</Frames>
		<Scripts>
			<OnLoad>
				tinsert(UISpecialFrames,"NuNGNoteFrame");
				this.type = 1;
				this.confirmed = false;
				this.fromQuest = nil;
				this.qText = nil;
			</OnLoad>
			<OnHide>
				NuN_SaveLast("General");
				if ( NuN_ChatFrame:IsVisible() ) then
					HideUIPanel(NuN_ChatFrame);
				end
				if ( NuN_ConfirmFrame:IsVisible() ) then
					HideUIPanel(NuN_ConfirmFrame);
				end
				if ( NuN_ScaleFrame:IsVisible() ) then
					HideUIPanel(NuN_ScaleFrame);
				end
				if ( ( NuNcDeleteFrame:IsVisible() ) and ( NuNcDeleteFrame.type == "General" ) ) then
					HideUIPanel(NuNcDeleteFrame);
				end
				this.fromQuest = nil;
			</OnHide>
		</Scripts>
	</Frame>



	<Frame name="NuNMicroFrame" parent="UIParent" toplevel="true" frameStrata="LOW" enableMouse="true" movable="true" hidden="false">
		<TitleRegion setAllPoints="true"/>
		<Size>
      			<AbsDimension x="97" y="29"/>
    		</Size>
    		<Anchors>
      			<Anchor point="TOP" relativePoint="TOP">
        			<Offset>
          				<AbsDimension x="0" y="-30"/>
        			</Offset>
      			</Anchor>
    		</Anchors>
    		<Scripts>
    			<OnShow>
    				NuN_CheckTarget();
    			</OnShow>
    			<OnUpdate>
    				NuN_OnUpdate(arg1);
    			</OnUpdate>
    		</Scripts>
	    	<Frames>
		    	<Frame name="NuNMicroBorder" setAllPoints="true" frameStrata="BACKGROUND" hidden="true">
				<Backdrop bgFile="Interface\Tooltips\UI-Tooltip-Background" edgeFile="Interface\Tooltips\UI-Tooltip-Border" tile="true">
					<EdgeSize>
						<AbsValue val="6"/>
					</EdgeSize>
					<TileSize>
						<AbsValue val="8"/>
					</TileSize>
					<BackgroundInsets>
						<AbsInset left="6" right="6" top="6" bottom="6"/>
					</BackgroundInsets>
				</Backdrop>
				<Scripts>
					<OnLoad>
						this:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b);
						this:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
						this:SetFrameLevel(this:GetFrameLevel() - 1);
					</OnLoad>
				</Scripts>
		    	</Frame>
			<Button name="NuNMicroOptionsButton" inherits="UIPanelButtonTemplate2">
				<Size>
					<AbsDimension x="24" y="24"/>
				</Size>
		    		<Anchors>
		      			<Anchor point="LEFT">
		        			<Offset>
		          				<AbsDimension x="5" y="0"/>
		        			</Offset>
		      			</Anchor>
		    		</Anchors>
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="NuNMicroOptionsIcon1" file="Interface\Buttons\UI-CheckBox-Up">
							<Size>
								<AbsDimension x="14" y="14"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
						<Texture name="NuNMicroOptionsIcon2" file="Interface\Buttons\UI-CheckBox-Check">
							<Size>
								<AbsDimension x="14" y="14"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnClick>
						NuN_Options();
					</OnClick>
					<OnEnter>
						NuN_OptionsButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
			<Button name="NuNMicroBrowseButton" inherits="UIPanelButtonTemplate2">
				<Size>
					<AbsDimension x="24" y="24"/>
				</Size>
		    		<Anchors>
		      			<Anchor point="LEFT" relativePoint="RIGHT" relativeTo="NuNMicroOptionsButton">
		        			<Offset>
		          				<AbsDimension x="-3" y="0"/>
		        			</Offset>
		      			</Anchor>
		    		</Anchors>
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="NuNMicroBrowseIcon" file="Interface\AddOns\NotesUNeed\Artwork\MagGlass">
							<Size>
								<AbsDimension x="12" y="12"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnClick>
						NuN_DisplayAll();
					</OnClick>
					<OnEnter>
						NuN_BrowseButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
			<Button name="NuNMicroContactButton" inherits="UIPanelButtonTemplate2">
				<Size>
					<AbsDimension x="24" y="24"/>
				</Size>
		    		<Anchors>
		      			<Anchor point="LEFT" relativePoint="RIGHT" relativeTo="NuNMicroBrowseButton">
		        			<Offset>
		          				<AbsDimension x="-3" y="0"/>
		        			</Offset>
		      			</Anchor>
		    		</Anchors>
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="NuNMicroContactDIcon" file="Interface\AddOns\NotesUNeed\Artwork\Disabled" hidden="true">
							<Size>
								<AbsDimension x="16" y="16"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
		     			</Layer>
		     			<Layer level="OVERLAY">
						<Texture name="NuNMicroContactIcon1" file="Interface\AddOns\NotesUNeed\Artwork\tAlliance">
							<Size>
								<AbsDimension x="14" y="14"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER">
									<Offset>
										<AbsDimension x="-2" y="2"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
						<Texture name="NuNMicroContactIcon2" file="Interface\AddOns\NotesUNeed\Artwork\tHorde">
							<Size>
								<AbsDimension x="14" y="14"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER">
									<Offset>
										<AbsDimension x="3" y="-4"/>
									</Offset>
								</Anchor>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnClick>
						NuN_FromTarget(false);
					</OnClick>
					<OnEnter>
						NuN_ContactButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
			<Button name="NuNMicroGeneralButton" inherits="UIPanelButtonTemplate2">
				<Size>
					<AbsDimension x="24" y="24"/>
				</Size>
		    		<Anchors>
		      			<Anchor point="LEFT" relativePoint="RIGHT" relativeTo="NuNMicroContactButton">
		        			<Offset>
		          				<AbsDimension x="-3" y="0"/>
		        			</Offset>
		      			</Anchor>
		    		</Anchors>
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="NuNMicroGeneralIcon" file="Interface\Buttons\UI-GuildButton-PublicNote-Up">
							<Size>
								<AbsDimension x="10" y="10"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnClick>
						NuN_ShowNewGNote();
					</OnClick>
					<OnEnter>
						NuN_GNoteButton_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
				</Scripts>
			</Button>
		</Frames>
	</Frame>

	<Frame name="NuN_TooltipControl" parent="GameTooltip" hidden="false">
		<Scripts>
 			<OnShow>
				NuN_GameTooltip_OnShow();
			</OnShow>
			<OnHide>
				NuN_GameTooltip_OnHide();
			</OnHide>
		</Scripts>
	</Frame>

	<GameTooltip name="NuN_Tooltip" frameStrata="TOOLTIP" parent="UIParent" hidden="true" inherits="GameTooltipTemplate">
		<Scripts>
			<OnLoad>
				this.fadeStartTime = 0.0;
				this.fadeHoldTime = 1.0;
				this.fadeOutTime = 1.0;
				this:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b);
				this:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
			</OnLoad>
			<OnShow>
				this.fadeStartTime = 0;
			</OnShow>
			<OnUpdate>
				NuN_Tooltip_OnUpdate();
			</OnUpdate>
		</Scripts>
	</GameTooltip>

	<Frame name="NuN_PinnedTooltipControl" parent="ItemRefTooltip" toplevel="true" frameStrata="HIGH" hidden="false">
		<Scripts>
 			<OnShow>
				NuN_ItemRefTooltip_OnShow();
			</OnShow>
			<OnHide>
				NuN_ItemRefTooltip_OnHide();
			</OnHide>
		</Scripts>
	</Frame>

	<GameTooltip name="NuN_PinnedTooltip" inherits="GameTooltipTemplate" parent="UIParent" enableMouse="true" toplevel="true" movable="true" frameStrata="HIGH" hidden="true">
		<Size>
			<AbsDimension x="128" y="64"/>
		</Size>
		<Anchors>
			<Anchor point="TOP">
				<Offset>
					<AbsDimension x="0" y="-90"/>
				</Offset>
			</Anchor>
		</Anchors>
		<Frames>
			<Button name="NuN_PinnedCloseButton">
				<Size>
					<AbsDimension x="32" y="32"/>
				</Size>
				<Anchors>
					<Anchor point="TOPRIGHT">
						<Offset>
							<AbsDimension x="1" y="0"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnClick>
						HideUIPanel(NuN_PinnedTooltip);
					</OnClick>
				</Scripts>
				<NormalTexture file="Interface\Buttons\UI-Panel-MinimizeButton-Up"/>
				<PushedTexture file="Interface\Buttons\UI-Panel-MinimizeButton-Down"/>
				<HighlightTexture file="Interface\Buttons\UI-Panel-MinimizeButton-Highlight" alphaMode="ADD"/>
			</Button>
			<Button name="NuN_PinnedEditButton" inherits="UIPanelButtonTemplate2">
				<Size>
					<AbsDimension x="24" y="24"/>
				</Size>
		    		<Anchors>
		      			<Anchor point="RIGHT" relativePoint="LEFT" relativeTo="NuN_PinnedCloseButton">
		        			<Offset>
		          				<AbsDimension x="6" y="0"/>
		        			</Offset>
		      			</Anchor>
		    		</Anchors>
				<Layers>
					<Layer level="ARTWORK">
						<Texture name="NuN_PinnedTTEditIcon" file="Interface\Buttons\UI-GuildButton-PublicNote-Up">
							<Size>
								<AbsDimension x="10" y="10"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
				<Scripts>
					<OnClick>
						NuN_PinnedTT_OnClick();
					</OnClick>
					<OnEnter>
						NuN_PinnedTT_OnEnter();
					</OnEnter>
					<OnLeave>
						NuN_TTButton_OnLeave();
					</OnLeave>
					<OnHide>
						NuN_PinnedTT_OnHide();
					</OnHide>
				</Scripts>
			</Button>
		</Frames>
		<Scripts>
			<OnLoad>
				this:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b);
				this:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
				this:RegisterForDrag("LeftButton");
				this.type = "Empty";
				this.subType = "Empty";
			</OnLoad>
			<OnDragStart>
				this:StartMoving();
			</OnDragStart>
			<OnDragStop>
				this:StopMovingOrSizing();
				ValidateFramePosition(this);
				NuN_FlagMoved();
			</OnDragStop>
			<OnShow>
			</OnShow>
		</Scripts>
	</GameTooltip>

	<Frame name="NuN_MapTooltipControl" parent="WorldMapTooltip" hidden="false">
		<Scripts>
			<OnShow>
				NuN_WorldMapTooltip_OnShow();
			</OnShow>
			<OnHide>
				NuN_WorldMapTooltip_OnHide();
			</OnHide>
		</Scripts>
	</Frame>

	<GameTooltip name="NuN_MapTooltip" frameStrata="FULLSCREEN_DIALOG" parent="WorldMapFrame" hidden="true" inherits="GameTooltipTemplate">
		<Scripts>
			<OnLoad>
				this:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b);
				this:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
			</OnLoad>
		</Scripts>
	</GameTooltip>




<!-- Buttons integrated in to the Original Friends/Ignores/Guild Panels -->



	<Button name="NuN_FriendNotesButton1" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameFriendButton1" id="1" hidden="false"/>
	<Button name="NuN_FriendNotesButton2" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameFriendButton2" id="2" hidden="false"/>
	<Button name="NuN_FriendNotesButton3" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameFriendButton3" id="3" hidden="false"/>
	<Button name="NuN_FriendNotesButton4" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameFriendButton4" id="4" hidden="false"/>
	<Button name="NuN_FriendNotesButton5" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameFriendButton5" id="5" hidden="false"/>
	<Button name="NuN_FriendNotesButton6" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameFriendButton6" id="6" hidden="false"/>
	<Button name="NuN_FriendNotesButton7" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameFriendButton7" id="7" hidden="false"/>
	<Button name="NuN_FriendNotesButton8" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameFriendButton8" id="8" hidden="false"/>
	<Button name="NuN_FriendNotesButton9" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameFriendButton9" id="9" hidden="false"/>
	<Button name="NuN_FriendNotesButton10" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameFriendButton10" id="10" hidden="false"/>

	<Button name="NuN_IgnoreNotesButton1" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton1" id="1" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton2" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton2" id="2" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton3" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton3" id="3" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton4" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton4" id="4" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton5" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton5" id="5" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton6" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton6" id="6" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton7" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton7" id="7" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton8" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton8" id="8" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton9" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton9" id="9" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton10" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton10" id="10" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton11" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton11" id="11" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton12" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton12" id="12" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton13" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton13" id="13" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton14" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton14" id="14" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton15" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton15" id="15" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton16" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton16" id="16" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton17" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton17" id="17" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton18" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton18" id="18" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton19" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton19" id="19" hidden="false"/>
	<Button name="NuN_IgnoreNotesButton20" inherits="NuN_NoteButtonTemplate" parent="FriendsFrameIgnoreButton20" id="20" hidden="false"/>

	<Button name="NuN_WhoNotesButton1" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton1" id="1" hidden="false"/>
	<Button name="NuN_WhoNotesButton2" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton2" id="2" hidden="false"/>
	<Button name="NuN_WhoNotesButton3" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton3" id="3" hidden="false"/>
	<Button name="NuN_WhoNotesButton4" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton4" id="4" hidden="false"/>
	<Button name="NuN_WhoNotesButton5" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton5" id="5" hidden="false"/>
	<Button name="NuN_WhoNotesButton6" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton6" id="6" hidden="false"/>
	<Button name="NuN_WhoNotesButton7" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton7" id="7" hidden="false"/>
	<Button name="NuN_WhoNotesButton8" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton8" id="8" hidden="false"/>
	<Button name="NuN_WhoNotesButton9" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton9" id="9" hidden="false"/>
	<Button name="NuN_WhoNotesButton10" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton10" id="10" hidden="false"/>
	<Button name="NuN_WhoNotesButton11" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton11" id="11" hidden="false"/>
	<Button name="NuN_WhoNotesButton12" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton12" id="12" hidden="false"/>
	<Button name="NuN_WhoNotesButton13" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton13" id="13" hidden="false"/>
	<Button name="NuN_WhoNotesButton14" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton14" id="14" hidden="false"/>
	<Button name="NuN_WhoNotesButton15" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton15" id="15" hidden="false"/>
	<Button name="NuN_WhoNotesButton16" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton16" id="16" hidden="false"/>
	<Button name="NuN_WhoNotesButton17" inherits="NuN_NoteButtonTemplate2" parent="WhoFrameButton17" id="17" hidden="false"/>

	<Button name="NuN_GuildNotesButton1" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton1" id="1" hidden="false"/>
	<Button name="NuN_GuildNotesButton2" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton2" id="2" hidden="false"/>
	<Button name="NuN_GuildNotesButton3" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton3" id="3" hidden="false"/>
	<Button name="NuN_GuildNotesButton4" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton4" id="4" hidden="false"/>
	<Button name="NuN_GuildNotesButton5" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton5" id="5" hidden="false"/>
	<Button name="NuN_GuildNotesButton6" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton6" id="6" hidden="false"/>
	<Button name="NuN_GuildNotesButton7" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton7" id="7" hidden="false"/>
	<Button name="NuN_GuildNotesButton8" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton8" id="8" hidden="false"/>
	<Button name="NuN_GuildNotesButton9" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton9" id="9" hidden="false"/>
	<Button name="NuN_GuildNotesButton10" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton10" id="10" hidden="false"/>
	<Button name="NuN_GuildNotesButton11" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton11" id="11" hidden="false"/>
	<Button name="NuN_GuildNotesButton12" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton12" id="12" hidden="false"/>
	<Button name="NuN_GuildNotesButton13" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameButton13" id="13" hidden="false"/>

	<Button name="NuN_GuildSNotesButton1" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton1" id="1" hidden="false"/>
	<Button name="NuN_GuildSNotesButton2" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton2" id="2" hidden="false"/>
	<Button name="NuN_GuildSNotesButton3" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton3" id="3" hidden="false"/>
	<Button name="NuN_GuildSNotesButton4" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton4" id="4" hidden="false"/>
	<Button name="NuN_GuildSNotesButton5" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton5" id="5" hidden="false"/>
	<Button name="NuN_GuildSNotesButton6" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton6" id="6" hidden="false"/>
	<Button name="NuN_GuildSNotesButton7" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton7" id="7" hidden="false"/>
	<Button name="NuN_GuildSNotesButton8" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton8" id="8" hidden="false"/>
	<Button name="NuN_GuildSNotesButton9" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton9" id="9" hidden="false"/>
	<Button name="NuN_GuildSNotesButton10" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton10" id="10" hidden="false"/>
	<Button name="NuN_GuildSNotesButton11" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton11" id="11" hidden="false"/>
	<Button name="NuN_GuildSNotesButton12" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton12" id="12" hidden="false"/>
	<Button name="NuN_GuildSNotesButton13" inherits="NuN_NoteButtonTemplate3" parent="GuildFrameGuildStatusButton13" id="13" hidden="false"/>

	<Button name="NuN_QuestNotesButton1" inherits="NuN_NoteButtonTemplate4" parent="QuestLogTitle1" id="1" hidden="false"/>
	<Button name="NuN_QuestNotesButton2" inherits="NuN_NoteButtonTemplate4" parent="QuestLogTitle2" id="2" hidden="false"/>
	<Button name="NuN_QuestNotesButton3" inherits="NuN_NoteButtonTemplate4" parent="QuestLogTitle3" id="3" hidden="false"/>
	<Button name="NuN_QuestNotesButton4" inherits="NuN_NoteButtonTemplate4" parent="QuestLogTitle4" id="4" hidden="false"/>
	<Button name="NuN_QuestNotesButton5" inherits="NuN_NoteButtonTemplate4" parent="QuestLogTitle5" id="5" hidden="false"/>
	<Button name="NuN_QuestNotesButton6" inherits="NuN_NoteButtonTemplate4" parent="QuestLogTitle6" id="6" hidden="false"/>


	<Frame name="NuN_FFButton" parent="FriendsFrame" inherits="UIPanelButtonTemplate">
		<Size>
			<AbsDimension x="32" y="32"/>
		</Size>
		<Anchors>
			<Anchor point="TOPLEFT">
				<Offset>
					<AbsDimension x="57" y="-9"/>
				</Offset>
			</Anchor>
		</Anchors>
		<Frames>
			<Frame name="NuN_FFButton_State" setAllPoints="true">
				<Layers>
					<Layer level="BACKGROUND">
						<Texture name="NuN_FFButton_StateHUp" file="Interface\AddOns\NotesUNeed\Artwork\NuN-HButton-Up" hidden="true">
							<Size>
								<AbsDimension x="32" y="32"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="NuN_FFButton_StateHDown" file="Interface\Addons\NotesUNeed\Artwork\NuN-HButton-Down" hidden="true">
							<Size>
								<AbsDimension x="32" y="32"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
						<Texture name="NuN_FFButton_StateAUp" file="Interface\AddOns\NotesUNeed\Artwork\NuN-AButton-Up" hidden="true">
							<Size>
								<AbsDimension x="32" y="32"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
		     		           	<Texture name="NuN_FFButton_StateADown" file="Interface\Addons\NotesUNeed\Artwork\NuN-AButton-Down" hidden="true">
							<Size>
								<AbsDimension x="32" y="32"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
			</Frame>
			<Frame name="NuN_FFButton_Highlight" setAllPoints="true">
				<Layers>
					<Layer level="ARTWORK">
		     		           	<Texture name="NuN_FFButton_StateLit" file="Interface\Minimap\UI-Minimap-ZoomButton-Highlight" alphaMode="ADD" hidden="true">
							<Size>
								<AbsDimension x="32" y="32"/>
							</Size>
							<Anchors>
								<Anchor point="CENTER"/>
							</Anchors>
		     		           	</Texture>
					</Layer>
				</Layers>
			</Frame>
		</Frames>
		<Scripts>
			<OnShow>
				NuN_FFButton_OnShow();
			</OnShow>
			<OnMouseDown>
				NuN_FFButton_Down();
			</OnMouseDown>
			<OnMouseUp>
				NuN_FFButton_Up();
			</OnMouseUp>
			<OnEnter>
				NuN_FFButton_OnEnter();
			</OnEnter>
			<OnLeave>
				NuN_FFButton_OnLeave();
			</OnLeave>
		</Scripts>
	</Frame>

	<Frame name="NuN_ScaleFrame" parent="UIParent" toplevel="true" frameStrata="FULLSCREEN" hidden="true">
		<Size>
			<AbsDimension x="240" y="170" />
		</Size>
		<Anchors>
			<Anchor point="CENTER">
				<Offset>
					<AbsDimension x="0" y="0"/>
				</Offset>
			</Anchor>
		</Anchors>
		<Backdrop bgFile="Interface\Tooltips\UI-Tooltip-Background" edgeFile="Interface\Tooltips\UI-Tooltip-Border" tile="true">
			<EdgeSize>
				<AbsValue val="16"/>
			</EdgeSize>
			<TileSize>
				<AbsValue val="16"/>
			</TileSize>
			<BackgroundInsets>
				<AbsInset left="5" right="5" top="5" bottom="5"/>
			</BackgroundInsets>
		</Backdrop>
		<Layers>
			<Layer>
				<FontString name="FrameScaleLabel" inherits="GameFontNormalSmall" text="NUN_FRAME_SCALE_TXT">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="26" y="-10" />
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="FontScaleLabel" inherits="GameFontNormalSmall" text="NUN_FONT_SCALE_TXT">
					<Anchors>
						<Anchor point="TOPLEFT">
							<Offset>
								<AbsDimension x="92" y="-10" />
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
				<FontString name="MapFontScaleLabel" inherits="GameFontNormalSmall" text="NUN_MAPNOTES_TXT">
					<Anchors>
						<Anchor point="TOPRIGHT">
							<Offset>
								<AbsDimension x="-17" y="-10" />
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
		</Layers>
		<Frames>
			<Slider name="NuNFrameScaleSlider" orientation="VERTICAL" enableMouse="true">
				<Size>
					<AbsDimension x="10" y="100"/>
				</Size>
				<HitRectInsets>
					<AbsInset left="-10" right="-10" top="0" bottom="0"/>
				</HitRectInsets>
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="40" y="-40"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Backdrop bgFile="Interface\Buttons\UI-SliderBar-Background" edgeFile="Interface\Buttons\UI-SliderBar-Border" tile="true">
					<EdgeSize>
						<AbsValue val="8"/>
					</EdgeSize>
					<TileSize>
						<AbsValue val="8"/>
					</TileSize>
					<BackgroundInsets>
						<AbsInset left="6" right="6" top="3" bottom="3"/>
					</BackgroundInsets>
				</Backdrop>
				<Layers>
					<Layer level="ARTWORK">
						<FontString name="NuNFrameScaleSliderCurrent" inherits="GameFontGreenSmall">
							<Anchors>
								<Anchor point="LEFT" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="2" y="0" />
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
						<FontString name="NuNFrameScaleSliderLow" inherits="GameFontHighlightSmall" text="NUN_FRAMESCALE_MAX_TXT">
							<Anchors>
								<Anchor point="BOTTOM" relativePoint="TOP">
									<Offset>
										<AbsDimension x="0" y="3"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
						<FontString name="NuNFrameScaleSliderHigh" inherits="GameFontHighlightSmall" text="NUN_FRAMESCALE_MIN_TXT">
							<Anchors>
								<Anchor point="TOP" relativePoint="BOTTOM">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<ThumbTexture name="NuNFrameScaleSliderThumb" file="Interface\Buttons\UI-SliderBar-Button-Vertical">
					<Size>
						<AbsDimension x="32" y="32"/>
					</Size>
				</ThumbTexture>
				<Scripts>
					<OnShow>
						NuNFrameScaleSlider_OnShow();
					</OnShow>
					<OnValueChanged>
						NuNFrameScaleSlider_OnValueChanged();
					</OnValueChanged>
				</Scripts>
			</Slider>
			<Slider name="NuNFontScaleSlider" orientation="VERTICAL" enableMouse="true">
				<Size>
					<AbsDimension x="10" y="100"/>
				</Size>
				<HitRectInsets>
					<AbsInset left="-10" right="-10" top="0" bottom="0"/>
				</HitRectInsets>
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="110" y="-40"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Backdrop bgFile="Interface\Buttons\UI-SliderBar-Background" edgeFile="Interface\Buttons\UI-SliderBar-Border" tile="true">
					<EdgeSize>
						<AbsValue val="8"/>
					</EdgeSize>
					<TileSize>
						<AbsValue val="8"/>
					</TileSize>
					<BackgroundInsets>
						<AbsInset left="6" right="6" top="3" bottom="3"/>
					</BackgroundInsets>
				</Backdrop>
				<Layers>
					<Layer level="ARTWORK">
						<FontString name="NuNFontScaleSliderCurrent" inherits="GameFontGreenSmall">
							<Anchors>
								<Anchor point="LEFT" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="2" y="0" />
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
						<FontString name="NuNFontScaleSliderLow" inherits="GameFontHighlightSmall" text="NUN_TT_FONTSCALE_MAX_TXT">
							<Anchors>
								<Anchor point="BOTTOM" relativePoint="TOP">
									<Offset>
										<AbsDimension x="0" y="3"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
						<FontString name="NuNFontScaleSliderHigh" inherits="GameFontHighlightSmall" text="NUN_TT_FONTSCALE_MIN_TXT">
							<Anchors>
								<Anchor point="TOP" relativePoint="BOTTOM">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<ThumbTexture name="NuNFontScaleSliderThumb" file="Interface\Buttons\UI-SliderBar-Button-Vertical">
					<Size>
						<AbsDimension x="32" y="32"/>
					</Size>
				</ThumbTexture>
				<Scripts>
					<OnShow>
						NuNFontScaleSlider_OnShow();
					</OnShow>
					<OnValueChanged>
						NuNFontScaleSlider_OnValueChanged();
					</OnValueChanged>
				</Scripts>
			</Slider>
			<Slider name="NuNMapFontScaleSlider" orientation="VERTICAL" enableMouse="true">
				<Size>
					<AbsDimension x="10" y="100"/>
				</Size>
				<HitRectInsets>
					<AbsInset left="-10" right="-10" top="0" bottom="0"/>
				</HitRectInsets>
				<Anchors>
					<Anchor point="TOPRIGHT">
						<Offset>
							<AbsDimension x="-40" y="-40"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Backdrop bgFile="Interface\Buttons\UI-SliderBar-Background" edgeFile="Interface\Buttons\UI-SliderBar-Border" tile="true">
					<EdgeSize>
						<AbsValue val="8"/>
					</EdgeSize>
					<TileSize>
						<AbsValue val="8"/>
					</TileSize>
					<BackgroundInsets>
						<AbsInset left="6" right="6" top="3" bottom="3"/>
					</BackgroundInsets>
				</Backdrop>
				<Layers>
					<Layer level="ARTWORK">
						<FontString name="NuNMapFontScaleSliderCurrent" inherits="GameFontGreenSmall">
							<Anchors>
								<Anchor point="LEFT" relativePoint="RIGHT">
									<Offset>
										<AbsDimension x="2" y="0" />
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
						<FontString name="NuNMapFontScaleSliderLow" inherits="GameFontHighlightSmall" text="NUN_TT_MAPFONTSCALE_MAX_TXT">
							<Anchors>
								<Anchor point="BOTTOM" relativePoint="TOP">
									<Offset>
										<AbsDimension x="0" y="3"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
						<FontString name="NuNMapFontScaleSliderHigh" inherits="GameFontHighlightSmall" text="NUN_TT_MAPFONTSCALE_MIN_TXT">
							<Anchors>
								<Anchor point="TOP" relativePoint="BOTTOM">
									<Offset>
										<AbsDimension x="0" y="0"/>
									</Offset>
								</Anchor>
							</Anchors>
						</FontString>
					</Layer>
				</Layers>
				<ThumbTexture name="NuNMapFontScaleSliderThumb" file="Interface\Buttons\UI-SliderBar-Button-Vertical">
					<Size>
						<AbsDimension x="32" y="32"/>
					</Size>
				</ThumbTexture>
				<Scripts>
					<OnShow>
						NuNMapFontScaleSlider_OnShow();
					</OnShow>
					<OnValueChanged>
						NuNMapFontScaleSlider_OnValueChanged();
					</OnValueChanged>
				</Scripts>
			</Slider>
		</Frames>
		<Scripts>
			<OnLoad>
				this:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b);
				this:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
			</OnLoad>
		</Scripts>
	</Frame>

	<Frame name="NuNcDeleteFrame" toplevel="true" hidden="true" parent="UIParent" frameStrata="FULLSCREEN" enableMouse="true">
		<Size>
			<AbsDimension x="400" y="125"/>
		</Size>
		<Anchors>
			<Anchor point="CENTER"/>
		</Anchors>
		<Backdrop bgFile="Interface\AddOns\NotesUNeed\Artwork\Texture1" edgeFile="Interface\DialogFrame\UI-DialogBox-Border" tile="true">
			<BackgroundInsets>
				<AbsInset left="11" right="12" top="12" bottom="11"/>
			</BackgroundInsets>
			<TileSize>
				<AbsValue val="32"/>
			</TileSize>
			<EdgeSize>
				<AbsValue val="32"/>
			</EdgeSize>
		</Backdrop>
		<Layers>
			<Layer level="ARTWORK">
				<Texture name="NuNcDeleteHeader" file="Interface\DialogFrame\UI-DialogBox-Header">
					<Size>
						<AbsDimension x="230" y="60"/>
					</Size>
					<Anchors>
						<Anchor point="TOP">
							<Offset>
								<AbsDimension x="0" y="12"/>
							</Offset>
						</Anchor>
					</Anchors>
				</Texture>
				<FontString inherits="GameFontNormal" text="NUN_DELETE">
					<Anchors>
						<Anchor point="CENTER" relativeTo="NuNcDeleteHeader">
							<Offset>
								<AbsDimension x="0" y="12"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
			<Layer level="BACKGROUND">
				<FontString name="NuNcDeleteLabel" inherits="GameFontHighlight" text="(PLACE HOLDER)">
					<Anchors>
						<Anchor point="TOP">
							<Offset>
								<AbsDimension x="0" y="-33"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
		</Layers>
		<Frames>
			<EditBox name="NuNcDeleteGhostTextBox" autoFocus="true" historyLines="0" letters="0" hidden="false">
				<Anchors>
					<Anchor point="TOPLEFT">
						<Offset>
							<AbsDimension x="0" y="0"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnEnterPressed>
						NuNcDeleteButton_OnClick();
					</OnEnterPressed>
					<OnEscapePressed>
						HideUIPanel(NuNcDeleteFrame);
					</OnEscapePressed>
				</Scripts>
			</EditBox>

			<Button name="NuNcDeleteButton" inherits="UIPanelButtonTemplate" text="NUN_DELETE">
				<Size>
					<AbsDimension x="90" y="21"/>
				</Size>
				<Anchors>
					<Anchor point="BOTTOMLEFT">
						<Offset>
							<AbsDimension x="50" y="22"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						NuNcDeleteButton_OnClick();
					</OnClick>
				</Scripts>
			</Button>

			<Button name="NuNcDeleteCloseButton" inherits="NuNOptionsButtonTemplate" text="NUN_CANCEL">
				<Size>
					<AbsDimension x="90" y="21"/>
				</Size>
				<Anchors>
					<Anchor point="BOTTOMRIGHT">
						<Offset>
							<AbsDimension x="-49" y="22"/>
						</Offset>
					</Anchor>
				</Anchors>
				<Scripts>
					<OnLoad>
					</OnLoad>
					<OnClick>
						PlaySound("igMainMenuOption");
						HideUIPanel(NuNcDeleteFrame);
					</OnClick>
				</Scripts>
			</Button>
		</Frames>
	</Frame>


	<Frame name="NuNPopup" frameStrata="FULLSCREEN_DIALOG" hidden="true" parent="WorldMapFrame">
		<Backdrop bgFile="Interface\Tooltips\UI-Tooltip-Background" edgeFile="Interface\Tooltips\UI-Tooltip-Border" tile="true">
			<BackgroundInsets>
				<AbsInset left="5" right="5" top="5" bottom="5"/>
			</BackgroundInsets>
<!--    Interface\DialogFrame\UI-DialogBox-Background	-->
			<TileSize>
				<AbsValue val="16"/>
			</TileSize>
			<EdgeSize>
				<AbsValue val="16"/>
			</EdgeSize>
		</Backdrop>
		<Layers>
			<Layer level="ARTWORK">
				<FontString name="NuNPopupTitle" inherits="GameFontHighlight" text="NUN_POPUP_TITLE">
					<Anchors>
						<Anchor point="TOP">
							<Offset>
								<AbsDimension x="0" y="-12"/>
							</Offset>
						</Anchor>
					</Anchors>
				</FontString>
			</Layer>
		</Layers>
		<Frames>
			<Button name="NuNPopupButton1" inherits="NuNPopupButtonTemplate" id="1">
				<Anchors>
					<Anchor point="TOP" relativeTo="NuNPopupTitle" relativePoint="BOTTOM">
						<Offset>
							<AbsDimension x="0" y="-6"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNPopupButton2" inherits="NuNPopupButtonTemplate" id="2">
				<Anchors>
					<Anchor point="TOP" relativeTo="NuNPopupButton1" relativePoint="BOTTOM">
						<Offset>
							<AbsDimension x="0" y="-1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNPopupButton3" inherits="NuNPopupButtonTemplate" id="3">
				<Anchors>
					<Anchor point="TOP" relativeTo="NuNPopupButton2" relativePoint="BOTTOM">
						<Offset>
							<AbsDimension x="0" y="-1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNPopupButton4" inherits="NuNPopupButtonTemplate" id="4">
				<Anchors>
					<Anchor point="TOP" relativeTo="NuNPopupButton3" relativePoint="BOTTOM">
						<Offset>
							<AbsDimension x="0" y="-1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
			<Button name="NuNPopupButton5" inherits="NuNPopupButtonTemplate" id="5">
				<Anchors>
					<Anchor point="TOP" relativeTo="NuNPopupButton4" relativePoint="BOTTOM">
						<Offset>
							<AbsDimension x="0" y="-1"/>
						</Offset>
					</Anchor>
				</Anchors>
			</Button>
		</Frames>
		<Scripts>
			<OnLoad>
				this:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b);
				this:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
			</OnLoad>
			<OnShow>
				PlaySound("UChatScrollButton");
				NuNPopup_OnShow();
			</OnShow>
			<OnHide>
				WorldMapTooltip:Hide();
			</OnHide>
			<OnUpdate>
				NuNPopup_OnUpdate(arg1);
			</OnUpdate>
		</Scripts>
	</Frame>

</Ui>
```

## Readme.txt
```txt
Turtle update
-------------
- Fixed lua error when in an insatne
- Moved buttons on friend and guild frames to prevent overlap with other addons



NotesUNeed v3.21.11000 - Telic of Dragonblight (EU)
--------------------------------------------------



Changes in v3.21.11000 from v3.21.1900
--------------------------------------

- Simply updated the toc file for latest WoW version 1.10





Changes in v3.21.1900 from v3.21.1900
-------------------------------------

- Fixed the problem of NotesUNeed notes linking to the wrong Map Notes, after deletion of a Map Note
- Fixed a Map Noting reporting error affecting users of MetaMap in locations where /quicknote will not function
- Adjusted Variable Initialisation for people upgrading from v2.50



Changes in v3.20.1900 from v3.16.1900
-------------------------------------

- Full MapNotes functionality now available to users of MetaMap. ( WorldMapTooltip can be scaled from NotesUNeed by clicking on the double-A button in the top right of NotesUNeed frames )
- Improved the ability to "re-link" NotesUNeed notes to existing WorldMap notes containing the name of the NotesUNeed note
- Adjusted Map Noting functionality to display the NotesUNeed note list frame even for single notes.

N.B. - remember that Alt-Clicking on a particular note's button in the NotesUNeed note list frame on the WorldMap will close the WorldMap and open the NotesUNeed note for editing; And Alt-Right Clicking will delete the link between the Map Note and the NotesUNeed note.

N.B.2. - NotesUNeed notes will still display if the WorldMapTooltip text is equal to the name of a NotesUNeed note. So Map Notes created independantly of the NotesUNeed note of the same name, can still cause the NotesUNeed tooltip to display on the World Map.

- Updated the scaling of Frames, Tooltips, and WorldMap Tooltips - you may need to re-adjust your scaling once after installing this update.
- Options Reset will now restore frames to their original positions
- Ensured the "Confirm Save at Account Level" frame is displayed even when trying to save without displaying the note, IF a Realm conflict exists.
- Fixed the display of Realms list in the "Confirm Save at Account Level" frame.


NOTE ON UPGRADING FROM MapNotes TO MetaMap
------------------------------------------
This warning message refers only to the links between NotesUNeed notes and MapNotes.  i.e. where you have used NotesUNeed to merge several notes on a single MapNote, resulting in the NotesUNeed note list frame being displayed on the WorldMap.

You will NOT lose any MapNotes, or MetaMap Notes, or NotesUNeed notes by upgrading to this version of NotesUNeed.  But the database links between NotesUNeed notes and MapNotes are at risk unless you take the following advice.
(As per normal functionality, even if links between NotesUNeed notes and MapNotes have been lost, if a MapNote has the same name as a NotesUNeed note, then the NotesUNeed tooltip will still display on the WorldMap when the WorldMap Tooltip displays.)

The Advice :
If you are moving from MapNotes to MetaMap and you wish to keep links between NotesUNeed notes and MapNotes, then you MUST keep MapNotes installed the first time that you run WoW with MetaMap installed.  i.e. you must follow the author of MetaMap's advice on how to migrate your MapNotes in to MetaMap. However, to ensure that you keep links between NotesUNeed notes and MapNotes, you MUST run both MetaMap and MapNotes at the same time the FIRST time that you run MetaMap; After which, you may uninstall MapNotes and forget about it.  If you uninstall MapNotes, and run MetaMap without it while NotesUNeed is installed, all links between NotesUNeed notes and MapNotes will be lost.  You may find that you can still go back and run MetaMap and MapNotes together to import your MapNotes in to MetaMap, BUT you will NOT be able to recover the links to NotesUNeed notes.
However, if you follow this advice, then you should notice no difference in the information being displayed when you start to use MetaMap, and all MapNotes and NotesUNeed tooltips should display as they did before.







Changes in v3.16.1900 from v3.15.1900
-------------------------------------

- Fixed the Auction House display of the NotesUNeed tooltip
(The display of the NotesUNeed tooltip in the Auction House can appear a little 'dislocated' sometimes. i.e. after viewing an item such as a ring, which has also displayed 2 additional tooltips showing currently equipped items.  Unfortunately, there doesn't seem to be much I can do about this at present, as I don't seem to be able to reliably determine when the extra tooltips are visible or not.  Basically, seems to be another quirk in the Blizzard UI that I can't explain. Anyway, I judge it to be a minor glitch, rather than a bug, so have not spent any more time on it. If anyone has a technical solution, let me know by e-mail please. )




Changes in v3.15.1900 from v3.12.1900
-------------------------------------

- Removed MapNotes version validation; No longer supported by original author so not much point. MapNotes is being updated in Cosmos.
This should remove the constant warning about the MapNotes version if using the Cosmos 1.9 compliant version.




Changes in v3.12.1900 from v3.11
--------------------------------

- Fixed the error when mousing over units on the Minimap (should fix other mouseover errors)




Changes in v3.11.1900 from v3.10
--------------------------------

- Fixed the error messages occurring when viewing Guild Members
- Increased the maximum scale of the Frames to 175%

v3.10.1900 released in response to WoW v1.9




Changes in v3.10.1800 from v3.00.1800
-------------------------------------

- Changed the way that the NotesUNeed tooltip is displayed in relation to the GameTooltip
- Alt Click on the Contact Microbutton to re-open the last Contact Note you had open
- Alt Click on the General Microbutton to re-open the last General Note you had open
- Key-binding to re-open the last note you had open, whether it be a Contact Note or a General Note
- In the NotesUNeed Search/Browse frame, Quests that are in your current character's Quest Log are now coloured Green
- In the NotesUNeed Search/Browse frame, Quests that your current character has abandoned are now coloured Red
- Some minor performance improving changes
- Fixed some minor FrameXML errors being reported, but which had no functional impact

(Tip: Don't forget that Shift-Clicking the Contact Microbutton will create a note for your current target without opening the note; A key-binding also exists for this functionality.)




Changes in v3.00.1800 from v2.51.1800
-------------------------------------

New Functionality in v3.00.1800
-------------------------------

The most significant change this version is integration with MapNotes - please see the MapNotes section of the Readme.txt for a detailed explanation. Currently, only tested with v1800.7 of MapNotes stand alone AddOn.
Highlights for ALL new features are as follows :

- Added the ability to generate MapNotes from Generic NotesUNeed Notes
- Added ability to automatically create a MapNote when noting NPCs.
- Added ability to auto MapNote Quest Giver NPCs when Accepting Quests
- Merge up to 5 NotesUNeed notes in one MapNote; new tooltip style frame displays list of all MERGED NotesUNeed Notes; Mouse-over to view individual NotesUNeed tooltips
- Alt-Left Click on a MERGED NotesUNeed map Note to close the WorldMap and Open the Note for editing.
- Alt-Right Click on a MERGED NotesUNeed map Note to delete the reference to that Note from the Map Note ( This does NOT delete the actual NotesUNeed Note OR the MapNote - it only removes the link between the MapNote and the NotesUNeed note so that the NotesUNeed note is no longer listed against this MapNote. )
- Added ability to scale up/down the WorldMap tooltips
- Can now see NotesUNeed tooltips for your character and party members on the WorldMap or Minimap
- Auto Note creation options are now set to "Off" by default to prevent creation of unwanted notes at first install
- Shortcut Hyperlink access by sending a list of the Hyperlinks within a Note to the Chat frame where they can be clicked upon. New button with "[]" symbols in top right cluster of buttons in Note Frame.
- Added a Shift-Alt Click ability to paste Hyperlinks in to Open NotesUNeed notes. If NO NotesUNeed note is open, then Shift-Alt-Clicking will open/create a note just as in earlier versions, but if a NotesUNeed note frame is already open, then the Item link will be pasted in to the text of the open note. If you have both a Generic Note and a Contact style note open at the same time, then by default, the Hyperlink will be pasted in to the Generic note's text.
- NPC Level "??" noted as such, instead of as -1
- Stopped the attempts to Ignore people who are on an Infinite Ignore AddOn list


Bug Fixes in v3.00.1800
-----------------------

- Adjusted the positioning of many of the tooltips
- Fixed a problem when creating a note for a Quest History entry whose associated Quest Note had been deleted
- Fixed a couple of minor error messages that had no functional impact






A Note on Moving between NotesUNeed Versions
--------------------------------------------

When upgrading to a new Version, or downgrading to a previous Version of NotesUNeed, please completely move/delete the NotesUNeed directory, before installing the alternate version. Do NOT simply rely on Overwriting previous files - for example, v1.11.1800 has an extra German localistion file that has not been designed for v2.xx.1800, and you leave it in place at your own risk. Similarly, if you are moving back to any v1.xx.1800 release from a v2.xx.1800 release, then there is a Bindings.xml file pointing to functions that do not exist in the earlier version.
Unzip overwriting one version in to another versions directory may not remove these extra files, which might cause unexpected errors - so please completely remove NotesUNeed from the Game's Addon folder before installing another version.

(btw, if you have created Account level notes in a v2.xx release and want to be able to see them in a v1.xx release you will have to resave them at Realm level. I am not going to guarantee that it is perfectly safe to move back to v1.xx after creating Notes with v2.xx, but I have found no problems so far, and any extra fields should simply be ignored - resaving Notes may result in the loss of some v2.xx fields and data, which you would no longer be able to see if you moved up to v2.xx again.)






Changes in v2.52.1800 from v2.51.1800
-------------------------------------

- Fixed a problem based on Class Trainer Frame not existing






Changes in v2.51.1800 from v2.50.1800
-------------------------------------

- Fixed the Game Freezing Issue on Login
- Fixed a problem with Quest Stage text being added to an existing Quest Note
- Prevented manual creation of a Quest History entry until a Quest Note is manually saved
- Added the name of the Targetted NPC and current location when accepting/handing in Quests





Changes in v2.50.1800 from v2.04.1800
-------------------------------------

- Improved the Searching feature to allow for text searching within filtered note sub-sets. (Including 2 tiered text search - please see Text Searches section of Readme.txt)
- Added Automatic Party Member Note Creation and count of how many times you party with a contact; Plus takes acount of logging on/off, and presence in Raid Groups to avoid repeated counting when joining someone already in your Raid group; Plus, added a button to manually reduce/reset the Party count.
- Changed Text Edit Box behaviour, to allow for movement while edit boxes are up. Controlled by a new CheckBox Option. When Checked, pressing Escape while Editing a note's Text, will lose focus, and allow you to move and interact with WoW, while the notes Edit Frame is Open. Pressing Escape again will close the note. The downside is that all NotesUNeed frames will then work off the same press of the Escape key, and pressing Escape to close a Frame will close both General and Contact note Frames and the Search Frame.)
- When the Merchant Frame is up and you have that merchant targetted, the NPC information gathered will include a list of that Merchants goods for sale and prices.
- Can now Alt-Click on Items in the Auction House to Create/Edit a NotesUNeed note on them (Shift-Alt-Click which is the standard NotesUNeed way of noting items will not work in the Auction Frame, so Alt & Click only, no Shift ) Please ensure you are over the Picture of the item and the Game Tooltip is showing before AltClicking, otherwise, the note created may be for the incorrect item. Please don't report this as a bug ;)
- Added an option to only show a minimised version of the NotesUNeed tooltip when you mouseover a target
- Added a Delete confirmation box. Must press <Enter> or click on confirmation Delete to delete a note. Can click on confirmation Cancel or press <Escape> key to cancel the delete. ( This is not controlled by an option - but I have tried to ensure that you should be able to press Escape/Enter to Cancel/Confirm the Delete; Note that if you shift focus to another Edit Box on screen while the Delete confirmation Frame is visible, then Escape and Enter will be captured by that Edit Box, and will no longer control confirmation/cancellation of note deletion. )
- Addressed an issue which may have been causing the game to freeze/hang on a small number of installations

GERMAN LOCALISATION
-------------------
- Included German Localisation, with Slash command functions to patch Notes saved in the English Version. See the Patching NotesUNeed Language section of the Readme.txt.








Changes in v2.04.1800 from v2.03.1800
-------------------------------------

- Fixed the issue of the Right-Click drop down menu not appearing in the Friend's Frame, when a NotesUNeed Contact note is open.

- ( Internal : standardised ALL function hooking )





Changes in v2.03.1800 from v2.02.1800
-------------------------------------

- Fixed a problem that can cause a corrupted NotesUNeed database when transmitting very large Notes via the Send Note functionality
(Please be aware that as well as the character limit in Text boxes, there also appears to be a WoW limit of 110 new line characters. If a note contains more carriage returns than this limit, then text AFTER this limit will be replaced by "..." on screen. I believe the text you enter is still recorded in WoW, but it is no longer visible. This seems to be a WoW Edit Box limitation, and I can't do anything about it so please don't ask ;)

- Added Version number to Options Frame




Changes in v2.02.1800 from v2.01.1800
-------------------------------------

- Pin Up NotesUNeed Tooltip will still display even when all other NotesUNeed tooltips have been turned off. So Mouse-Over dynamic tooltips will NOT display unless you check the option, but you can still see the pin up tooltip which only shows when the static Game Tooltip shows, or you manually Pin a note's tooltip to the screen.




Changes in v2.01.1800 from v2.00.1800
-------------------------------------

- The Tooltip checkbox/slash command now toggle ALL NotesUNeed tooltips, not just the help tips.
- New slash command and key binding for toggling the display of the Micro buttons  ( /nun -micro )





Changes in v2.00 from v1.08
---------------------------


Please Note every effort has been made to ensure that you will lose no notes or data by upgrading to Version 2 which is fully compatible with the previous version's notes, even with all the extra functionality and the extension to cover new note sub-types. However, I would still strongly advise that you back up your NotesUNeed.lua data file from the Saved Variables directory under your Account name in the WoW game folder, as I can not foresee all possible conflict issues, and if you have problems, your existing NotesUNeed data may be at risk.


New Functionality in v2.00
--------------------------

- Can now create Notes for  TARGETTED NPCs by clicking the Contact Microbutton (or typing    /nun -t   when you have an NPC targetted)

- Can now create Notes for Items by Shift-Alt-Clicking on Items in bags, or the character sheet, or Hyperlinks in the Chat Frame. See the Item Notes section of the Readme file.

- Can now create Notes on Quests in the Quest Log - See the Quests section of the Readme for further information

- New Buttons and Note Tooltips in the Friends, Ignores, Who, both Guild Panels, and the Quest Log Frames.

- NotesUNeed mouseover tooltips for Player Characters, NPCs, and Items.

- Can pin a NotesUNeed Tooltip to the screen so that information from that note is easily available while you play. This static tooltip also appears if you Shift-Click an item in the Chat frame that has a NotesUNeed note.

- Can control the size of the NotesUNeed Tooltip from the Options Frame and control the contents of the NotesUNeed tooltip. See the NotesUNeed Tooltips Section of the Readme file.

- Can now create Player Character Notes by Shift-Alt-Clicking on Player names in the Chat Frame.

- Can now create Player Character Notes from the command line for any character name without validation. See the Command Line and Creating Player Notes sections of the Readme file.

- Set NotesUNeed to automatically record Quest Notes and Quest History for your characters - See the Quest section of the Readme for further information

- Can now change the name of General Notes. ( You will not be allowed to change the name if a note already exists with that name )

- Can now save General Notes at account level to be viewed by your Alts from any server/realm. Set the default save level in the Options

- Can now send your NotesUNeed notes via chat channels to Raid, Party, Guild, Say, Whisper, Self.  A log of the last ten transmissions with a datestamp is kept via a new NotesUNeed Log type note, viewable in the search frame like any other Note. See the Send Notes Section of the Readme for further details.

- Filter your notes by any of the new Note types, Item Notes (ITM),  NPC Notes (NPC), Quest Notes (QST), Logs (LOG), or generic notes without any type. ( Obviously notes from previous versions will fall in to this last category, but it is possible to change a Notes type, and reclassify your existing notes )

- Browse your Quest History, including details of when and where you accepted, completed, and handed them in.

- When creating a note from a targetted Player Character (of your Faction), the Players equipment will be displayed in the new note.

- The NotesUNeed Frames and tooltips can now be scaled and moved.

- Key bindings have been added for toggling the Options screen, and for Capturing a NotesUNeed note for the current target without opening a Note Frame. This can also be achieved by Shift-Clicking the Contact Microbutton while targetting something.

- The Search Frame now displays extra information about notes, including the type; A tick beside a note indicates it has been saved at Account Level. This frame now shows the number of notes being displayed in the header. ( These rules differ slightly when viewing Quest History - see the Quests secion of the Readme )

- The Note editing windows display the number of characters used from the maximum available in the lower right hand corner of the scrolling edit box.

- Shift Click on a note in the Search Frame to output its title to the Chat message box

- Raid Frame Support ( No individual Raid Member buttons, but click on a Raid member in the Raid Frame and then click on the NotesUNeed  Button at the left end of the Friends Frame header to create/edit that player's note. Also, NotesUNeed tooltips will show when Mousing over Raid Members in the Raid Frame, or Over Party member Unit Frames )

- Limited support for Hyperlinks and Coloured Text within notes. See the Hyperlinks in NotesUNeed Notes section of the Readme file.



Modifications to Functionality in v2.00
---------------------------------------

- Only import Contacts to the Friends List that are in the Friends List of at least one Alt.
- The NotesUNeed 'Edit' Button on the FriendsFrame has been moved to a graphical button at the left side of the Frame Header.
- Increased the maximum possible size of notes to 5056. ( This does NOT increase the size of ALL notes, or mean you are using more memory, unless you FILL the note )










Changes in v1.08 from v1.07
---------------------------

- Fixed a problem with the Text search functionality beyond the 1012th character
- Fixed a small graphical glitch in the Edit Details Box in the Contact Note





Changes in v1.07 from v1.06
---------------------------

- Fixed the Self-Targetting Issue
- Fixed the Levelling message to report the new Level, not the Old ( Caused by changes in WoW Patch 1.8 ? )
- Fixed the Options Reset functionality to correctly set the Default options and refresh the Options Frame view




Changes in v1.06 from v1.05
---------------------------

- Fixed the error message that appears on levelling.




Changes in v1.05 from v1.04
---------------------------

- Very minor '.toc' file update for compatibility with WoW patch 1.8




Changes in v1.04 from v1.03
---------------------------

- Very minor change to make the default position for the Microbuttons near the Top Center of the screen. The default position now has no relationship with any other frame.




Changes in v1.03 from v1.02
---------------------------

- Note that installation of this version to replace an older version will NOT result in any loss of existing notes or data
- Fixed the problem of Text being truncated to 1012 characters by the WoW Saved Variables limit. Up to 4048 characters can now be entered and saved
- Stopped self targetting when exiting own note via Microbutton press
- Minor changes to make the hiding and showing of frames more consistent



Changes in v1.02 from v1.01
---------------------------

- Fixed the error being reported when logging in to a character in different Realms



Changes in v1.01 from v1.0
--------------------------

- Very minor change to display a border around the Microbuttons when the mouse pointer is over the frame. Hopefully should clear up any issues new users have with moving the panel, as it is the border which needs to be clicked to move the buttons, and this border was not previously visible.







General Description
-------------------

Searchable, feature rich Notes database allowing the player to keep notes on Friends, Ignores, Guild Mates, any player you party with or target, or any player at all, whether they belong to your Faction or the Opposing Faction; Or notes on NPCs, Items, Quests, or just General notes on any subject.
Share your Friends List between your Alts, and/or keep track of your Characters' Quest Histories.
A Very useful Search feature allowing the player to browse all notes, or search for Class, Profession, General notes, particular types of notes, or for any Free Text phrase !  So if you can't remember who it was who needed that Pristine Black Diamond, just search for Diamond and you will find the contact :)  Or if you are a Guild Master, now you can list all those members who are Enchanters that have +15 agility chant, or track which characters are alts of which members. Notes can be automatically maintained on Friends and Ignores and shared amongst your alts, allowing you to import your friends list to your brand new alt :)  A note for the character you play is also automatically generated, and keeps track of when and where you level up :)
Moveable, Scaleable Frames; As well as mouseover tooltips, pin up tooltips, key-bindings, and Shift-Alt-Click note creation.

The default position for the Microbuttons is near the Top Center of the screen.

PLEASE NOTE that you can't drag the Microbuttons if you have actually clicked on one of the buttons - they need to be dragged by the edge. There is a small transparent border surrounding the buttons and you need to click this to drag the frame, not the buttons themselves.


Key Features
------------

- New NotesUNeed Button on the Friend, Who, Ignore, Guild, and Quest frames allowing the creation/editing of a note

- A new movable and discrete panel of 4 buttons allowing immediate access via the mouse to the
        1. NotesUNeed Options
        2. Browse all notes
        3. Create/Edit Contact Note, depending on who you have targetted
        4. Create new General Note

- Create or Edit notes via Slash Commands

- Browse All notes, or Search by Class, Profession, Note Types such as Item/NPC/Quest, or search for any free text. Searches can be initiated from the NotesUNeed Options frame.

- When browsing, notes are sorted by your current player's Faction, then the opposing Faction, then General notes. Symbols clearly display whether a note is an Alliance Contact, a Horde Contact, or a General note, even detailing what kind of note and whether it is saved at Realm or Account level. Player Notes are kept at the Realm level and all are accessable by any alt of either faction on that Realm. Other notes can be kept at the Realm or Account level.

- Drop down boxes on the NotesUNeed Contact note frame reduce the amount of typing, when entering Class, Profession, Rank, etc. NotesUNeed will also try to automatically fill in as much information as possible for Contacts that are online, noting Race, Class, Sex, PvP Rank, Guild and Guild Rank ( Distance from target will reduce the amount of inormation that can be gathered )

- Use the "Target Info" and "Who Info" buttons to manually request a refresh of Race, Class, Sex, PvP Rank, Guild and Guild Rank. Again, this functionality is restricted by the underlying WoW functionality, and distance to target will reduce the amount of information. Target information includes all equipment.

- Allow NotesUNeed to automatically maintain notes on Friends and Ignores, and then use the NotesUNeed database to import Friends and Ignores to other alts.

- Allow NotesUNeed to automatically delete notes when Friends/Ignores are removed. ( Contact Notes will only be auto-deleted when that player is no longer a Friend/Ignore of ANY of your alts, AND the note was created automatically by NotesUNeed; So any note you manually Save will never be deleted automatically, as it is assumed that you will have saved that note for a different reason than simply tracking Friends/Ignores )

- Default headings exist in the Contact Note frame for Guild, Guild Rank, Real Name, e-mail, and Web address. However, these are user definable headings, and you can change these to be phone number rather than web address for example, or whatever you feel is more suitable for your needs; The Default headings can be changed for all your Contact notes, or you can change the headings for an individual Note if need be.  Please note that if you change the Guild and Guild Rank headings then the underlying details will NOT be automatically filled in by NotesUNeed.

- NotesUNeed will automatically generate a note for your character and will automatically record when and where you level up

- Allow NotesUNeed to automatically maintain Notes on Quests and Quest History for your Alts

- View mouseover tooltips containg NotesUNeed note details, and control what and how much is displayed.

- Add Timestamps and Location to notes (Location is always YOUR location.)

- See also New Functionality in the Version 2 notes above



Slash Commands
--------------

/nun   : Toggles the NotesUNeed Options window

/nun -h   : Displays this list of Slash commands

/nun <note title>   : Will attempt the following :
  1. Fetch a saved Contact note with that name
  2. Fetch a saved General note with that title
  3. Create a new Contact note if a player of that name is in your party/raid group or is within target range
  4. Toggles the NotesUNeed Options window

/nun -t	  : Fetches the saved Contact note for the current target, or creates a new one, or shows your own characters note if no valid target. Since v2.00.1800, this command will create notes for NPCs and populate some basic information about them.

/nun -g	  : Creates a new General Note, untitled.

/nun -g <note title>	: Fetches the existing General note with that title, or Creates a new General note with that title.

/nun -ch <name>		: Create a Horde Player Character note for the given name without validating it
/nun -ca <name>		: Create an Alliance Player Character note for the given name without validating it

/nun -tt	: Toggle NotesUNeed Tooltips on/off

/nun -micro	: Toggle the NotesUNeed Microbuttons panel hide/show






Text Searches
-------------
The Text search box is now visible in the Search Frame when filtering by most types of Notes, not just when specifically searching for Text. This means that after filtering for Quest Notes for example, you can then search for the phrase "Scorpid Sting" and NotesUNeed will search for that Text only in the Quest Notes you previously specified.

I have chosen not to blank the text search box on entry/exit, as it allows you to repeat the search without having to retype the text, and will not restrict your search results when filtering notes until after you click on the Search Button. The one exception to this rule is when you have specifically requested a text search from the Options Drop down, and not blanking the text box allows for the possibility of a 2 tiered text search as follows:
i.e. It is possible to search for 2 text words or phrases in the NotesUNeed notes, for example you might wish to view only notes containing the phrase "Big Sword", and then search among those notes for the word "Light". (Sorry that this isn't an obvious solution ;) First you must open up the Search Frame by clicking on the Browse All Microbutton, and entering some text in the Search Text Box (You don't have to Click on Search, or press <Enter>, just put the first text word/phrase you are searching for in the box). Next, open up the NotesUNeed Options Frame (the Search Frame will close automatically) and select Text from the Search For Drop Down selection box, and click on Search. NotesUNeed will filter All your notes based on the text you entered in the first Search Text box and list them for you.  Now you can enter a completely new word/phrase in the Search Text box, and NotesUNeed will only search amongst those Notes already returned after the first search.




Patching NotesUNeed Language
----------------------------

During Localisation, the order of the drop down boxes has been resequenced to be aplphabetically sorted based on the German translations. If you have been using an English only NotesUNeed v2.00.1800 to v2.04.1800 ( or any version 1 before v1.09.1800 ) on a German Client, then your Contact notes will have stored Class, Race, Professions, and PvP Ranks in a certain way; If you are now upgrading to v2.50.1800 with German Localistion, this data may display incorrectly in the Drop Down boxes in the Contact Notes for Horde and Alliance players. To fix this, you can use the following special Slash command, which will Patch ALL your NotesUNeed Player Notes. e.g. this should make sure that when you saved a player note as a "Rogue" on the English version, they will display properly as a "Schurke" in the German Localised Version.

/nun ->DE


If you need to move back to the English only version for any reason, I have also provided the following command to undo the patch and allow your data to display correctly again in a previous version without localisation :

/nun ->EN






Quests
------

NotesUNeed Quest Notes and Quest History

It is important to be clear that NotesUNeed keeps notes on Quests separate from a Player's Quest History.
A Quest Note is a normal NotesUNeed note detailing the Quest's name, description, objectives and rewards.
The Quest History recorded by NotesUNeed is not a normal NotesUNeed note, but simply a list of Quests with the associated location and time when they were accepted, completed, and handed in.

- new buttons allow notes to be made on the Quests in the Quest Log, similar in functionality to how the Friends Frame buttons work.

- a new option is available to allow NotesUNeed to automatically record a Quest Note whenever your Quest Log is updated, and also keep track of your characters' Quest History

- new search Options are available in the Options Frame to filter notes by type, including Quest Notes, or Quest History

- Quest Notes are notes like any other but with a type of "QST" allowing them to be filtered and examined separately

- It is also possible to Filter/Search by Quest History, but these are not NotesUNeed notes. When filtering by Quest History, you are simply viewing a list of the Quests you have had in your Quest Log. The Tooltip will no longer display the Quest Note tooltip, but will display the details of when and where you were when you Accepted, Completed, and Handed In the Quest. A tick beside the Quest name will indicate that that Quest has been Completed and Handed In and is no longer in your Quest Log. If you have the details of the Quest stored in a Quest Note, then a little note symbol will appear beside the entry, and clicking on the Quest will show the Quest Note. However, if you do not have a Quest Note for that particular quest (because you have deleted it), then no symbol appears beside the Quest name, and clicking on it will show a blank Quest Note.

- It is important to note that if you are Searching Quest History, and you raise the corresponding Quest Note, then clicking on Delete in the Note editing frame will no longer Delete the Quest Note, but will instead Delete the entry in your Quest History. To delete the Quest Note you would have to close the Quest History Search Frame, Search seperately for that Quest Note, and then delete the Note itself.

- Quest History entries are ONLY displayed when you choose to Filter specifcially for Quest History from the Options Frame. If you search for All, or Notes, or Quest Notes, you will NOT see any Quest History Entries - only actual Notes.

- The Quest Accepted Location and Datestamp will not necessarily  be accurate. For example, when you first install the mod, or when you first check the option to automatically record Quest Notes and History, then NotesUNeed will update your quest history on the next Quest Log Update, and all your current quests will be noted as accepted at that time and in that place. Similarly, abandoning a quest and accepting it again later will not update the accepted location or date unless you take the trouble to delete the Quest History entry for that quest after abandoning it.

- Due to some inconsistancies in the WoW treatment of Quest completion, it is not always possible for NotesUNeed to detect when a Quest is complete, or even handed in.

- The Quest History search will display the level of you character when that history entry was created. The level detailed within the Quest Note is the appropriate recommended difficulty level associated with that quest, not an individual player level.

- Quest History is sorted to show the most recently accepted Quests first

- Where a Quest has multiple stages under the same Quest name, and you have Auto-noting of Quests turned on, then NotesUNeed will try to append the details of the next stage of the Quest to the existing Quest note. Again, the WoW API does not always send notifcaion of stage completion, and details can not always be updated. Note that where you play through quest stages out of sequence by playing the same quest with different Alts at the same time, then the text in the note may also be listed out of sequence.

- Turning auto-noting of Quest Logs and History, off and on, while continuing to make progress in those quests may result in strange looking data, especially where quests being logged have multiple stages.




NotesUNeed Tooltips
-------------------

The contents of the NotesUNeed tooltips can be controlled in 2 different ways :

1.) Change a user-definable Heading in the Player Character Note to contain the word 'Tooltip' (not case-sensitive), and the corresponding Detail will be displayed in that Notes Tooltip.

2.) By default, the notes text will be displayed in the tooltip; But this can be restricted by using the tags  "TT::"  and  "::"  to start and end the text you wish displayed.
e.g. from the following :-     "Text I don't need to see in a tooltip TT::Useful Information:: followed by more unimportant text"         only "Useful Information" will show in the tooltip.




Send Notes via Channels
-----------------------

For the Player Character style notes, the information displayed in the drop down boxes and user definable buttons comes from the SAVED details of the note. If you show a note, change their Profession without Saving, then send the note, the profession actually sent will not be the one you just specified, but the one still saved.
However, during development I found that it was much more useful to be able to change the free text in the Edit Scroll boxes of both the Contact and General style notes, and send it without having to save the note first. I believe this could be more useful in the live version also, as you may wish to edit or censor certain details of a notes free text before you send it, without actually saving your changes.

The formatting of the text as it is being sent means that each line is prefixed with message key information, I did this to allow for the future possibility of sending a note to another NotesUNeed user, and allowing them to create a note from those details in their NotesUNeed database.

See also the Hyperlinks in NotesUNeed Notes section of the Readme file.




Creating Player Notes
---------------------

A player note can be created for any name without NotesUNeed validating the player name using the following commands :
/nun -ch <name>   for a Horde character note
/nun -ca <name>   for an Alliance character note

(the original    /nun -g <notename>    still exists for creating General Notes - it is recommended that for creating NPC notes you first target the NPC and use the    /nun -t    command or the Contact Microbutton to create NPC notes, as this will populate the note with some basic information about the NPC including your location )





Item Notes
----------

As well as creating notes from items in your own character sheet by Shift-Alt-Clicking on them, it is possible to create notes on items equipped by other people when the inspect frame is visible. For various reasons, the way to do this is not very intuitive, and you must Shift-Alt-Click the corresponding slot in your character sheet while the Inspect Frame is open.  i.e. to note the fantastic Staff that mage has equipped, you must have your character sheet up, as well as the Inspect frame for the mage. Now whey you Shift-Alt-Click on your equipped weapon slot, a note will be created for the inspected targets weapons slot. When the Inpsect frame is not visible, then you will create a note for your own equipped weapon.

When you create notes on items by Shift-Alt-Clicking on items in bags, character sheets, or Hyperlinks in the chat frame, then the note title is the Hyperlink for that Item. i.e. the coloured item name surrounded by square brackets.  However, to access the note from the command line you do not have to enter "/nun <Hyperlink>".
For example, if you have a note for the purple epic [High Warlord's Battle Axe], then you can access it from the command line by simply typing "/nun High Warlord's Battle Axe".




Hyperlinks in NotesUNeed Notes
------------------------------

Coloured text must be stripped of its colour before transmission via the Chat Channels, but coloured Hyperlinks CAN still be sent - NotesUNeed automatically "bleaches" text before transmission, but will leave Hyperlinks intact.

Unfortunately it is not possible to click on Hyperlinks in NotesUNeed notes. However, you can still access them via the Send Notes via Chat Channels functionality.
This is the main reason for including a Send to Self option.  If you are interested in a particular Hyperlinked Item's details in one of your notes, you can click on the Chat symbol in the upper right hand corner of the Note frame, choose the Option to send the Note to Self, and click on Transmit. The notes details will now be sent to your Default Chat Frame, where you will now be able to click on the Hyperlink as normal, or Shift-Alt-Click it to create a NotesUNeed note for that individual item containing all its details.



MapNotes
--------

I have integrated with the MapNotes standalone mod.
Versions of MapNotes that NotesUNeed has been tested with so far :
	1800.7


I check for the presence of the MapNotes_OnLoad function as evidence that MapNotes is installed.
I also check the version of MapNotes installed, and if it is not a version with which I have tested, then you get a popup box when you log in,  saying  "CAUTION: NotesUNeed not tested with the installed version of MapNotes" - this popup box should only appear once, and should NOT continue to appear every time you log in with those versions of NotesUNeed and MapNotes. Currently, I have only tested with v1800.7, but I will try to keep an eye out for future MapNotes releases, and try to keep NotesUNeed in sync with it.

The basic changes are that you can now create MapNotes from NotesUNeed, and when you hover over a MapNote icon whose Main line is equivalent to a NotesUNeed note title, then you will also see the NotesUNeed tooltip for that MapNote. This means that it will be possible to see the NotesUNeed tooltip for MapNotes that have already been created, as long as their name is the same as a NotesUNeed note.

I have used similar logic to that used by the MapNotesTarget AddOn, which can be used to create MapNotes for targetted NPCs. So, friendly NPCs create Green MapNotes, neutrals create Yellow, and enemy NPCs create Red MapNotes.  I have gone further, however, and you can create a MapNote from any Generic NotesUNeed note - default colour is green.

Also, if you are Auto-Noting quests, and have the flag to Auto-MapNote NPCs, then NotesUNeed will create a purple cross MapNote when ever you accept a new quest. ( I chose to implement similar logic to MapNotesTarget myself, rather than make NotesUNeed dependant upon it, mainly because, MapNotesTarget also adds profession/level to the MapNote name, which then breaks the link to the NotesUNeed notes, and stops the NotesUNeed tooltip displaying. Plus, I have also extended the functionality, so..... )

From a MapNotes point of view, the note Merging is basically the same as that found in the MapNotesTarget AddOn. MapNotes will reply with a warning if you are too close to an existing MapNote to create a new one for the NPC.  In that case, MapNotesTarget allows you to merge the NPC MapNote with the existing one, so if you had a note called  "NOTE1", and you were trying to create a new note for an NPC called "NOTE2", but were very close to "NOTE1", then you could choose to merge them and the MapNote would then be called  "NOTE1 | NOTE2".     Basically, I have done a similar thing with regard to the MapNote information with a couple of differences :

1.) I just merge notes automatically when you are too close to an existing one; Up to a maximum of 5 NotesUNeed notes can be merged/added to an existing MapNote. After 5 NotesUNeed merges, then you will just have to move a little bit away from the current MapNote to create a new one.

2.) I have added another tooltip window which will list the NotesUNeed notes that have been merged in one MapNote. To see the NotesUNeed tooltip for the individual notes, you need to move your cursor over this list of buttons.


MapNotes : PLEASE NOTE : MapNotes are basically stored at Account Level, while it is possible to create NotesUNeed notes at Realm, or Account level.  It is also possible to create MapNotes from NotesUNeed notes saved at either level; However, if you have a NotesUNeed note saved at Realm level, create a MapNote from it, then change Realms, you will not be able to see the associated NotesUNeed note tooltip.  In order to see NotesUNeed tooltips on any realm, you must save the NotesUNeed note at Account level.  So if you believe that a NotesUNeed tooltip is not being displayed when it should be, please check at what level it is saved, and which Realm you are currently on :)







Notes & Troubleshooting
-----------------------

1. Many of the NotesUNeed frames and the Pinned tooltip are now moveable and scaleable in Version 2. This means that they can disappear off screen when you increase their Scale, or the UI Scale from the WoW Video Options panel (or from the Titan panel).  If you are clicking on a button but the frame, or tooltip does not appear to be responding, try to reduce the NotesUNeed Frame/Tooltip scales, and/or the UI Scale temporarily (preferably as low as you can go), and see if the frame/tooltip now responds/appears.Once you have located the frame, move it towards the top left of the screen, and restore your UI scale to where you need it. If all else fails try resetting the NotesUNeed Options to their defaults, and then exiting WoW, entering the world without the NotesUNeed Addon loaded (preferably temporarily remove the NotesUNeed folder from the Addons folder completely while you log on),  then restore the NotesUNeed mod folder, and log on again. Hopefully, this should restore your NotesUNeed frames to their original position. The last resort after this is to edit/delete the "layout-cache.txt" file in the WoW\WTF\Account\<Account Name>\<Character Name> folder, and restart the game.

2. The "Who Info" button needs to be clicked at least twice to refresh the Race and Class on the Contact note window. This seems to be due to the way the /who command works in WoW and the amount of time needed to refresh the who list. Again, if enough people say it is a big problem, I might look at trying to ensure only 1 click of "Who Info" is required, but this can only fetch Race and Class, and I didn't think clicking the button until the data refreshes was too big a problem. Note that as with the "Target Info" button, the player needs to be on line to gather any useful data. Also, just like the normal /who command, there is a period of time after clicking the "Who Info" button a couple of times for one character, before it will respond again for another character. I can't do anything about the delay between /who commands as this is a characteristic of the WoW API, just try typing /who <character name> multiple times to see what I mean.

3. When importing players in to your Ignore list from the NotesUNeed database, note that a character needs to be on line to be succesfully ignored. This is a restriction of the WoW API.  Every time you log on, NotesUNeed will make another attempt to ignore any Contacts which it failed to ignore previously, but it will only attempt this once, as periodic background attempts to ignore these players would only generate puzzling "Player not found" messages in the chat window.








Contact for Feedback & Bug Reports
----------------------------------

telic@hotmail.co.uk



```

