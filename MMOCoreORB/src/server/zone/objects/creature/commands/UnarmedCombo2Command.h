/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef UNARMEDCOMBO2COMMAND_H_
#define UNARMEDCOMBO2COMMAND_H_

#include "CombatQueueCommand.h"

class UnarmedCombo2Command : public CombatQueueCommand {
public:

	UnarmedCombo2Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		return doCombatAction(creature, target);
	}

};

#endif //UNARMEDCOMBO2COMMAND_H_
