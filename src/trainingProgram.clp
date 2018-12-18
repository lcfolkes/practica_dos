
;Practica 2, Inteligencia Artificial - Knowledge-Based Systems
;Authors: Lars Christian Ek Folkestad, Mathias Dehli Klev

;How to run code:
;1. Load file in CLIPS
;2. type: (reset) to create instances
;3. type: (run) to run program

;;****************
;;* ONTOLOGY *
;;****************

; Mon Dec 10 09:58:58 GMT+01:00 2018
;
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot MaxRepetitions
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot DayOfSession
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ImpactLevel
		(type STRING)
;+		(value "Low" "High")
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Friday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(single-slot MinSets
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Practica2_Class8
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot SessionOfSession
		(type INSTANCE)
;+		(allowed-classes Session)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot RecommendedNrOfExercises
		(type INTEGER)
		(range 0 10)
		(default 0)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot MaxSets
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot SourceExercise
		(type INSTANCE)
;+		(allowed-classes StrengthExercise)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot AdditionsForBalance
		(type STRING)
		(cardinality 0 5)
		(create-accessor read-write))
	(multislot BodyPartsTrained
		(type INSTANCE)
;+		(allowed-classes BodyPart)
		(cardinality 1 5)
		(create-accessor read-write))
	(multislot RecommendedNrOfRepititions
		(type INTEGER)
		(range 0 15)
		(default 0)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot MinRepetitions
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot RecommendedNrOfSets
		(type INTEGER)
		(range 0 5)
		(default 0)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot NameOfDay
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot RecommendedNrOfCardioSessions
		(type INTEGER)
		(range 0 7)
		(default 0)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot BodyP
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot BodyPart1
		(type SYMBOL)
;+		(allowed-parents BodyPart)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot RecommendedStrengthIntensity
		(type INTEGER)
		(range 6 20)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot RecommendedCardioIntensity
		(type INTEGER)
		(range 6 20)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot RecommendedNrOfStrengthSessions
		(type INTEGER)
		(range 0 7)
		(default 0)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot MinDuration
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Activity
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot BodyPartName
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Tuesday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot Wednesday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot Exercises
		(type INSTANCE)
;+		(allowed-classes Exercise)
		(cardinality 1 10)
		(create-accessor read-write))
	(single-slot Intensity
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot RecommendedExerciseType
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 1 5)
		(create-accessor read-write))
	(multislot SessionsOnDays
		(type INSTANCE)
;+		(allowed-classes)
		(cardinality 1 7)
		(create-accessor read-write))
	(multislot BodyPartInst
		(type INSTANCE)
;+		(allowed-classes BodyPart)
		(cardinality 1 5)
		(create-accessor read-write))
	(single-slot KB_813760_Class13
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot RecommendedCardioDuration
		(type INTEGER)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot Sunday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot RecommendedExerciseType2
		(type INSTANCE)
;+		(allowed-classes StrengthExercise BalanceExercise CardioExercise FlexibilityExercise GeneralExercise)
		(cardinality 1 5)
		(create-accessor read-write))
	(multislot RecommendedExerciseType1
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 1 5)
		(create-accessor read-write))
	(multislot Thursday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot Monday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot Saturday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(single-slot MaxDuration
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Exercise
	(is-a USER)
	(role concrete)
	(single-slot Activity
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass StrengthExercise
	(is-a Exercise)
	(role concrete)
	(multislot BodyPartsTrained
		(type INSTANCE)
;+		(allowed-classes BodyPart)
		(cardinality 1 5)
		(create-accessor read-write)))

(defclass CardioExercise
	(is-a Exercise)
	(role concrete)
	(single-slot ImpactLevel
		(type STRING)
;+		(value "Low" "High")
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass BalanceExercise
	(is-a Exercise)
	(role concrete)
	(multislot AdditionsForBalance
		(type STRING)
		(cardinality 0 5)
		(create-accessor read-write))
	(single-slot SourceExercise
		(type INSTANCE)
;+		(allowed-classes StrengthExercise)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass FlexibilityExercise
	(is-a Exercise)
	(role concrete)
	(multislot BodyPartsTrained
		(type INSTANCE)
;+		(allowed-classes BodyPart)
		(cardinality 1 5)
		(create-accessor read-write)))

(defclass GeneralExercise
	(is-a Exercise)
	(role concrete))

(defclass BodyPart
	(is-a USER)
	(role concrete)
	(single-slot BodyPartName
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Illness
	(is-a USER)
	(role concrete)
	(multislot RecommendedNrOfRepititions
		(type INTEGER)
		(range 0 15)
		(default 0)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot RecommendedNrOfExercises
		(type INTEGER)
		(range 0 10)
		(default 0)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot RecommendedStrengthIntensity
		(type INTEGER)
		(range 6 20)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot RecommendedCardioIntensity
		(type INTEGER)
		(range 6 20)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot RecommendedNrOfSets
		(type INTEGER)
		(range 0 5)
		(default 0)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot Name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot RecommendedNrOfStrengthSessions
		(type INTEGER)
		(range 0 7)
		(default 0)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot RecommendedExerciseType
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 1 5)
		(create-accessor read-write))
	(multislot RecommendedCardioDuration
		(type INTEGER)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot RecommendedNrOfCardioSessions
		(type INTEGER)
		(range 0 7)
		(default 0)
		(cardinality 1 2)
		(create-accessor read-write)))

(defclass Session
	(is-a USER)
	(role concrete)
	(single-slot Name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Exercises
		(type INSTANCE)
;+		(allowed-classes Exercise)
		(cardinality 1 10)
		(create-accessor read-write)))

(defclass TrainingProgram
	(is-a USER)
	(role concrete)
	(multislot Thursday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot Friday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot Tuesday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot Monday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot Wednesday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot Saturday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write))
	(multislot Sunday
		(type INSTANCE)
;+		(allowed-classes Session)
		(cardinality 0 2)
		(create-accessor read-write)))


;;****************
;;* INSTANCES *
;;****************


(definstances intstances
	; Mon Dec 10 09:58:58 GMT+01:00 2018
	;
	;+ (version "3.5")
	;+ (build "Build 663")

	([Practica2_Class10000] of  CardioExercise

		(Activity "Swimming")
		(ImpactLevel "Low"))

	([Practica2_Class10001] of  CardioExercise

		(Activity "Rowing")
		(ImpactLevel "Low"))

	([Practica2_Class10002] of  CardioExercise

		(Activity "Running")
		(ImpactLevel "High"))

	([Practica2_Class10003] of  Illness

		(Name "Hypertension arterial")
		(RecommendedCardioDuration 30 60)
		(RecommendedCardioIntensity 12 13)
		(RecommendedExerciseType
			[practica2TRAINING_Class10065]
			[practica2TRAINING_Class10061]
			[practica2TRAINING_Class10063])
		(RecommendedNrOfCardioSessions 4 7)
		(RecommendedNrOfExercises 8)
		(RecommendedNrOfRepititions 10 15)
		(RecommendedNrOfSets 1 3)
		(RecommendedNrOfStrengthSessions 2)
		(RecommendedStrengthIntensity 11 14))

	([Practica2_Class10004] of  Illness

		(Name "Diabetes mellitus type 2")
		(RecommendedCardioDuration 30 60)
		(RecommendedCardioIntensity 11 13)
		(RecommendedExerciseType
			[practica2TRAINING_Class10065]
			[practica2TRAINING_Class10061]
			[practica2TRAINING_Class10062]
			[practica2TRAINING_Class10063])
		(RecommendedNrOfCardioSessions 3 5)
		(RecommendedNrOfExercises 8 6)
		(RecommendedNrOfRepititions 8 10)
		(RecommendedNrOfSets 2 3)
		(RecommendedNrOfStrengthSessions 2 3)
		(RecommendedStrengthIntensity 11 13))

	([Practica2_Class10005] of  CardioExercise

		(Activity "Static bike")
		(ImpactLevel "Low"))

	([Practica2_Class10006] of  Illness

		(Name "Fragile elders")
		(RecommendedCardioDuration 5 30)
		(RecommendedCardioIntensity 12)
		(RecommendedExerciseType [practica2TRAINING_Class10062])
		(RecommendedNrOfCardioSessions 3)
		(RecommendedNrOfExercises 8)
		(RecommendedNrOfRepititions 8 12)
		(RecommendedNrOfSets 3)
		(RecommendedNrOfStrengthSessions 2 3)
		(RecommendedStrengthIntensity 9 16))

	([Practica2_Class10007] of  Illness

		(Name "Obesity and overweight")
		(RecommendedCardioDuration 20 60)
		(RecommendedCardioIntensity 13 16)
		(RecommendedExerciseType
			[practica2TRAINING_Class10062]
			[practica2TRAINING_Class10061])
		(RecommendedNrOfCardioSessions 2 3)
		(RecommendedNrOfExercises 8 10)
		(RecommendedNrOfRepititions 8 15)
		(RecommendedNrOfSets 1)
		(RecommendedNrOfStrengthSessions 2 3)
		(RecommendedStrengthIntensity 13 16))

	([Practica2_Class10011] of  Illness

		(Name "Cancer")
		(RecommendedCardioDuration 20 30)
		(RecommendedCardioIntensity 12 16)
		(RecommendedExerciseType
			[practica2TRAINING_Class10065]
			[practica2TRAINING_Class10061]
			[practica2TRAINING_Class10063])
		(RecommendedNrOfCardioSessions 3 5)
		(RecommendedNrOfExercises 8 10)
		(RecommendedNrOfRepititions 8 12)
		(RecommendedNrOfSets 2)
		(RecommendedNrOfStrengthSessions 2)
		(RecommendedStrengthIntensity 12 14))

	([Practica2_Class10015] of  Illness

		(Name "Cystic fibrosis")
		(RecommendedCardioDuration 60)
		(RecommendedCardioIntensity 12)
		(RecommendedExerciseType
			[practica2TRAINING_Class10065]
			[practica2TRAINING_Class10061]
			[practica2TRAINING_Class10062]
			[practica2TRAINING_Class10063])
		(RecommendedNrOfCardioSessions 3 5)
		(RecommendedNrOfExercises 8)
		(RecommendedNrOfRepititions 15 10)
		(RecommendedNrOfSets 1 3)
		(RecommendedNrOfStrengthSessions 2)
		(RecommendedStrengthIntensity 10 14))

	([Practica2_Class10018] of  BalanceExercise

		(Activity "BalanceStandingCalfRaise")
		(AdditionsForBalance
			"Not holding onto chair"
			"Holding onto chair with one finger"
			"Holding onto chair with one hand"
			"Having eyes closed")
		(SourceExercise [Practica2_Class48]))

	([Practica2_Class10020] of  BalanceExercise

		(Activity "BalanceKneeFlexion")
		(AdditionsForBalance
			"Not holding onto chair"
			"Holding onto chair with one hand"
			"Holding onto chair with one finger"
			"Having eyes closed")
		(SourceExercise [Practica2_Class7]))

	([Practica2_Class10021] of  BalanceExercise

		(Activity "BalanceHipFlexion")
		(AdditionsForBalance
			"Having eyes closed"
			"Holding onto chair with one hand"
			"Holding onto chair with one finger"
			"Not holding onto chair")
		(SourceExercise [Practica2_Class40006]))

	([Practica2_Class10022] of  BalanceExercise

		(Activity "BalanceHipExtension")
		(AdditionsForBalance
			"Not holding onto chair"
			"Holding onto chair with one hand"
			"Holding onto chair with one finger"
			"Having eyes closed")
		(SourceExercise [Practica2_Class30001]))

	([Practica2_Class10023] of  BalanceExercise

		(Activity "BalanceSidewaysLegElevation")
		(AdditionsForBalance
			"Not holding onto chair"
			"Holding onto chair with one hand"
			"Holding onto chair with one finger"
			"Having eyes closed")
		(SourceExercise [Practica2_Class20001]))

	([Practica2_Class10024] of  BalanceExercise

		(Activity "WalkingStraightLine"))

	([Practica2_Class10025] of  BalanceExercise

		(Activity "BalanceChairRaising")
		(AdditionsForBalance "Having eyes closed")
		(SourceExercise [Practica2_Class37]))

	([Practica2_Class10026] of  BalanceExercise

		(Activity "AlternatinglyStandingOnOneLeg"))

	([Practica2_Class10027] of  FlexibilityExercise

		(Activity "ThighTendonsBenchStretch")
		(BodyPartsTrained [Practica2_Class3]))

	([Practica2_Class10028] of  FlexibilityExercise

		(Activity "ThighTendonsStandingStretch")
		(BodyPartsTrained [Practica2_Class3]))

	([Practica2_Class10029] of  FlexibilityExercise

		(Activity "LeaningOntoWallCalfStretch")
		(BodyPartsTrained [Practica2_Class4]))

	([Practica2_Class10031] of  FlexibilityExercise

		(Activity "AnkleStretch")
		(BodyPartsTrained [Practica2_Class10033]))

	([Practica2_Class10033] of  BodyPart

		(BodyPartName "Ankle"))

	([Practica2_Class10034] of  FlexibilityExercise

		(Activity "TricepsStretchWithTowel")
		(BodyPartsTrained [Practica2_Class30005]))

	([Practica2_Class10035] of  FlexibilityExercise

		(Activity "WristStretch")
		(BodyPartsTrained [Practica2_Class10036]))

	([Practica2_Class10036] of  BodyPart

		(BodyPartName "Wrist"))

	([Practica2_Class10038] of  FlexibilityExercise

		(Activity "ShoulderRotation")
		(BodyPartsTrained [Practica2_Class6]))

	([Practica2_Class10039] of  FlexibilityExercise

		(Activity "QuadricepsStretch")
		(BodyPartsTrained [Practica2_Class30006]))

	([Practica2_Class10040] of  FlexibilityExercise

		(Activity "DoubleHipRotationStretch")
		(BodyPartsTrained [Practica2_Class30002]))

	([Practica2_Class10041] of  FlexibilityExercise

		(Activity "SimpleHipRotation")
		(BodyPartsTrained [Practica2_Class30002]))

	([Practica2_Class20000] of  CardioExercise

		(Activity "Aerobic dance")
		(ImpactLevel "Low"))

	([Practica2_Class20001] of  StrengthExercise

		(Activity "SidewaysLegElevation")
		(BodyPartsTrained
			[Practica2_Class40026]
			[Practica2_Class30006]))

	([Practica2_Class25] of  StrengthExercise

		(Activity "ArmLift")
		(BodyPartsTrained [Practica2_Class6]))

	([Practica2_Class3] of  BodyPart

		(BodyPartName "Hamstring"))

	([Practica2_Class30] of  StrengthExercise

		(Activity "ShoulderFlexion")
		(BodyPartsTrained [Practica2_Class6]))

	([Practica2_Class30001] of  StrengthExercise

		(Activity "HipExtension")
		(BodyPartsTrained
			[Practica2_Class30002]
			[Practica2_Class40026]))

	([Practica2_Class30002] of  BodyPart

		(BodyPartName "Hip"))

	([Practica2_Class30003] of  CardioExercise

		(Activity "Biking")
		(ImpactLevel "Low"))

	([Practica2_Class30004] of  CardioExercise

		(Activity "Walking")
		(ImpactLevel "Low"))

	([Practica2_Class30005] of  BodyPart

		(BodyPartName "Triceps"))

	([Practica2_Class30006] of  BodyPart

		(BodyPartName "Quadriceps"))

	([Practica2_Class31] of  StrengthExercise

		(Activity "BicepsExercise")
		(BodyPartsTrained [Practica2_Class40025]))

	([Practica2_Class33] of  StrengthExercise

		(Activity "TricepsExtension")
		(BodyPartsTrained [Practica2_Class30005]))

	([Practica2_Class35] of  StrengthExercise

		(Activity "VerticalSeatPushups")
		(BodyPartsTrained [Practica2_Class30005]))

	([Practica2_Class37] of  StrengthExercise

		(Activity "ChairRaising")
		(BodyPartsTrained
			[Practica2_Class5]
			[Practica2_Class40026]))

	([Practica2_Class4] of  BodyPart

		(BodyPartName "Calves"))

	([Practica2_Class40003] of  Illness

		(Name "Cardiac ischemia")
		(RecommendedCardioDuration 20 30)
		(RecommendedCardioIntensity 11 13)
		(RecommendedExerciseType [practica2TRAINING_Class10064])
		(RecommendedNrOfCardioSessions 2 3)
		(RecommendedNrOfExercises 5)
		(RecommendedNrOfRepititions 8 12)
		(RecommendedNrOfSets 2)
		(RecommendedNrOfStrengthSessions 2)
		(RecommendedStrengthIntensity 11 13))

	([Practica2_Class40004] of  Illness

		(Name "Chronic obstructive pulmonary disease")
		(RecommendedCardioDuration 20 30)
		(RecommendedCardioIntensity 11 14)
		(RecommendedExerciseType [practica2TRAINING_Class10062])
		(RecommendedNrOfCardioSessions 2)
		(RecommendedNrOfExercises 5)
		(RecommendedNrOfRepititions 8 10)
		(RecommendedNrOfSets 2 3)
		(RecommendedNrOfStrengthSessions 2)
		(RecommendedStrengthIntensity 13 14))

	([Practica2_Class40006] of  StrengthExercise

		(Activity "HipFlexion")
		(BodyPartsTrained
			[Practica2_Class5]
			[Practica2_Class30006]))

	([Practica2_Class40007] of  Illness

		(Name "Osteoporosis")
		(RecommendedCardioDuration 40 60)
		(RecommendedCardioIntensity 11 14)
		(RecommendedExerciseType [practica2TRAINING_Class10060])
		(RecommendedNrOfCardioSessions 3 4)
		(RecommendedNrOfExercises 8)
		(RecommendedNrOfRepititions 8 12)
		(RecommendedNrOfSets 2)
		(RecommendedNrOfStrengthSessions 3)
		(RecommendedStrengthIntensity 10 14))

	([Practica2_Class40008] of  Illness

		(Name "Rheumatoid arthritis")
		(RecommendedCardioDuration 30 60)
		(RecommendedCardioIntensity 14 17)
		(RecommendedExerciseType
			[practica2TRAINING_Class10061]
			[practica2TRAINING_Class10062]
			[practica2TRAINING_Class10063])
		(RecommendedNrOfCardioSessions 3 5)
		(RecommendedNrOfExercises 8 10)
		(RecommendedNrOfRepititions 10 12)
		(RecommendedNrOfSets 2 3)
		(RecommendedNrOfStrengthSessions 2 3)
		(RecommendedStrengthIntensity 14 17))

	([Practica2_Class40022] of  CardioExercise

		(Activity "Walking stairs")
		(ImpactLevel "Low"))

	([Practica2_Class40025] of  BodyPart

		(BodyPartName "Biceps"))

	([Practica2_Class40026] of  BodyPart

		(BodyPartName "Glutes"))

	([Practica2_Class48] of  StrengthExercise

		(Activity "StandingCalfRaise")
		(BodyPartsTrained [Practica2_Class4]))

	([Practica2_Class5] of  BodyPart

		(BodyPartName "Abdominal"))

	([Practica2_Class6] of  BodyPart

		(BodyPartName "Shoulders"))

	([Practica2_Class7] of  StrengthExercise

		(Activity "KneeFlexion")
		(BodyPartsTrained [Practica2_Class3]))

	([practica2TRAINING_Class0] of  GeneralExercise

		(Activity "Golf"))

	([practica2TRAINING_Class1] of  GeneralExercise

		(Activity "Hiking"))

	([practica2TRAINING_Class10000] of  Illness

		(Name "Healthy")
		(RecommendedCardioDuration 30 60)
		(RecommendedCardioIntensity 10 14)
		(RecommendedExerciseType
			[practica2TRAINING_Class10064]
			[practica2TRAINING_Class10061]
			[practica2TRAINING_Class10065]
			[practica2TRAINING_Class10063])
		(RecommendedNrOfCardioSessions 3)
		(RecommendedNrOfExercises 8)
		(RecommendedNrOfRepititions 8 10)
		(RecommendedNrOfSets 2 3)
		(RecommendedNrOfStrengthSessions 2)
		(RecommendedStrengthIntensity 10 14))

	([practica2TRAINING_Class10001] of  Session

		(Exercises
			[Practica2_Class25]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class33]
			[Practica2_Class35])
		(Name "StrengthUpper5"))

	([practica2TRAINING_Class10002] of  Session

		(Exercises
			[Practica2_Class25]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class33]
			[Practica2_Class35]
			[Practica2_Class37])
		(Name "StrengthUpper6"))

	([practica2TRAINING_Class10006] of  Session

		(Exercises
			[Practica2_Class37]
			[Practica2_Class30001]
			[Practica2_Class40006]
			[Practica2_Class7]
			[Practica2_Class48])
		(Name "StrengthLower5"))

	([practica2TRAINING_Class10007] of  Session

		(Exercises
			[Practica2_Class30001]
			[Practica2_Class40006]
			[Practica2_Class7]
			[Practica2_Class20001]
			[Practica2_Class48]
			[Practica2_Class37])
		(Name "StrengthLower6"))

	([practica2TRAINING_Class10008] of  Session

		(Exercises
			[Practica2_Class10040]
			[Practica2_Class10029]
			[Practica2_Class37]
			[Practica2_Class30001]
			[Practica2_Class40006]
			[Practica2_Class7]
			[Practica2_Class20001]
			[Practica2_Class48])
		(Name "StrengthLower8"))

	([practica2TRAINING_Class10009] of  Session

		(Exercises
			[Practica2_Class10031]
			[Practica2_Class10040]
			[Practica2_Class10029]
			[Practica2_Class37]
			[Practica2_Class30001]
			[Practica2_Class40006]
			[Practica2_Class7]
			[Practica2_Class20001]
			[Practica2_Class48])
		(Name "StrengthLower9"))

	([practica2TRAINING_Class10010] of  Session

		(Exercises
			[Practica2_Class37]
			[Practica2_Class30001]
			[Practica2_Class40006]
			[Practica2_Class7]
			[Practica2_Class20001]
			[Practica2_Class48]
			[Practica2_Class10027]
			[Practica2_Class10028]
			[Practica2_Class10029]
			[Practica2_Class10039])
		(Name "StrengthLower10"))

	([practica2TRAINING_Class10011] of  Session

		(Exercises
			[Practica2_Class10026]
			[Practica2_Class10025]
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020])
		(Name "Balance5"))

	([practica2TRAINING_Class10012] of  Session

		(Exercises
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10023]
			[Practica2_Class10018]
			[Practica2_Class10024])
		(Name "Balance6"))

	([practica2TRAINING_Class10013] of  Session

		(Exercises
			[Practica2_Class10026]
			[Practica2_Class10025]
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10023]
			[Practica2_Class10018]
			[Practica2_Class10024])
		(Name "Balance8"))

	([practica2TRAINING_Class10014] of  Session

		(Exercises
			[Practica2_Class10026]
			[Practica2_Class10025]
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10023]
			[Practica2_Class10018]
			[Practica2_Class10024]
			[Practica2_Class10029])
		(Name "Balance9"))

	([practica2TRAINING_Class10015] of  Session

		(Exercises
			[Practica2_Class10026]
			[Practica2_Class10025]
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10023]
			[Practica2_Class10018]
			[Practica2_Class10024]
			[Practica2_Class10040]
			[Practica2_Class10029])
		(Name "Balance10"))

	([practica2TRAINING_Class10016] of  Session

		(Exercises
			[Practica2_Class10024]
			[Practica2_Class10025]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class10026])
		(Name "StrengthBalanceUpper5"))

	([practica2TRAINING_Class10021] of  Session

		(Exercises
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10029]
			[Practica2_Class10039])
		(Name "StrengthBalanceLower5"))

	([practica2TRAINING_Class10026] of  Session

		(Exercises
			[Practica2_Class10031]
			[Practica2_Class10040]
			[Practica2_Class10029]
			[Practica2_Class10039]
			[Practica2_Class10038])
		(Name "Flexibility5"))

	([practica2TRAINING_Class10027] of  Session

		(Exercises
			[Practica2_Class10028]
			[Practica2_Class10034]
			[Practica2_Class10035]
			[Practica2_Class10040]
			[Practica2_Class10029]
			[Practica2_Class10039])
		(Name "Flexibility6"))

	([practica2TRAINING_Class10028] of  Session

		(Exercises
			[Practica2_Class10040]
			[Practica2_Class10029]
			[Practica2_Class10039]
			[Practica2_Class10038]
			[Practica2_Class10041]
			[Practica2_Class10027]
			[Practica2_Class10028]
			[Practica2_Class10034])
		(Name "Flexibility8"))

	([practica2TRAINING_Class10029] of  Session

		(Exercises
			[Practica2_Class10031]
			[Practica2_Class10040]
			[Practica2_Class10029]
			[Practica2_Class10039]
			[Practica2_Class10038]
			[Practica2_Class10041]
			[Practica2_Class10027]
			[Practica2_Class10028]
			[Practica2_Class10034])
		(Name "Flexibility9"))

	([practica2TRAINING_Class10030] of  Session

		(Exercises
			[Practica2_Class10031]
			[Practica2_Class10040]
			[Practica2_Class10029]
			[Practica2_Class10039]
			[Practica2_Class10038]
			[Practica2_Class10041]
			[Practica2_Class10027]
			[Practica2_Class10028]
			[Practica2_Class10034]
			[Practica2_Class10035])
		(Name "Flexibility10"))

	([practica2TRAINING_Class10031] of  Session

		(Exercises
			[Practica2_Class25]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class33]
			[Practica2_Class35]
			[Practica2_Class37]
			[Practica2_Class10038]
			[Practica2_Class10034]
			[Practica2_Class10035]
			[Practica2_Class10028])
		(Name "StrengthUpper10"))

	([practica2TRAINING_Class10032] of  Session

		(Exercises
			[Practica2_Class25]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class33]
			[Practica2_Class35]
			[Practica2_Class37]
			[Practica2_Class10034]
			[Practica2_Class10035])
		(Name "StrengthUpper8"))

	([practica2TRAINING_Class10033] of  Session

		(Exercises
			[Practica2_Class25]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class33]
			[Practica2_Class35]
			[Practica2_Class37]
			[Practica2_Class10038]
			[Practica2_Class10034]
			[Practica2_Class10035])
		(Name "StrengthUpper9"))

	([practica2TRAINING_Class10034] of  Session

		(Exercises
			[Practica2_Class10024]
			[Practica2_Class10025]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class10026]
			[Practica2_Class33])
		(Name "StrengthBalanceUpper6"))

	([practica2TRAINING_Class10036] of  Session

		(Exercises
			[Practica2_Class10024]
			[Practica2_Class10025]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class10026]
			[Practica2_Class25]
			[Practica2_Class33]
			[Practica2_Class35])
		(Name "StrengthBalanceUpper8"))

	([practica2TRAINING_Class10038] of  Session

		(Exercises
			[Practica2_Class10024]
			[Practica2_Class10025]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class10026]
			[Practica2_Class25]
			[Practica2_Class33]
			[Practica2_Class35]
			[Practica2_Class37])
		(Name "StrengthBalanceUpper9"))

	([practica2TRAINING_Class10039] of  Session

		(Exercises
			[Practica2_Class10024]
			[Practica2_Class10025]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class10026]
			[Practica2_Class25]
			[Practica2_Class33]
			[Practica2_Class35]
			[Practica2_Class37]
			[Practica2_Class10020])
		(Name "StrengthBalanceUpper10"))

	([practica2TRAINING_Class10040] of  Session

		(Exercises
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10029]
			[Practica2_Class10039]
			[Practica2_Class10023])
		(Name "StrengthBalanceLower6"))

	([practica2TRAINING_Class10041] of  Session

		(Exercises
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10029]
			[Practica2_Class10039]
			[Practica2_Class10023]
			[Practica2_Class10026]
			[Practica2_Class10027])
		(Name "StrengthBalanceLower8"))

	([practica2TRAINING_Class10042] of  Session

		(Exercises
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10029]
			[Practica2_Class10039]
			[Practica2_Class10023]
			[Practica2_Class10026]
			[Practica2_Class10027]
			[Practica2_Class10041])
		(Name "StrengthBalanceLower9"))

	([practica2TRAINING_Class10043] of  Session

		(Exercises
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10029]
			[Practica2_Class10039]
			[Practica2_Class10023]
			[Practica2_Class10026]
			[Practica2_Class10027]
			[Practica2_Class10041]
			[Practica2_Class10040])
		(Name "StrengthBalanceLower10"))

	([practica2TRAINING_Class10051] of  Session

		(Exercises
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10023]
			[Practica2_Class10018]
			[Practica2_Class10024]
			[Practica2_Class10026])
		(Name "Balance7"))

	([practica2TRAINING_Class10052] of  Session

		(Exercises
			[Practica2_Class10028]
			[Practica2_Class10034]
			[Practica2_Class10035]
			[Practica2_Class10040]
			[Practica2_Class10029]
			[Practica2_Class10039]
			[Practica2_Class10038])
		(Name "Flexibility7"))

	([practica2TRAINING_Class10053] of  Session

		(Exercises
			[Practica2_Class10022]
			[Practica2_Class10021]
			[Practica2_Class10020]
			[Practica2_Class10029]
			[Practica2_Class10039]
			[Practica2_Class10023]
			[Practica2_Class10027])
		(Name "StrengthBalanceLower7"))

	([practica2TRAINING_Class10054] of  Session

		(Exercises
			[Practica2_Class10024]
			[Practica2_Class10025]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class10026]
			[Practica2_Class33]
			[Practica2_Class25])
		(Name "StrengthBalanceUpper7"))

	([practica2TRAINING_Class10055] of  Session

		(Exercises
			[Practica2_Class30001]
			[Practica2_Class40006]
			[Practica2_Class7]
			[Practica2_Class20001]
			[Practica2_Class48]
			[Practica2_Class37]
			[Practica2_Class10040])
		(Name "StrengthLower7"))

	([practica2TRAINING_Class10056] of  Session

		(Exercises
			[Practica2_Class25]
			[Practica2_Class31]
			[Practica2_Class30]
			[Practica2_Class33]
			[Practica2_Class35]
			[Practica2_Class37]
			[Practica2_Class10035])
		(Name "StrengthUpper7"))

	([practica2TRAINING_Class10057] of  Session

		(Exercises [practica2TRAINING_Class0])
		(Name "Golf"))

	([practica2TRAINING_Class10058] of  Session

		(Exercises [practica2TRAINING_Class1])
		(Name "Hiking"))

	([practica2TRAINING_Class10059] of  Session

		(Exercises [Practica2_Class30004])
		(Name "Walking"))

	([practica2TRAINING_Class10060] of  Session

		(Exercises [Practica2_Class40022])
		(Name "Walking stairs"))

	([practica2TRAINING_Class10061] of  Session

		(Exercises [Practica2_Class10002])
		(Name "Running"))

	([practica2TRAINING_Class10062] of  Session

		(Exercises [Practica2_Class10005])
		(Name "Static bike"))

	([practica2TRAINING_Class10063] of  Session

		(Exercises [Practica2_Class10000])
		(Name "Swimming"))

	([practica2TRAINING_Class10064] of  Session

		(Exercises [Practica2_Class30003])
		(Name "Biking"))

	([practica2TRAINING_Class10065] of  Session

		(Exercises [Practica2_Class10001])
		(Name "Rowing"))

	([practica2TRAINING_Class10066] of  Session

		(Exercises [Practica2_Class20000])
		(Name "Aerobic dance"))

	([practica2TRAINING_Class20001] of  Illness

		(Name "Depression")
		(RecommendedCardioDuration 30 60)
		(RecommendedCardioIntensity 10 14)
		(RecommendedExerciseType
			[practica2TRAINING_Class10059]
			[practica2TRAINING_Class10061]
			[practica2TRAINING_Class10062]
			[practica2TRAINING_Class10064]
			[practica2TRAINING_Class10057]
			[practica2TRAINING_Class20002]
			[practica2TRAINING_Class10066])
		(RecommendedNrOfCardioSessions 3 5))

	([practica2TRAINING_Class20002] of  Session

		(Exercises [practica2TRAINING_Class20003])
		(Name "Skating"))

	([practica2TRAINING_Class20003] of  CardioExercise

		(Activity "Skating"))

)

	;;****************
	;;* DEFFUNCTIONS *
	;;****************


