GLOBAL vehicle IS LIST (
    LEXICON(
        "name",  "Delta XLT",
        "massTotal", 109993,
        "massDry", 7007,
        "engines", LIST(
                LEXICON(
                                "isp", 255,
                                "thrust", 1054000
                )
         ),
         "staging", LEXICON(
                  "jettison", FALSE,
                  "ignition", FALSE
         )
    ),
    LEXICON(
        "name", "Delta K",
        "massTotal", 7407,
        "massDry", 1478,
        "engines", LIST(
                LEXICON(
                                "isp", 315,
                                "thrust", 42300
                )
        ),
        "staging", LEXICON(
                "jettison", TRUE,
                "ignition", TRUE,
                "waitBeforeJettison", 1,
                "ullage", "srb",
                "ullageBurnDuration", 10,
                "waitBeforeIgnition", 10,
                "postUllageBurn", 2
        )
    )
).
GLOBAL sequence IS LIST(
    LEXICON("time", -3.7, "type", "stage", "message", "Ignition"),
    LEXICON("time", 0, "type", "stage", "message", "Liftoff!"),
    LEXICON("time", 77, "type", "stage", "message", "SRB Jettison"),
    LEXICON("time", 90, "type", "roll", "angle", 90),
    LEXICON("time", 110, "type","stage", "message", "Fairing Jettison"),
    LEXICON("time", 274, "type", "roll", "angle", 0)
).
GLOBAL controls IS LEXICON(
    "launchTimeAdvance", 150,
    "verticalAscentTime", 7,
    "pitchOverAngle", 10,
    "upfgActivation", 115
).

SET STEERINGMANAGER:ROLLTS TO 10.
SWITCH TO 0.
CLEARSCREEN.
PRINT "Loaded boot file: Delta-II-7920-10C".