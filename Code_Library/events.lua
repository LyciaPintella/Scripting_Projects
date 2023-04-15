--[[
Automatically generated via export from C:/Users/Build/DaVE_local/branches/warhammer3/patch_2_4/warhammer/raw_data/db
Edit manually at your own risk
--]]

module(..., package.seeall)

-- Event tables

AdviceCleared = {}
AdviceDismissed = {}
AdviceFinishedTrigger = {}
AdviceIssued = {}
AdviceLevelChanged = {}
AdviceNavigated = {}
AdviceSuperseded = {}
AreaCameraEntered = {}
AreaEntered = {}
AreaExited = {}
ArmyBribeAttemptFailure = {}
ArmySabotageAttemptFailure = {}
ArmySabotageAttemptSuccess = {}
BattleAideDeCampEvent = {}
BattleBeingFought = {}
BattleBoardingActionCommenced = {}
BattleCaptureLocationCaptureCommenced = {}
BattleCaptureLocationCaptureCompleted = {}
BattleCommandingShipRouts = {}
BattleCommandingUnitRouts = {}
BattleCompleted = {}
BattleCompletedCameraMove = {}
BattleConflictPhaseCommenced = {}
BattleDeploymentPhaseCommenced = {}
BattleSessionEnded = {}
BattleShipAttacksEnemyShip = {}
BattleShipCaughtFire = {}
BattleShipMagazineExplosion = {}
BattleShipRouts = {}
BattleShipRunAground = {}
BattleShipSailingIntoWind = {}
BattleShipSurrendered = {}
BattleTimeTrigger = {}
BattleUnitAttacksBuilding = {}
BattleUnitAttacksEnemyUnit = {}
BattleUnitAttacksWalls = {}
BattleUnitCapturesBuilding = {}
BattleUnitDestroysBuilding = {}
BattleUnitRouts = {}
BattleUnitUsingBuilding = {}
BattleUnitUsingWall = {}
BuildingCancelled = {}
BuildingCardSelected = {}
BuildingCompleted = {}
BuildingConstructionIssuedByPlayer = {}
BuildingInfoPanelOpenedCampaign = {}
BuildingLifecycleDevelops = {}
CameraMoverCancelled = {}
CameraMoverFinished = {}
CampaignArmiesMerge = {}
CampaignBuildingDamaged = {}
CampaignCoastalAssaultOnCharacter = {}
CampaignCoastalAssaultOnGarrison = {}
CampaignEffectsBundleAwarded = {}
CampaignSessionEnded = {}
CampaignSettlementAttacked = {}
CampaignTimeTrigger = {}
CaravanCompleted = {}
CaravanEvent = {}
CaravanMoved = {}
CaravanReturned = {}
CaravanSpawned = {}
CaravanWaylaid = {}
CharacterAncillaryGained = {}
CharacterArmoryItemEquipped = {}
CharacterArmoryItemUnequipped = {}
CharacterArmoryItemUnlocked = {}
CharacterAssignedToPost = {}
CharacterAttacksAlly = {}
CharacterBecomesFactionLeader = {}
CharacterBesiegesSettlement = {}
CharacterBlockadedPort = {}
CharacterBrokePortBlockade = {}
CharacterCanLiberate = {}
CharacterCandidateBecomesMinister = {}
CharacterCapturedSettlementUnopposed = {}
CharacterCharacterTargetAction = {}
CharacterComesOfAge = {}
CharacterCompletedBattle = {}
CharacterConvalescedOrKilled = {}
CharacterCreated = {}
CharacterDamagedByDisaster = {}
CharacterDeselected = {}
CharacterDestroyed = {}
CharacterDiscovered = {}
CharacterDisembarksNavy = {}
CharacterEmbarksNavy = {}
CharacterEntersAttritionalArea = {}
CharacterEntersGarrison = {}
CharacterFactionCompletesResearch = {}
CharacterFamilyRelationDied = {}
CharacterFinishedMovingEvent = {}
CharacterGarrisonTargetAction = {}
CharacterInfoPanelOpened = {}
CharacterInitiativeActivationChangedEvent = {}
CharacterLeavesGarrison = {}
CharacterLoanedEvent = {}
CharacterLootedSettlement = {}
CharacterMarriage = {}
CharacterMilitaryForceTraditionPointAllocated = {}
CharacterMilitaryForceTraditionPointAvailable = {}
CharacterParticipatedAsSecondaryGeneralInBattle = {}
CharacterPerformsActionAgainstFriendlyTarget = {}
CharacterPerformsSettlementOccupationDecision = {}
CharacterPostBattleCaptureOption = {}
CharacterPromoted = {}
CharacterRankUp = {}
CharacterRankUpNeedsAncillary = {}
CharacterRazedSettlement = {}
CharacterRecruited = {}
CharacterRelativeKilled = {}
CharacterReplacingGeneral = {}
CharacterSackedSettlement = {}
CharacterSelected = {}
CharacterSettlementBesieged = {}
CharacterSettlementBlockaded = {}
CharacterSkillPointAllocated = {}
CharacterSkillPointAvailable = {}
CharacterSuccessfulArmyBribe = {}
CharacterSuccessfulConvert = {}
CharacterSuccessfulDemoralise = {}
CharacterSuccessfulInciteRevolt = {}
CharacterTurnEnd = {}
CharacterTurnStart = {}
CharacterWaaaghOccurred = {}
CharacterWithdrewFromBattle = {}
CinematicTrigger = {}
CinematicUIDisabled = {}
CinematicUIEnabled = {}
ClimatePhaseChange = {}
ComponentAnimationFinished = {}
ComponentAnimationStarted = {}
ComponentCreated = {}
ComponentLClickUp = {}
ComponentLDBLClickUp = {}
ComponentLinkClicked = {}
ComponentLinkMouseOver = {}
ComponentMouseOff = {}
ComponentMouseOn = {}
ComponentMoved = {}
ComponentRClickUp = {}
ContextScriptError = {}
ContextTriggerEvent = {}
ConvertAttemptFailure = {}
CorruptionCounterIntervalEvent = {}
CustomLoadingScreenCreated = {}
DebugCharacterEvent = {}
DebugFactionEvent = {}
DebugRegionEvent = {}
DemoraliseAttemptFailure = {}
DilemmaChoiceMadeEvent = {}
DilemmaGenerationFailedEvent = {}
DilemmaIssuedEvent = {}
DilemmaOrIncidentStarted = {}
DillemaOrIncidentStarted = {}
DiplomacyManipulationExecutedEvent = {}
DiplomacyNegotiationStarted = {}
DiplomaticOfferRejected = {}
DuelDemanded = {}
DummyEvent = {}
EncylopediaEntryRequested = {}
EndOfRound = {}
EventFeedEventRecordedEvent = {}
EventMessageOpenedBattle = {}
EventMessageOpenedCampaign = {}
FactionAboutToEndTurn = {}
FactionBecomesIdleHuman = {}
FactionBecomesLiberationProtectorate = {}
FactionBecomesLiberationVassal = {}
FactionBecomesWorldLeader = {}
FactionBeginTurnPhaseNormal = {}
FactionBribesUnit = {}
FactionCapturesWorldCapital = {}
FactionCharacterTagAddedEvent = {}
FactionCharacterTagEntryEvent = {}
FactionCharacterTagRemovedEvent = {}
FactionCivilWarOccured = {}
FactionCookedDish = {}
FactionEncountersOtherFaction = {}
FactionFameLevelUp = {}
FactionGainedAncillary = {}
FactionHordeStatusChange = {}
FactionJoinsConfederation = {}
FactionLeaderDeclaresWar = {}
FactionLeaderIssuesEdict = {}
FactionLeaderSignsPeaceTreaty = {}
FactionLiberated = {}
FactionRoundStart = {}
FactionSubjugatesOtherFaction = {}
FactionTurnEnd = {}
FactionTurnStart = {}
FirstTickAfterNewCampaignStarted = {}
FirstTickAfterWorldCreated = {}
ForceAdoptsStance = {}
ForcePlagueStateChanged = {}
ForeignSlotBuildingCompleteEvent = {}
ForeignSlotBuildingDamagedEvent = {}
ForeignSlotManagerCreatedEvent = {}
ForeignSlotManagerDiscoveredEvent = {}
FortSelected = {}
FrontendScreenTransition = {}
GarrisonAttackedEvent = {}
GarrisonOccupiedEvent = {}
GarrisonResidenceCaptured = {}
GarrisonResidenceExposedToFaction = {}
HaveCharacterWithinRangeOfPositionMissionEvaluationResultEvent = {}
HelpPageIndexGenerated = {}
HelpPageShowContents = {}
HeroCharacterParticipatedInBattle = {}
HistoricBattleEvent = {}
HistoricalCharacters = {}
HistoricalEvents = {}
HudRefresh = {}
ImprisonmenRejectiontEvent = {}
ImprisonmentEvent = {}
ImprisonmentRejectionEvent = {}
IncidentEvent = {}
IncidentFailedEvent = {}
IncidentOccuredEvent = {}
InciteRevoltAttemptFailure = {}
IncomingMessage = {}
LandTradeRouteRaided = {}
LoadingGame = {}
LoadingScreenAfterEnvCreated = {}
LoadingScreenDismissed = {}
LocationEntered = {}
LocationUnveiled = {}
MPLobbyChatCreated = {}
MapIconMoved = {}
MilitaryForceBuildingCancelled = {}
MilitaryForceBuildingCompleteEvent = {}
MilitaryForceCreated = {}
MilitaryForceDevelopmentPointChange = {}
MilitaryForceInfectionEvent = {}
MissionCancelled = {}
MissionFailed = {}
MissionGenerationFailed = {}
MissionIssued = {}
MissionNearingExpiry = {}
MissionSucceeded = {}
ModelCreated = {}
MovementPointsExhausted = {}
MultiTurnMove = {}
NegativeDiplomaticEvent = {}
NewCampaignStarted = {}
NewCharacterEnteredRecruitmentPool = {}
NewSession = {}
PanelAdviceRequestedBattle = {}
PanelAdviceRequestedCampaign = {}
PanelClosedBattle = {}
PanelClosedCampaign = {}
PanelOpenedBattle = {}
PanelOpenedCampaign = {}
PendingActionsMaskReset = {}
PendingBankruptcy = {}
PendingBattle = {}
PooledResourceChanged = {}
PooledResourceEffectChangedEvent = {}
PooledResourceRegularIncome = {}
PositiveDiplomaticEvent = {}
PostBattleCaptiveOptionOutcomeApplied = {}
PostbattleRewardAnimationsFinished = {}
PreBattle = {}
ProvinceGovernorAppointed = {}
ProvinceGovernorMoved = {}
ProvinceGovernorshipNewDecisionAvailable = {}
QueryShouldWaylayCaravan = {}
QueryTeleportationNetworkShouldHandoverCharacterNodeClosure = {}
RealTimeTrigger = {}
RecruitmentItemCancelledByPlayer = {}
RecruitmentItemIssuedByPlayer = {}
RegionAbandonedWithBuildingEvent = {}
RegionBuildingCancelled = {}
RegionFactionChangeEvent = {}
RegionGainedDevelopmentPoint = {}
RegionInfectionEvent = {}
RegionIssuesDemands = {}
RegionPlagueStateChanged = {}
RegionRebels = {}
RegionRiots = {}
RegionSelected = {}
RegionStrikes = {}
RegionTurnEnd = {}
RegionTurnStart = {}
RegionWindsOfMagicChanged = {}
ResearchCompleted = {}
ResearchStarted = {}
RitualCancelledEvent = {}
RitualCompletedEvent = {}
RitualEvent = {}
RitualStartedEvent = {}
SabotageAttemptFailure = {}
SabotageAttemptSuccess = {}
SavingGame = {}
ScriptTriggeredVOFinished = {}
ScriptedAgentCreated = {}
ScriptedAgentCreationFailed = {}
ScriptedCharacterUnhidden = {}
ScriptedCharacterUnhiddenFailed = {}
ScriptedForceCreated = {}
SeaTradeRouteRaided = {}
SettlementDeselected = {}
SettlementOccupied = {}
SettlementSelected = {}
SharedStateChanged = {}
SharedStateRemoved = {}
SharedStatesFinishedLoading = {}
ShortcutPressed = {}
ShortcutTriggered = {}
SiegeLifted = {}
SlotOpens = {}
SlotRoundStart = {}
SlotSelected = {}
SlotTurnStart = {}
SpawnableForceCreatedEvent = {}
StartRegionPopupVisible = {}
StartRegionSelected = {}
StrategicOverviewPanelOpenedCampaign = {}
StreakEffectLevelsEntered = {}
TechnologyInfoPanelOpenedCampaign = {}
TeleportationNetworkCharacterInteractionStarted = {}
TeleportationNetworkCharacterNodeClosureHandedOver = {}
TeleportationNetworkMoveCompleted = {}
TeleportationNetworkMoveStart = {}
TeleportationNetworkNodeClosed = {}
TeleportationNetworkNodeEvent = {}
TeleportationNetworkNodeOpened = {}
TestEvent = {}
TooltipAdvice = {}
TradeLinkEstablished = {}
TradeNodeConnected = {}
TradeRouteEstablished = {}
TriggerPostBattleAncillaries = {}
UICreated = {}
UIDestroyed = {}
UIReloaded = {}
UITrigger = {}
UngarrisonedFort = {}
UniqueAgentDespawned = {}
UniqueAgentSpawned = {}
UnitBeingCharged = {}
UnitCompletedBattle = {}
UnitConverted = {}
UnitCreated = {}
UnitDisbanded = {}
UnitDisembarkCompleted = {}
UnitEffectPurchased = {}
UnitEffectUnpurchased = {}
UnitMergedAndDestroyed = {}
UnitSelectedCampaign = {}
UnitTrained = {}
UnitTurnEnd = {}
UnitUpgraded = {}
VictoryConditionFailed = {}
VictoryConditionMet = {}
WarCoordinationRequestIssued = {}
WoMCompassUserActionTriggeredEvent = {}
WoMCompassUserDirectionSelectedEvent = {}
WorldCreated = {}
WorldStartRound = {}
WorldStartTurn = {}
historical_events = {}