(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer)


(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question yes no y n))
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE
       else FALSE))

;finds instance of illness
(deffunction choose-illness (?val)
  (switch ?val
	(case 1 then (find-instance ((?ins Illness)) (eq ?ins:Name "Cardiac ischemia")))
	(case 2 then (find-instance ((?ins Illness)) (eq ?ins:Name "Hypertension arterial")))
	(case 3 then (find-instance ((?ins Illness)) (eq ?ins:Name "Cystic fibrosis")))
	(case 4 then (find-instance ((?ins Illness)) (eq ?ins:Name "Diabetes mellitus type 2")))
	(case 5 then (find-instance ((?ins Illness)) (eq ?ins:Name "Fragile elders")))
	(case 6 then (find-instance ((?ins Illness)) (eq ?ins:Name "Obesity and overweight")))
	(case 7 then (find-instance ((?ins Illness)) (eq ?ins:Name "Chronic obstructive pulmonary disease")))
	(case 8 then (find-instance ((?ins Illness)) (eq ?ins:Name "Osteoporosis")))
	(case 9 then (find-instance ((?ins Illness)) (eq ?ins:Name "Cancer")))
	(case 10 then (find-instance ((?ins Illness)) (eq ?ins:Name "Rheumatoid arthritis")))
	(case 11 then (find-instance ((?ins Illness)) (eq ?ins:Name "Depression")))


  (default then (find-instance ((?ins Illness)) (eq ?ins:Name "Healthy")))
	)
)

