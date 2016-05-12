waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["asylum","Asylum Gaming"];
player createDiarySubject ["copinfo", "Police Information"];
player createDiarySubject ["generalrules","Rules"];
player createDiarySubject ["laws","Laws"];
player createDiarySubject ["Features","Features"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/

// Asylum Section
	player createDiaryRecord ["asylum",
		[
			"Teamspeak",
				"
				The Asylum Teamspeak can be found at:<br/><br/>
				ts3.gaming-asylum.com<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["asylum",
		[
			"Website/Forums",
				"
				http://www.gaming-asylum.com<br/>
				This is also where ban appeals will be made. Player statistics and account control also available.<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["asylum",
		[
			"Donations",
				"
				Donations keep the server running, anything and everything helps.<br/>
				Donate securely with PayPal<br/><br/>
				All the details you need can be found on our forums.<br/><br/>
				"
		]
	];
		
	
// General Rules

	player createDiaryRecord ["generalrules",
		[
			"Cop Restrictions",
				"
				Asylum Police Department Officer Regulations

				These are the restrictions put on all Asylum Police Department (APD) officers and breaking any of these can be punishable by demotion or removal from the force. <br/>

				1. Cops must stay in police channels on teamspeak with their current in-game name.<br/>

				2. No ticket/arrest will be issued more than one time per bounty.<br/>

				3. Cops shall not play as Police while they have an existing bounty on their head, it must be legally resolved (Paying ticket or being killed by an officer) before switching from civilian to cop.<br/>

				4. Any police engagement must be complete before vehicles are able to be impounded and/or searched.<br/>

				5. Cops are not allowed to stay in a rebel or illegal area for more than 2 minutes after a conflict is resolved.<br/>

				6. A person or vehicle cannot be searched without consent unless the officer has probable cause and states at time of the search, or martial law is in progress.<br/>

				7. All people around a crime are able to be restrained and held for a maximum of 10 minutes or until the issue is resolved.<br/>

				8. Less than lethal ammunition must be used unless given orders from the highest ranking officer online or in teamspeak.<br/>

				9. Cops are not allowed to leak information to civs.<br/>

				10. Cops may not accept any form of bribery or payment.<br/>

				11. Cops may not grant special favors to civs.<br/>

				12. Cops may not tell cops what they can or cannot do while they are playing civ.<br/>

				13. Cops under no circumstances can be in the police teamspeak channels while they are logged on as civ unless they are part of an official RP event.<br/>
				"
		]

	];

	player createDiaryRecord ["generalrules",
		[
			"Civ Rules",
				"
				1: If you or your group intends to itiate a terrorist action upon a city, a message must be sent to the police 5 minutes prior to the attacking. Failure to do this is considered RDM.<br/>

				2: Once killed you are not allowed to seek revenge on the person or group that killed you.<br/>

				3: Civilians cannot keep anyone restrained or hostage for more then ten minutes without gaining the consent of the victim.<br/>
				"
		]
	];
	
	player createDiaryRecord ["generalrules",
		[
			"General Rules",
				"
				These are the rules enforced on the Asylum Servers, anyone breaking any of these is subject to any punishment deemed appropriate by any server administrator.  Punishment can only be rescinded with the approval of the admin that imposed it.  The rules are not designed to shield players from the consequences of their own actions or lack of awareness. Not knowing about a rule is not reason to break it and you may still be punished to the same extent as if you were aware of it.
				<br/><br/>
				1. No Random Death-matching (RDM).  RDM is the act of killing a player outside of illegal areas without valid Role-play(RP). RP is defined as “taking a role of an existing or made up character or person and acting it out with a partner taking someone else's role.” This means RP requires some form of response from the target, whether it be verbal or physical.<br/>
				  It is not considered RDMing if players die for reasons   
				  such as: ignoring martial law warnings, ignoring demands 
				  from any player or, trying to drive through on-going             
				      gunfire etc.<br/>
				  Players in and around illegal areas are responsible for 
				  their own survival as RDM rules do not apply. Illegal        
				      areas are marked in red text on the map and include drug       
				harvesting, processing areas, drug dealers and rebel      
				       outposts.<br/>

				2. No Vehicle Death-matching (VDM). VDM is the act of using a Vehicle as a weapon. You can use a vehicle to defend yourself if you are in immediate danger and fleeing is not an option. Offensive uses of vehicles include: running innocent people over, ramming into stationary vehicles with malicious intent and using your vehicle as a weapon.<br/>

				3. No Combat Logging. Combat Logging is the act of disconnecting or re-spawning while being engaged by another player in either RP or hostile situations.<br/>

				4. Players must have in-game sound effects turned up so they can hear direct voice communication from other players. This is necessary for prompt RP, It is your own fault if you do not have a microphone and you are killed while you are typing.<br/>

				5. Warning shots are allowed at helicopters that are hovering or attempting to land near your position.  If the helicopter does not turn away shooting it down is allowed.<br/>

				6. No Exploiting, Hacking, Duping or any other action that gives you an unfair advantage over other players.<br/>

				7. Almost any action is excusable as long a it has a legitimate role-play.<br/>
				"
		]
	];

// Laws

	player createDiaryRecord ["laws",
		[
			"Section E - Water",
				"
				<u>E - 01<u/><br/>
				It is unlawful to ram another player’s vessel with your own.<br/><br/>

				E - 02<br/>
				It is unlawful to poach the endangered Altis Sea-turtle.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["laws",
		[
			"Section D - Firearm",
				"
				D - 01<br/>
				It is unlawful to carry a legal weapon (weapon at civilian gun store) without a proper licence. A legal weapon is any weapon that was legally bought from a civilian gun store with a proper licence.<br/><br/>

				D - 02<br/>
				It is unlawful to carry any firearm that can be purchased at the rebel gun store, a police weapon, and/or a firearm obtained without a licence.<br/><br/>

				D - 03<br/>
				It is unlawful to openly carry any firearm while in a major town. Major towns include: Kavala, Sofia, Pyrgos and Athira.<br/><br/>

				D - 04<br/>
				It is unlawful to discharge any weapon inside town limits. Major towns include: Kavala, Sofia, Pyrgos and Athira.<br/><br/>

				D - 05<br/>
				It is unlawful to carry more than 3 weapons at a time(trafficking).<br/><br/>
				"
		]
	];

	player createDiaryRecord ["laws",
		[
			"Section C - Traffic",
				"
				C - 01<br/>
				Speeding is unlawful. Speeding is considered driving above the set speed limit on a road. Speed limits on Altis are as follows: Highways - 80 kph, City Roads - 50 kph, Dirt Roads - 50 kph.<br/><br/>

				C - 02<br/>
				Reckless Driving is unlawful. Any person who drives any vehicle in willful or wanton disregard for the safety of persons or property is guilty of reckless driving.
				Note: Types of Reckless Driving defined in the offical doccuments.<br/><br/>

				C - 03<br/>
				It is unlawful to drive in any low-light or no-light situations without headlights turned on.<br/><br/>

				C - 04<br/>
				It is unlawful to fail to stop at any police checkpoint.<br/><br/>

				C - 05<br/>
				It is unlawful to drive on the left-hand side of the road.<br/><br/>

				C - 06<br/>
				It is unlawful to offroad. Offroading is driving more than 10 (ten) meters off of legally marked roads on public property. Being caught offroading counts as probable cause to search.<br/><br/>

				C - 07<br/>
				It is unlawful to own or operate an illegal vehicle. Illegal vehicles include the Ifrit and the Armed Offroad. These vehicles are subject to immediate seizure.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["laws",
		[
			"Section B - Criminal",
				"
				B - 01 <br/>
				Disturbances<br/>
						B - 01 - 2<br/>
						It is unlawful to commit insurance fraud. “Insurance fraud” means intentionally stepping in front of or obstructing the path of a motor vehicle.<br/>
						B - 01 - 3<br/>
						It is unlawful to commit noise disturbance. “Noise disturbance” means any sound which annoys, disturbs, or perturbs reasonable persons with normal sensitivities, or any sound which unreasonably injures or endangers the comfort, repose, health, hearing, peace, or safety of persons or animals.<br/>
						B - 01 - 4<br/>
						It is unlawful to harass a police officer. “Harassment” means the act of systematic and/or continued unwanted and annoying actions of one party or a group, including threats and demands. <br/>
						B - 01 - 5<br/>
						It is unlawful to disobey a police officer who is currently enforcing the law. <br/><br/>

				B - 02<br/>
				It is unlawful to murder. Murder is the unlawful killing of a human being with malice aforethought. Every murder perpetrated by poison, lying in wait, or any other kind of willful, deliberate, malicious, and premeditated killing; or committed in the perpetration of, or attempt to perpetrate, any arson, escape, murder, kidnapping, treason, espionage, sabotage, burglary, or robbery; or perpetrated from a premeditated design unlawfully and maliciously to effect the death of any human being other than him who is killed, is murder. Murder is synonymous with Manslaughter.<br/>
						B - 02 - 2<br/>
						Murder in self-defence is lawful. However, to be excused as self-defence the perpetrator must immediately contact the Asylum Police Department, and provide sufficient evidence for the charge to be lessened, otherwise the perpetrator will be charged for Murder.<br/>
						B - 02 - 3<br/>
						Attempted Murder is unlawful. “Attempted Murder” is the failed attempt at murder for any of the reasons considered to be murder.<br/><br/>

				B - 03<br/>
				Kidnapping is unlawful. “Kidnapping” is when an individual unlawfully seizes, confines, inveigles, decoys, kidnaps, abducts, or carries away and holds for ransom or reward or otherwise any person, except in the case of a minor by the parent thereof or the case where the person is among the officers of the Asylum Police Department and any such act against the person is done while the person is engaged in, or on account of, the performance of official duties.<br/><br/>	

				B - 04<br/>
				Stealing or going through another person’s possessions is unlawful. This includes backpacks and vehicle inventory. Going into your own inventory while next to another player does not excuse you from this law because there is no proof which inventory you are going in.	<br/><br/>	

				B - 05<br/>
				Grand Theft Auto is unlawful. This includes the lockpicking of, getting in of, or stealing a vehicle that is not yours without the explicit permission of the owner.<br/><br/>

				B- 06<br/>
				Robbery is against the law. This includes the robbing of persons and gas stations.<br/><br/>

				B - 07<br/>
				Controlled substance possession and/or trafficking is unlawful. The following sub-articles contain specific controlled substances.<br/>
						B - 07 - 2<br/>
						Cannabis and marijuana are considered controlled substances.<br/>
						B - 07 - 3<br/>
						Heroin, both processed and unprocessed, is a controlled substances.<br/>
						B - 07 - 4<br/>
						Cocaine, both processed and unprocessed, is a controlled substance.<br/>
						B - 07 - 5<br/>
						Ephedra and its derivative products, meth cocktails and crystal methamphetamine, are all considered controlled substances.<br/>
						B - 07 - 6<br/>
						Sea-turtle poaching is unlawful and sea-turtle meat is a controlled substance.<br/><br/>

				B - 08<br/>
				Evading lawful arrest by an Asylum Police Department officer is unlawful. This consists of any resistance to being arrested, whether it be verbal, physical or by fleeing. This also includes assisting another individual evade arrest. Fleeing a law enforcement officer in a motor vehicle is reckless driving in itself. (see Section C Article 2).<br/><br/>

				B - 09<br/>
				Robbing the Federal Reserve is unlawful. This includes being the individual robbing the reserve, assisting said individual in any manner during the course of the robbery, interfering in any way with officers responding to the Federal Reserve Robbery, or being on the Federal Reserve island.<br/><br/>			

				B - 10<br/>
				Declaring terrorism or assisting in or performing any act of terror is unlawful.<br/><br/>

				B - 11<br/>
				Destruction of Property is unlawful. “Property” includes vehicles and houses that belong to other players.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["laws",
		[
			"Section A - Aviation",
				"
				A - 01<br/>
				A minimum altitude of 300m must be maintained when flying aircraft over city limits<br/><br/>

				A - 02<br/>
				Landing is not permitted within city limits unless at a helipad.<br/><br/>

				A - 03<br/>
				Collision lights must be on at all times while operating aircraft.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["laws",
		[
			"Introduction",
				"
				These are the complete and encompassing laws of Altis, for a condensed version view the ticket guide referenced by the Asylum Police Department in the law enforcement teamspeak channel.
				"
		]
	];

// Police Information

	player createDiaryRecord ["copinfo",
		[
			"Chain of Command",
			"
			The highest ranking officer on duty is in charge of the police force. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

			Police Chain of Command:<br/>
			1. Captain<br/>
			2. Lieutenant<br/>
			3. Sergeant<br/>
			4. Constable<br/>
			5. Cadet<br/><br/>
			"
		]
	];

	player createDiaryRecord ["copinfo",
		[
			"Join the APD",
			"
			The Asylum Police Department (APD) is a whitelisted only police force. To join the force submit an application on our forums: www.gaming-asylum.com<br/><br/>
			If your application is accepted on the forums you can then come into our teamspeak for an interview. The interview covers the two doccuments listed in the teamspeak whitelist applicants channel.<br/>
			"
		]
	];

// Features Section
	player createDiaryRecord ["features",
		[
			"Features",
				"
					1. Player Housing:The first step to owning a home is obtaining a home owner license from the DMV. With the license, find a vacant home in the world and you may see a buy house action menu option. You may lock doors of your homes and in the near future they will also grant you a storage. Larger and more expensive homes will offer more storage ability. You have the ability to spawn at your home upon death. The ability to purchase garages will be coming soon.<br/>    
					2. Hostage Taking:You can take hostages in Asylum Life by having another player press the TAB key, this will activate surrnder mode. When your target is in surrender mode, you can restrain, escort, and put and pull them out of vehicles.<br/>
					3. Weather System: Based off real world weather, our weather system in Asylum life is forcastable through a widget on our site www.gaming-asylum.com<br/>    
					4. Flashbang Grenades: Purchasable by cops, Asylum life offers cops the ability to blind the criminals of Altis.<br/>    
					5. Full Saving: On Aslyum Life, everything saves. Your location, your equipment, your inventory items, and your vehicles. A reboot will never rob you of all your work again.<br/>     
					6. Crafting System: By gathering multiple resources from various areas, you can now combine them to create new materials and items. The first iteration of this is Meth, with taking multiple resources from various fields and combining them to make a Meth Cocktail you can then cook this new item into Meth. This has wide implications and will be expanded upon.<br/>
					7. Car Jacking: Coming up to any vehicle that is unlocked with a gun out will give the player the option to Pull out of Vehicle, which will pull all players out of the vehicle.<br/>
				"
		]
	];
	
	
// Controls Section
	player createDiaryRecord ["controls",
		[
			"",
				"
				1: Open wanted list<br/>
				3 or TAB: Surrender Mode<br/>
				4 or H: Holster active weapon<br/>
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				"
		]
	];