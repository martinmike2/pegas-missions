GLOBAL vehicle IS LIST (
    LEXICON(
        "name",  "Titan Lifter",
        "massTotal", 231773,
        "massFuel", 231773 - 76773,
        "engines", LIST(
                LEXICON(
                                "isp", 296,
                                "thrust", 2194400
                )
         ),
         "staging", LEXICON(
                  "jettison", FALSE,
                  "ignition", FALSE
         )
    ),
    LEXICON(
        "name",  "Titan Upper Stage",
        "massTotal", 63441,
        "massFuel", 63441 - 28746,
        "engines", LIST(
                LEXICON(
                                "isp", 302,
                                "thrust", 1052000
                )
         ),
         "staging", LEXICON(
                  "jettison", TRUE,
                  "ignition", TRUE,
                  "waitBeforeJettison", 0,
                  "waitBeforeIgnition", -1
         )
    ),
    LEXICON(
        "name", "Centaur-T",
        "massTotal", 24243,
        "massFuel", 24243 - 3378,
        "engines", LIST(
                LEXICON(
                                "isp", 444 * 2,
                                "thrust", 73400 * 2
                )
        ),
        "staging", LEXICON(
                "jettison", TRUE,
                "ignition", TRUE,
                "waitBeforeJettison", 1,
                "ullage", "rcs",
                "ullageBurnDuration", 10,
                "waitBeforeIgnition", 8,
                "postUllageBurn", 2
        )
    )
).
GLOBAL sequence IS LIST(
    LEXICON("time", -3.7, "type", "stage", "message", "Ignition"),
    LEXICON("time", 0, "type", "stage", "message", "Liftoff!"),
    LEXICON("time", 105, "type", "stage", "message", "SRB Jettison"),
    LEXICON("time", 110, "type","stage", "message", "Fairing Jettison"),
    LEXICON("time", 274, "type", "roll", "angle", 0)
).
GLOBAL controls IS LEXICON(
    "launchTimeAdvance", 150,
    "verticalAscentTime", 7,
    "pitchOverAngle", 10,
    "upfgActivation", 111
).

SET STEERINGMANAGER:ROLLTS TO 10.
SWITCH TO 0.
CLEARSCREEN.
PRINT "Loaded boot file: Titan IV".