;finds instance of Session, favourite activity
(deffunction choose-activity (?val)
;GeneralExercise
  (switch ?val
	(case 1 then (find-instance ((?ins Session)) (eq ?ins:Name "Golf")))
	(case 2 then (find-instance ((?ins Session)) (eq ?ins:Name "Hiking")))
	(case 3 then (find-instance ((?ins Session)) (eq ?ins:Name "Swimming")))
	(case 4 then (find-instance ((?ins Session)) (eq ?ins:Name "Biking")))
  (default none)))

;floor function to decide values for shape=mid
(deffunction roundDownAverage (?firstNr ?secondNr)
		(bind ?average (/ (+ ?firstNr ?secondNr) 2))
		(bind ?roundedAverage (round ?average))
		?roundedAverage
	)


;finds min value of list
(deffunction min-value (?list)
			(if (< (nth 1 ?list) (nth (length ?list) ?list))
				then (bind ?returnVal (nth 1 ?list))
				else (bind ?returnVal (nth (length ?list) ?list))
			)
			?returnVal
	)

;finds max value of list
(deffunction max-value (?list)
			(if (> (nth 1 ?list) (nth (length ?list) ?list))
				then (bind ?returnVal (nth 1 ?list))
				else (bind ?returnVal (nth (length ?list) ?list))
			)
			?returnVal
	)

;calculates appropriate value from multivalue field according to physical shape
(deffunction calculate-value-depending-on-shape (?shape ?list)
		(if(eq ?shape low)
				then (bind ?recommended (min-value ?list))
				else
		(if (eq ?shape mid)
				then 	(bind ?recommended (roundDownAverage
					(min-value ?list) (max-value ?list)))
				else
		(if (eq ?shape high)
				then (bind ?recommended (max-value ?list))
		)))
		?recommended
)

;calculates number of sessions (cardio or strenth) depending on shape and disease
(deffunction determine-number-of-sessions (?shape ?activityType ?disease)
		(if(eq ?activityType cardio)
		 		then (bind ?recNrOfSessions (send ?disease get-RecommendedNrOfCardioSessions))
				else (bind ?recNrOfSessions (send ?disease get-RecommendedNrOfStrengthSessions)))

		(bind ?finalRecNrOfSessions (calculate-value-depending-on-shape ?shape ?recNrOfSessions))
		?finalRecNrOfSessions
)

;calculates cardio duration depending of shape and disease
(deffunction determine-cardio-duration (?shape ?disease)

		(bind ?recommended-duration-slot (send ?disease get-RecommendedCardioDuration))
		(bind ?recommended-duration (calculate-value-depending-on-shape ?shape ?recommended-duration-slot))
		?recommended-duration
)

;calculates warm-up and cool-down duration depending on shape
(deffunction determine-warmup-cooldown-duration (?shape)
		(if (eq ?shape low)
			then (bind ?recommended-duration 5)
		else (if (eq ?shape mid)
			then (bind ?recommended-duration 10)
		else (bind ?recommended-duration 15)
				)
		)
		?recommended-duration
)

;calculates set duration on warm-up and cool-down
(deffunction determine-wcsetduration (?shape)
		(if (eq ?shape low)
			then (bind ?recommended-duration 10)
		else (if (eq ?shape mid)
			then (bind ?recommended-duration 20)
		else (bind ?recommended-duration 30)
				)
		)
		?recommended-duration
)

;calculates number of reps depending on shape and disease
(deffunction determine-reps (?shape ?disease)

		(bind ?recommended-reps-slot (send ?disease get-RecommendedNrOfRepititions))
		(bind ?recommended-reps (calculate-value-depending-on-shape ?shape ?recommended-reps-slot))
		?recommended-reps
)

;calculates number of sets depending on shape and disease
(deffunction determine-sets (?shape ?disease)

		(bind ?recommended-sets-slot (send ?disease get-RecommendedNrOfSets))
		(bind ?recommended-sets (calculate-value-depending-on-shape ?shape ?recommended-sets-slot))
		?recommended-sets
)

;calculates intensity (strenght or cardio) depending on shape and disease
(deffunction determine-intensity (?shape ?disease ?activityType)

		(if(eq ?activityType cardio)
			then (bind ?recommended-intensity-slot (send ?disease get-RecommendedCardioIntensity))
			else (bind ?recommended-intensity-slot (send ?disease get-RecommendedStrengthIntensity)))
		(bind ?recommended-intensity (calculate-value-depending-on-shape ?shape ?recommended-intensity-slot))
		?recommended-intensity
)

;calculates number of exercises depending on shape and disease
(deffunction determine-number-of-exercises (?shape ?disease)
		(bind ?recommended-number-of-exercises-slot (send ?disease get-RecommendedNrOfExercises))
		(bind ?recommended-number-of-exercises (calculate-value-depending-on-shape ?shape ?recommended-number-of-exercises-slot))
		?recommended-number-of-exercises
	)

;fetches recommended exercisetype from disease instance
(deffunction determine-recommended-activities (?disease)

		(bind ?recommended-activities (send ?disease get-RecommendedExerciseType))
		?recommended-activities
	)

;finds session with corresponding reps
(deffunction find-session (?session-name ?reps)
		(bind ?session (str-cat ?session-name ?reps))
		(bind ?session-ins (find-instance ((?ins Session)) (eq ?ins:Name ?session)))
		?session-ins
)

	;puts session on day. helper function to improve readability
	(deffunction put-session-on-day (?session ?day)
		(send [tp] (sym-cat put- ?day) ?session)
	)

	;puts strength sessions on days. Strength session depends on fall status
	(deffunction construct-strength-trainingprogram (?fall ?strength-sessions ?number-of-exercises)
		(if (eq ?fall yes)
			then
				(if (eq ?strength-sessions 2)
				then
							(bind ?session (find-session StrengthBalanceLower ?number-of-exercises))
							(put-session-on-day ?session Monday)
							(bind ?session (find-session StrengthBalanceUpper ?number-of-exercises))
							(put-session-on-day ?session Friday)
				else (if (eq ?strength-sessions 3)
				then
							(bind ?session (find-session StrengthBalanceLower ?number-of-exercises))
							(put-session-on-day ?session Monday)
							(bind ?session (find-session Flexibility ?number-of-exercises))
							(put-session-on-day ?session Wednesday)
							(bind ?session (find-session StrengthBalanceUpper ?number-of-exercises))
							(put-session-on-day ?session Friday)
					)
				)

		else
			(if (eq ?strength-sessions 2)
			then
						(bind ?session (find-session StrengthLower ?number-of-exercises))
						(put-session-on-day ?session Monday)
						(bind ?session (find-session StrengthUpper ?number-of-exercises))
						(put-session-on-day ?session Friday)
			else (if (eq ?strength-sessions 3)
			then
						(bind ?session (find-session StrengthLower ?number-of-exercises))
						(put-session-on-day ?session Monday)
						(bind ?session (find-session Flexibility ?number-of-exercises))
						(put-session-on-day ?session Wednesday)
						(bind ?session (find-session StrengthUpper ?number-of-exercises))
						(put-session-on-day ?session Friday)
				)
			)
		)
	)

	;puts walking as activity on empty cardio sessions
	(deffunction fill-in-walking-on-empty-cardio-session ()
		(if (eq (nth 1 (send [tp] get-Monday)) nil)
			then (if (eq (length (send [tp] get-Monday)) 1)
				then (send [tp] put-Monday (find-instance ((?ins Session)) (eq ?ins:Name "Walking")) )))
		(if (eq (nth 1 (send [tp] get-Tuesday)) nil)
			then (if (eq (length (send [tp] get-Tuesday)) 1)
				then (send [tp] put-Tuesday (find-instance ((?ins Session)) (eq ?ins:Name "Walking")) )))
		(if (eq (nth 1 (send [tp] get-Wednesday)) nil)
			then (if (eq (length (send [tp] get-Wednesday)) 1)
				then (send [tp] put-Wednesday (find-instance ((?ins Session)) (eq ?ins:Name "Walking")) )))
		(if (eq (nth 1 (send [tp] get-Thursday)) nil)
			then (if (eq (length (send [tp] get-Thursday)) 1)
							then (send [tp] put-Thursday (find-instance ((?ins Session)) (eq ?ins:Name "Walking")) )))
		(if (eq (nth 1 (send [tp] get-Friday)) nil)
			then (if (eq (length (send [tp] get-Friday)) 1)
			then (send [tp] put-Friday (find-instance ((?ins Session)) (eq ?ins:Name "Walking")) )))
		(if (eq (nth 1 (send [tp] get-Saturday)) nil)
			then (if (eq (length (send [tp] get-Saturday)) 1)
			then (send [tp] put-Saturday (find-instance ((?ins Session)) (eq ?ins:Name "Walking")) )))
		(if (eq (nth 1 (send [tp] get-Sunday)) nil)
		 	then (if (eq (length (send [tp] get-Sunday)) 1)
			then (send [tp] put-Sunday (find-instance ((?ins Session)) (eq ?ins:Name "Walking")) )))

		)

	;print activity name on day
	(deffunction print-name-from-day (?nameOfDay)
			(if (eq (nth 1 (send [tp] (sym-cat "get-" ?nameOfDay))) nil)
				then (printout t "Rest")
				else (printout t (send (nth 1 (send [tp] (sym-cat "get-" ?nameOfDay))) get-Name))
			)
		)



;;****************
;;* DEFRULES *
;;****************


;Sets disease to a fact, if you have an unknown disease program stops
(defrule determine-disease-state ""
		(declare (salience 10))
    (not (disease-state disease ?))
    =>
    (if (yes-or-no-p "Do you have any diseases (yes/no)? ")
      then
      (bind ?response
         (ask-question
            "Which of the following diseases do you have?

             1 - Cardiac ischemia
             2 - Hypertension arterial
             3 - Cystic fibrosis
             4 - Diabetes mellitus type 2
             5 - Fragile elders
             6 - Obesity and overweight
             7 - Chronic obstructive pulmonary disease
             8 - Osteoporosis
             9 - Cancer
             10 - Rheumatoid arthritis
						 11 - Depression
						 12 - None of the above

						"
            1 2 3 4 5 6 7 8 9 10 11 12))
			(if (not(eq ?response 12))
			then
      	(assert (disease-state disease (choose-illness ?response)))
			else (printout t "Please go to your doctor. We refrain from advising a training program on diseases we have no knowledge on." crlf) (halt)
			)
			else (assert (disease-state disease (choose-illness healthy))))
		)

;Sets fall state to a fact
(defrule determine-fall-state ""
	(declare (salience 9))
	(not (fall-state fall ?))
	=>
	(if (yes-or-no-p "Have you had any falls recently? (yes/no)? ")
		then (assert (fall-state fall yes))
		else (assert (fall-state fall no))))


;Sets recommended activities to a fact
(defrule determine-recommended-activities ""

	(declare (salience 9))
	(disease-state disease ?disease)
	(not (recommended-activities ?activities))
	=>
	(assert (recommended-activities (determine-recommended-activities ?disease)))
)

;Sets physical shape level (low, mid, high) to a fact
(defrule determine-physical-shape ""
	(declare (salience 8))
	(not (physicalShape-state physicalShape ?))
	=>
	(bind ?response
		(ask-question
			"How would you define your level of physical shape? (low/mid/high)"
			low mid high))
	(assert (physicalShape-state physicalShape ?response)))

;Sets number of sessions (cardio and strength) to a fact, depending on physical shape and disease
(defrule determine-number-of-sessions ""
		(declare (salience 8))
		(physicalShape-state physicalShape ?shape)
		(disease-state disease ?disease)
		(not (number-of-sessions cardioSessions ?))
		(not (number-of-sessions strengthSessions ?))
	=>
		(assert (number-of-sessions cardioSessions (determine-number-of-sessions ?shape cardio ?disease)))
		(assert (number-of-sessions strengthSessions (determine-number-of-sessions ?shape strength ?disease)))
	)

	;Sets cardio session duration to a fact, depending on physical shape and disease
	(defrule determine-cardio-session-duration ""
		(declare (salience 8))
		(physicalShape-state physicalShape ?shape)
		(disease-state disease ?disease)
		(not (cardio-session-duration cardioDuration ?))
		=>
		(assert (cardio-session-duration cardioDuration (determine-cardio-duration ?shape ?disease)))
	)

	;Sets warm-up and cool-down duration to a fact, depending on physical shape
	(defrule determinge-warmup-cooldown-duration ""
		(declare (salience 8))
		(physicalShape-state physicalShape ?shape)
		(not (warmup-cooldown-session-duration warmup-cooldown-duration ?))
		=>
		(assert (warmup-cooldown-session-duration warmup-cooldown-duration (determine-warmup-cooldown-duration ?shape)))
	)

;Set reps to fact, depending on shape and disease
	(defrule determine-reps ""
		(declare (salience 8))
		(physicalShape-state physicalShape ?shape)
		(disease-state disease ?disease)
		(not (number-of-reps reps ?))
		=>
		(assert (number-of-reps reps (determine-reps ?shape ?disease)))
		(assert (number-of-reps wcsetduration (determine-wcsetduration ?shape)))
	)

	;Sets cardio number of sets to a fact, depending on physical shape and disease
	(defrule determine-sets ""
		(declare (salience 8))
		(physicalShape-state physicalShape ?shape)
		(disease-state disease ?disease)
		(not (number-of-sets sets ?))
		(not (number-of-sets wcsets ?))
		=>
		(assert (number-of-sets sets (determine-sets ?shape ?disease)))
		(assert (number-of-sets wcsets 4))
	)

	;Sets intensity (cardio and strength) to a fact, depending on physical shape and disease
	(defrule determine-intensity ""
		(declare (salience 8))
		(physicalShape-state physicalShape ?shape)
		(disease-state disease ?disease)
		(not (intensity cardio ?))
		(not (intensity strength ?))
		(not (intensity warmup-cooldown	?))
		=>
		(assert (intensity cardio (determine-intensity ?shape ?disease cardio)))
		(assert (intensity strength (determine-intensity ?shape ?disease strength)))
		(assert (intensity warmup-cooldown 10))
	)

	;Sets number of exercises to a fact, depending on physical shape and disease
	(defrule determine-number-of-exercises ""
		(declare (salience 8))
		(physicalShape-state physicalShape ?shape)
		(disease-state disease ?disease)
		(not (number-of-exercises exercises ?))
		=>
		(assert (number-of-exercises exercises (determine-number-of-exercises ?shape ?disease)))
	)



;Sets favourite activity to a fact
(defrule determine-preferred-leisure-activity ""
	(declare (salience 7))
  (not(preferred-leisure-activity activity ?))
  =>
  (bind ?response
    (ask-question
      "Do you practice, or would you like to practice, any of the following leisure activities?

        1. Golf
        2. Hiking
        3. Swimming
        4. Cycling
        5. None of the above

				"
        1 2 3 4 5))
				(if (not(eq ?response 5))
				then
        	(assert (preferred-leisure-activity activity (choose-activity ?response))))
					(assert (info-procurement finished))
  )

;Creates instance of TrainingProgram
(defrule create-initial-trainingprogram
 (declare (salience 10))
 =>
 (make-instance [tp] of TrainingProgram)
)

;Puts together strength sessions depending on fall status
(defrule construct-strength-trainingprogram ""
	(declare (salience 10))
	(fall-state fall ?fall)
	(number-of-sessions strengthSessions ?strength-sessions)
	(number-of-exercises exercises ?number-of-exercises)
	(not (strength-balance-fall-session session ?))
	=>
	(construct-strength-trainingprogram ?fall ?strength-sessions ?number-of-exercises)
)

;Puts favourite activity on Sundays
(defrule put-leisure-activity-on-sunday ""
	(declare (salience 6))
	(preferred-leisure-activity activity ?activity)
	=>
	(send [tp] put-Sunday ?activity)
)

;Puts together cardio session to the trainingprogrma
(defrule construct-cardio-trainingprogram
	(declare(salience 100))
	(disease-state disease ?disease)
	(number-of-sessions cardioSessions ?number)
	=>
	(if (eq ?number 2)
		then 	(send [tp] put-Tuesday (nth 1 (determine-recommended-activities ?disease)))
					(if (eq (length (send [tp] get-Sunday)) 0) then (send [tp] put-Sunday (nth 2 (determine-recommended-activities ?disease))))
					else (if (eq ?number 3)
						then 	(send [tp] put-Tuesday (nth 1 (determine-recommended-activities ?disease)))
									(send [tp] put-Thursday (nth 2 (determine-recommended-activities ?disease)))
									(if (eq (length (send [tp] get-Sunday)) 0) then (send [tp] put-Sunday (nth 3 (determine-recommended-activities ?disease))))
									else (if (eq ?number 4)
										then  (send [tp] put-Tuesday (nth 1 (determine-recommended-activities ?disease)))
													(send [tp] put-Thursday (nth 2 (determine-recommended-activities ?disease)))
													(send [tp] put-Saturday (nth 3 (determine-recommended-activities ?disease)))
													(if (eq (length (send [tp] get-Sunday)) 0) then (send [tp] put-Sunday (nth 4 (determine-recommended-activities ?disease))))
													else (if (eq ?number 5)
														then  (send [tp] put-Tuesday (nth 1 (determine-recommended-activities ?disease)))
																	(send [tp] put-Wednesday (nth 2 (determine-recommended-activities ?disease)))
																	(send [tp] put-Thursday (nth 3 (determine-recommended-activities ?disease)))
																	(send [tp] put-Saturday (nth 4 (determine-recommended-activities ?disease)))
																	(if (eq (length (send [tp] get-Sunday)) 0) then (send [tp] put-Sunday (nth 5 (determine-recommended-activities ?disease))))
																	else (if (eq ?number 6)
																		then  (send [tp] put-Tuesday (nth 1 (determine-recommended-activities ?disease)))
																					(send [tp] put-Wednesday (nth 2 (determine-recommended-activities ?disease)))
																					(send [tp] put-Thursday (nth 3 (determine-recommended-activities ?disease)))
																					(send [tp] put-Friday (nth 4 (determine-recommended-activities ?disease)))
																					(send [tp] put-Saturday (nth 5 (determine-recommended-activities ?disease)))
																					(if (eq (length (send [tp] get-Sunday)) 0) then (send [tp] put-Sunday (nth 6 (determine-recommended-activities ?disease))))
																					else (if (eq ?number 7)
																						then  (send [tp] put-Monday (nth 1 (determine-recommended-activities ?disease)))
																									(send [tp] put-Tuesday (nth 2 (determine-recommended-activities ?disease)))
																									(send [tp] put-Wednesday (nth 3 (determine-recommended-activities ?disease)))
																									(send [tp] put-Thursday (nth 4 (determine-recommended-activities ?disease)))
																									(send [tp] put-Friday (nth 5 (determine-recommended-activities ?disease)))
																									(send [tp] put-Saturday (nth 6 (determine-recommended-activities ?disease)))
																									(if (eq (length (send [tp] get-Sunday)) 0) then (send [tp] put-Sunday (nth 7 (determine-recommended-activities ?disease))))

																								)
																				)
																)
												)
									)
									)
									(fill-in-walking-on-empty-cardio-session)
								)

	;prints finished trainingprogram
	(defrule print-training-program
		(number-of-reps reps ?reps)
		(number-of-reps wcsetduration ?wcsetduration)
		(number-of-sets sets ?sets)
		(number-of-sets wcsets ?wcsets)
		(intensity strength ?sintensity)
		(intensity cardio ?cintensity)
		(intensity warmup-cooldown ?wcintensity)
		(cardio-session-duration cardioDuration ?cduration)
		(warmup-cooldown-session-duration warmup-cooldown-duration ?wcduration)
		(number-of-sessions strengthSessions ?strengthSessions)
		(number-of-sessions cardioSessions ?cardioSessions)
		(info-procurement finished)
		=>
		(printout t crlf crlf)
		(printout t "   ")
		(printout t "*** Your Weekly Training Program ***" crlf crlf)
		(printout t "        ")
		(printout t "Monday:     ")
		(print-name-from-day "Monday")
		(printout t crlf)
		(printout t "        ")
		(printout t "Tuesday:    ")
		(print-name-from-day Tuesday)
		(printout t crlf)
		(printout t "        ")
		(printout t "Wednesday:  ")
		(print-name-from-day "Wednesday")
		(printout t crlf)
		(printout t "        ")
		(printout t "Thursday:   ")
		(print-name-from-day "Thursday")
		(printout t crlf)
		(printout t "        ")
		(printout t "Friday:     ")
		(print-name-from-day "Friday")
		(printout t crlf)
		(printout t "        ")
		(printout t "Saturday:   ")
		(print-name-from-day "Saturday")
		(printout t crlf)
		(printout t "        ")
		(printout t "Sunday:     ")
		(print-name-from-day "Sunday")
		(printout t crlf crlf)
		(printout t "   ")
		(printout t "----------------------------------------" crlf crlf)
			(printout t "        ")
			(printout t "Info about your warm-up and cool-down" crlf crlf)
			(printout t "        ")
			(printout t "Activities: Walking and stretching" crlf )
			(printout t "        ")
			(printout t "Duration: " ?wcduration " minutes" crlf )
			(printout t "        ")
			(printout t "Set duration: " ?wcsetduration " seconds" crlf)
			(printout t "        ")
			(printout t "Number of sets: " ?wcsets crlf)
			(printout t "        ")
			(printout t "Intensity: " ?wcintensity " on the Borg scale")
			(printout t crlf crlf)
		(printout t "   ")
		(printout t "----------------------------------------" crlf crlf)
		(if (not (eq ?cardioSessions 0))
			then
			(printout t "        ")
			(printout t "Info about your cardio-sessions" crlf crlf)
			(printout t "        ")
			(printout t "Duration: " ?cduration " minutes" crlf )
			(printout t "        ")
			(printout t "Intensity: " ?cintensity " on the Borg scale")
			(printout t crlf crlf)
		(printout t "   ")
		)
		(if (not (eq ?strengthSessions 0))
			then
			(printout t "----------------------------------------" crlf crlf)
			(printout t "        ")
			(printout t "Info about your strength-sessions" crlf crlf)
			(printout t "        ")
			(printout t "Number of repetitions: " ?reps crlf)
			(printout t "        ")
			(printout t "Number of sets: " ?sets crlf)
			(printout t "        ")
			(printout t "Intensity: " ?sintensity " on the Borg scale")
			(printout t crlf crlf)
			(printout t "   ")
		)
		(printout t "************************************** " crlf crlf)
		)
