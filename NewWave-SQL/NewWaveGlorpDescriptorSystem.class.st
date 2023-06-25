Class {
	#name : #NewWaveGlorpDescriptorSystem,
	#superclass : #DescriptorSystem,
	#category : #'NewWave-SQL'
}

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWActivation: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #activated type: Boolean.
	aClassModel newAttributeNamed: #activationTime type: DateAndTime.
	aClassModel newAttributeNamed: #completed type: Boolean.
	aClassModel newAttributeNamed: #completionTime type: DateAndTime.
	aClassModel newAttributeNamed: #node type: NWNode.
	"aClassModel newAttributeNamed: #executor type: NWExecutor.
	aClassModel newAttributeNamed: #properties.
	aClassModel newAttributeNamed: #state."
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWBaseActivity: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #boundaryEvents collectionOf: NWBoundaryEvent.
	aClassModel newAttributeNamed: #dataOutputAssociations collectionOf: NWDataObject.
	"aClassModel newAttributeNamed: #elements collectionOf: Object."
	aClassModel newAttributeNamed: #name type: String.
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWBaseTask: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #boundaryEvents collectionOf: NWBoundaryEvent.
	aClassModel newAttributeNamed: #dataOutputAssociations collectionOf: NWDataObject.
	"aClassModel newAttributeNamed: #elements collectionOf: Object."
	aClassModel newAttributeNamed: #name type: String.
	(aClassModel newAttributeNamed: #valueAsJSON) useDirectAccess: false.
	aClassModel newAttributeNamed: #value.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWBoundaryEvent: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #eventDefinitions collectionOf: NWEventDefinition.
	aClassModel newAttributeNamed: #attachedToRef type: NWNode.
	aClassModel newAttributeNamed: #cancelActivity type: Boolean.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWDataObject: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #name type: String.
	aClassModel newAttributeNamed: #itemDef.
	(aClassModel newAttributeNamed: #valuedDataObjectAsJSON) useDirectAccess: false.
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWEndEvent: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #eventDefinitions collectionOf: NWEventDefinition.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWEvent: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #eventDefinitions collectionOf: NWEventDefinition. 
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWEventBasedGateway: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWEventDefinition: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String. 
	 
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWExclusive: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWExecutor: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #flowHandler type: NWFlowHandler.
	aClassModel newAttributeNamed: #processHandler type: NWProcessHandler.
	(aClassModel newAttributeNamed: #taskResultAsJSON) useDirectAccess: false.
	"aClassModel newAttributeNamed: #activations collectionOf: NWActivation."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWFlowHandler: aClassModel [
	aClassModel newAttributeNamed: #id.
	"aClassModel newAttributeNamed: #workerid type: String."
	aClassModel newAttributeNamed: #sequences collectionOf: NWSequence.
	aClassModel newAttributeNamed: #node type: NWNode.
	aClassModel newAttributeNamed: #currSeq type: NWSequence.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWGateway: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWGroup: aClassModel [
	aClassModel newAttributeNamed: #groupId.
	aClassModel newAttributeNamed: #groupName type: String.
	aClassModel newAttributeNamed: #subgroups collectionOf: NWGroup.
	aClassModel newAttributeNamed: #users collectionOf: NWUser.
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWInclusive: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWMembership: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #groupId.
	aClassModel newAttributeNamed: #userId.
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWNode: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWNullNode: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWParallel: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWParallelJoin: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWProcess: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #initialFlowElement type: NWNode.
	aClassModel newAttributeNamed: #name type: String. 
	aClassModel newAttributeNamed: #managementName type: String.
	aClassModel newAttributeNamed: #processInstanceId type: String.
	aClassModel newAttributeNamed: #dataObjects collectionOf: NWDataObject.  
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWProcessHandler: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #activations dictionaryFrom: String to: NWActivation.
	"(aClassModel newAttributeNamed: #activationsAsCollection collectionOf: NWActivation) useDirectAccess: false." 
	aClassModel newAttributeNamed: #process type: NWProcess.
	aClassModel newAttributeNamed: #mainExecutor type: NWExecutor.
	aClassModel newAttributeNamed: #subExecutors collectionOf: NWSubExecutor. 
	"(aClassModel newAttributeNamed: #running collectionOf: NWActivation) useDirectAccess: false." 
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWScriptTask: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #boundaryEvents collectionOf: NWBoundaryEvent.
	aClassModel newAttributeNamed: #dataOutputAssociations collectionOf: NWDataObject.
	"aClassModel newAttributeNamed: #elements collectionOf: Object."
	aClassModel newAttributeNamed: #name type: String.
	aClassModel newAttributeNamed: #value.
	(aClassModel newAttributeNamed: #scriptAsString) useDirectAccess: false.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWSequence: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #sourceRef type: NWNode.
	aClassModel newAttributeNamed: #targetRef type: NWNode.
	(aClassModel newAttributeNamed: #conditionAsString) useDirectAccess: false. 
	 
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWStartEvent: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #eventDefinitions collectionOf: NWEventDefinition.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWSubExecutor: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #executor type: NWExecutor.
	aClassModel newAttributeNamed: #processHandler type: NWProcessHandler.
	aClassModel newAttributeNamed: #previousNode type: NWNode.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWTimerTempDefinition: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #timeDate type: DateAndTime.
	aClassModel newAttributeNamed: #repeat type: Boolean.
	(aClassModel newAttributeNamed: #everyAsSeconds) useDirectAccess: false. 
	 
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWUser: aClassModel [
	aClassModel newAttributeNamed: #userId.
	aClassModel newAttributeNamed: #userame type: String.
	aClassModel newAttributeNamed: #firstname type: String.
	aClassModel newAttributeNamed: #lastname type: String.
	aClassModel newAttributeNamed: #email type: String.
	aClassModel newAttributeNamed: #password type: String.
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWUserManagement: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #pathToGroups type: String.
	aClassModel newAttributeNamed: #pathToUsers type: String.
	aClassModel newAttributeNamed: #users collectionOf: NWUser.
	aClassModel newAttributeNamed: #groups collectionOf: NWGroup.
	aClassModel newAttributeNamed: #memberships collectionOf: NWMembership.
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWUserTask: aClassModel [
	(aClassModel newAttributeNamed: #idAsInt) useDirectAccess: false.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #boundaryEvents collectionOf: NWBoundaryEvent.
	aClassModel newAttributeNamed: #dataOutputAssociations collectionOf: NWDataObject.
	"aClassModel newAttributeNamed: #elements collectionOf: Object."
	aClassModel newAttributeNamed: #name type: String.
	aClassModel newAttributeNamed: #group type: NWGroup.
	(aClassModel newAttributeNamed: #userNotNull type: NWUser) useDirectAccess: false.
	aClassModel newAttributeNamed: #value.
	aClassModel newAttributeNamed: #result.
	
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWActivation: aDescriptor [
	| table |
	table := self tableNamed: 'NWACTIVATION'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #activated 
		to: (table fieldNamed: 'activated').
	(aDescriptor newMapping: DirectMapping)
		from: #activationTime
		to: (table fieldNamed: 'activationTime').
	(aDescriptor newMapping: DirectMapping)
		from: #completed 
		to: (table fieldNamed: 'completed').
	(aDescriptor newMapping: DirectMapping)
		from: #completionTime
		to: (table fieldNamed: 'completionTime').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #node.
		
	
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWBaseActivity: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #name  
		to: (table fieldNamed: 'name').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #boundaryEvents;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (table fieldNamed: 'attachedToRef_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWBaseActivity'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWBaseTask: aDescriptor [
	| table linkTableSeq linkTableDataObj |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #name  
		to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping)
		from: #valueAsJSON    
		to: (table fieldNamed: 'value').
		
	linkTableSeq := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableSeq fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableSeq fieldNamed: 'sourceRef_id')).
					
	(aDescriptor toManyMapping)
		attributeName: #boundaryEvents;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (table fieldNamed: 'attachedToRef_id')).
	
	linkTableDataObj := self tableNamed: 'NWNODE_ON_NWDATAOBJECT'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #dataOutputAssociations;
		referenceClass: NWDataObject;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableDataObj fieldNamed: 'baseActivity_id')). 
	
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWBaseTask'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWBoundaryEvent: aDescriptor [
	| table linkTable linkTableEventDef |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #cancelActivity  
		to: (table fieldNamed: 'cancelActivity').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #attachedToRef.
	(linkTableEventDef := self tableNamed: 'NWEVENT_ON_NWEVENTDEFINITION').
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #eventDefinitions;
		referenceClass: NWEventDefinition;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableEventDef fieldNamed: 'event_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWBoundaryEvent'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWDataObject: aDescriptor [
	| table |
	table := self tableNamed: 'NWDATAOBJECT'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #name
		to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping)
		from: #valuedDataObjectAsJSON 
		to: (table fieldNamed: 'valuedDataObject').
	(self typeResolverFor: NWElement) register: aDescriptor.
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWElement: aDescriptor [
	(self typeResolverFor: NWElement) register: aDescriptor abstract: true. 
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWEndEvent: aDescriptor [
	| table linkTable linkTableEventDef |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(linkTableEventDef := self tableNamed: 'NWEVENT_ON_NWEVENTDEFINITION').
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #eventDefinitions;
		referenceClass: NWEventDefinition;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableEventDef fieldNamed: 'event_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWEndEvent'
		field: (table fieldNamed: 'node_type').
	"(self typeResolverFor: NWEvent)
		register: aDescriptor
		keyedBy: 'NWEndEvent'
		field: (table fieldNamed: 'event_type')."
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWEvent: aDescriptor [
	| table linkTable linkTableEventDef |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	linkTableEventDef := self tableNamed: 'NWEVENT_ON_NWEVENTDEFINITION'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #eventDefinitions;
		referenceClass: NWEventDefinition;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableEventDef fieldNamed: 'event_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWEvent'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWEventBasedGateway: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWEventBasedGateway'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWEventDefinition: aDescriptor [
	| table |
	table := self tableNamed: 'NWEVENTDEFINITION'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(self typeResolverFor: NWElement) register: aDescriptor. 
	(self typeResolverFor: NWEventDefinition) 
		register: aDescriptor
		keyedBy: 'NWEventDefinition'
		field: (table fieldNamed: 'eventDef_type').
	 
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWExclusive: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWExclusive'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWExecutor: aDescriptor [
	| table linkTableProcHandler linkTableFlHandler |
	table := self tableNamed: 'NWEXECUTOR'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #taskResultAsJSON 
		to: (table fieldNamed: 'taskResult').
	linkTableFlHandler := self tableNamed: 'NWFLOWHANDLER'.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #flowHandler;
		join: (Join
					from: (table fieldNamed: 'flowHandler_id')
					to: (linkTableFlHandler fieldNamed: 'id')).
	"(aDescriptor toManyMapping)
		attributeName: #activations."
	
	linkTableProcHandler := self tableNamed: 'NWPROCESSHANDLER'.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #processHandler;
		join: (Join
					from: (table fieldNamed: 'processHandler_id')
					to: (linkTableProcHandler fieldNamed: 'id')).
		
	
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWFlowHandler: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWFLOWHANDLER'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
		to: (table fieldNamed: 'id').
	"(aDescriptor newMapping: DirectMapping)
		from: #workerid 
		to: (table fieldNamed: 'workerid')."
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #node.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #currSeq.
	linkTable := self tableNamed: 'NWSEQUENCE_ON_NWFLOWHANDLER'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #sequences;
		referenceClass: NWSequence;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'flowHandler_id')).
		
	
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWGateway: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWGateway'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWGroup: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWGROUP'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #groupId 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #groupName 
		to: (table fieldNamed: 'groupName').
		
	(aDescriptor toManyMapping)
		attributeName: #subgroups;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (table fieldNamed: 'subgroupOf_id')).
	
	"linkTable := self tableNamed: 'NWMEMBERSHIP'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #users;
		referenceClass: NWUser;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'group_id'))."	
	
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWInclusive: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWInclusive'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWMembership: aDescriptor [
	| table |
	table := self tableNamed: 'NWMEMBERSHIP'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #groupId 
		to: (table fieldNamed: 'group_id').
	(aDescriptor newMapping: DirectMapping)
		from: #userId 
		to: (table fieldNamed: 'user_id').
		
	
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWNode: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(self typeResolverFor: NWElement) register: aDescriptor.
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWNode'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWNullNode: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWNullNode'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWParallel: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWParallel'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWParallelJoin: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWParallelJoin'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWProcess: aDescriptor [
	| table |
	table := self tableNamed: 'NWPROCESS'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #name  
		to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping)
		from: #managementName  
		to: (table fieldNamed: 'managementName').
	(aDescriptor newMapping: DirectMapping)
		from: #processInstanceId  
		to: (table fieldNamed: 'processInstanceId').	
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #initialFlowElement.
	(self typeResolverFor: NWElement) register: aDescriptor.	 
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWProcessHandler: aDescriptor [
	| table linkTableActivation linkTableExecutor |
	table := self tableNamed: 'NWPROCESSHANDLER'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
		to: (table fieldNamed: 'id').
	linkTableExecutor := self tableNamed: 'NWEXECUTOR'.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #mainExecutor;
		join: (Join
					from: (table fieldNamed: 'executor_id')
					to: (linkTableExecutor fieldNamed: 'id')).
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #process.
	(aDescriptor toManyMapping)
		attributeName: #subExecutors.
	
	linkTableActivation := self tableNamed: 'NWPROCESSHANDLER_ON_NWACTIVATION'.
	(aDescriptor newMapping: DictionaryMapping)
		attributeName: #activations;
		keyField:
			 (linkTableActivation fieldNamed: 'node_id');
		relevantLinkTableFields: (Array with: (linkTableActivation fieldNamed: 'activation_id')).
		
		
	
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWScriptTask: aDescriptor [
	| table linkTableSeq linkTableDataObj |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #name  
		to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping)
		from: #scriptAsString  
		to: (table fieldNamed: 'script').
		
	linkTableSeq := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableSeq fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableSeq fieldNamed: 'sourceRef_id')).
					
	(aDescriptor toManyMapping)
		attributeName: #boundaryEvents;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (table fieldNamed: 'attachedToRef_id')).
	
	linkTableDataObj := self tableNamed: 'NWNODE_ON_NWDATAOBJECT'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #dataOutputAssociations;
		referenceClass: NWDataObject;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableDataObj fieldNamed: 'baseActivity_id')).
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWScriptTask'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWSequence: aDescriptor [
	| table |
	table := self tableNamed: 'NWSEQUENCE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #conditionAsString   
		to: (table fieldNamed: 'condition').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #sourceRef.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #targetRef.	
	(self typeResolverFor: NWElement) register: aDescriptor.
	 
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWStartEvent: aDescriptor [
	| table linkTable linkTableEventDef |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
		
	linkTable := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTable fieldNamed: 'sourceRef_id')).
	"linkTableEventDef := self tableNamed: 'NWEVENT_ON_NWEVENTDEFINITION'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #eventDefinitions;
		referenceClass: NWEventDefinition;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableEventDef fieldNamed: 'event_id'))."
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWStartEvent'
		field: (table fieldNamed: 'node_type').
	"(self typeResolverFor: NWEvent)
		register: aDescriptor
		keyedBy: 'NWStartEvent'
		field: (table fieldNamed: 'event_type')."
		
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWSubExecutor: aDescriptor [
	| table |
	table := self tableNamed: 'NWSUBEXECUTOR'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #executor.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #processHandler.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #previousNode.
	
	
		
	
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWTimerTempDefinition: aDescriptor [
	| table |
	table := self tableNamed: 'NWEVENTDEFINITION'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #timeDate   
		to: (table fieldNamed: 'timeDate').
	(aDescriptor newMapping: DirectMapping)
		from: #repeat   
		to: (table fieldNamed: 'repeat').
	(aDescriptor newMapping: DirectMapping)
		from: #everyAsSeconds   
		to: (table fieldNamed: 'every').
	(self typeResolverFor: NWEventDefinition) 
		register: aDescriptor
		keyedBy: 'NWTimerTempDefinition'
		field: (table fieldNamed: 'eventDef_type').
	 
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWUser: aDescriptor [
	| table |
	table := self tableNamed: 'NWUSER'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #userId 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #username 
		to: (table fieldNamed: 'username').
	(aDescriptor newMapping: DirectMapping)
		from: #firstname 
		to: (table fieldNamed: 'firstname').
	(aDescriptor newMapping: DirectMapping)
		from: #lastname 
		to: (table fieldNamed: 'lastname').
	(aDescriptor newMapping: DirectMapping)
		from: #email 
		to: (table fieldNamed: 'email').
	(aDescriptor newMapping: DirectMapping)
		from: #password 
		to: (table fieldNamed: 'password').
		
	
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWUserManagement: aDescriptor [
	| table linkTableUser linkTableGroup linkTableMembership |
	table := self tableNamed: 'NWUSERMANAGEMENT'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #pathToUsers  
		to: (table fieldNamed: 'pathToUsers').
	(aDescriptor newMapping: DirectMapping)
		from: #pathToGroups 
		to: (table fieldNamed: 'pathToGroups').
	
	linkTableUser:= self tableNamed: 'NWUSER_ON_NWUSERMANAGEMENT'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #users;
		referenceClass: NWUser;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableUser fieldNamed: 'userManagement_id')).

	linkTableGroup:= self tableNamed: 'NWGROUP_ON_NWUSERMANAGEMENT'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #groups;
		referenceClass: NWGroup;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableGroup fieldNamed: 'userManagement_id')).
	
	linkTableMembership := self tableNamed: 'NWMEMBERSHIP_ON_NWUSERMANAGEMENT'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #memberships;
		referenceClass: NWMembership;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableMembership fieldNamed: 'userManagement_id')).	
		
	
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWUserTask: aDescriptor [
	| table linkTableSeq linkTableDataObj linkTableUser |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #idAsInt 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #name  
		to: (table fieldNamed: 'name').
		
	linkTableSeq := self tableNamed: 'NWSEQUENCE'.
	(aDescriptor toManyMapping)
		attributeName: #incomingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableSeq fieldNamed: 'targetRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #outgoingFlows;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableSeq fieldNamed: 'sourceRef_id')).
	(aDescriptor toManyMapping)
		attributeName: #boundaryEvents;
		join: (Join
					from: (table fieldNamed: 'id')
					to: (table fieldNamed: 'attachedToRef_id')).
					
	linkTableDataObj := self tableNamed: 'NWNODE_ON_NWDATAOBJECT'.
	(aDescriptor newMapping: ManyToManyMapping)
		attributeName: #dataOutputAssociations;
		referenceClass: NWDataObject;  
		join: (Join
					from: (table fieldNamed: 'id')
					to: (linkTableDataObj fieldNamed: 'baseActivity_id')).
					
	(aDescriptor newMapping: OneToOneMapping)
		attributeName:  #group.

	linkTableUser := self tableNamed: 'NWUSER'.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName:  #userNotNull;
		referenceClass: NWUser;
		join: (Join
					from: (table fieldNamed: 'user_id')
					to: (linkTableUser fieldNamed: 'id')).
		
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWUserTask'
		field: (table fieldNamed: 'node_type').
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWACTIVATION: aTable [
	| node executor processHandler |
	(aTable createFieldNamed: 'id' type: (platform serial))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'activated'
		type: (platform boolean).
	aTable 
		createFieldNamed: 'activationTime'
		type: (platform dateAndTime).
	aTable 
		createFieldNamed: 'completed'
		type: (platform boolean).
	aTable 
		createFieldNamed: 'completionTime'
		type: (platform dateAndTime).
	node := aTable
		createFieldNamed: 'node_id' 
		type: platform integer.
	"executor := aTable
		createFieldNamed: 'executor_id' 
		type: platform integer. 
	processHandler := aTable 
		createFieldNamed: 'processHandler_id'
		type: platform integer."
	aTable
		addForeignKeyFrom: node  
		to: ((self tableNamed: 'NWNODE') fieldNamed: 'id').
	"aTable
		addForeignKeyFrom: executor  
		to: ((self tableNamed: 'NWEXECUTOR') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: processHandler  
		to: ((self tableNamed: 'NWPROCESSHANDLER') fieldNamed: 'id')."
	
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWDATAOBJECT: aTable [
	(aTable createFieldNamed: 'id' type: (self sequenceTypeNamed: 'parent_seq'))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'description'
		type: (platform varChar: 100).
	aTable
		createFieldNamed: 'name'
		type: (platform varChar: 50).
	aTable
		createFieldNamed: 'valuedDataObject'
		type: (platform varChar: 5000).
	 
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWEVENTDEFINITION: aTable [
	(aTable createFieldNamed: 'id' type: (self sequenceTypeNamed: 'parent_seq'))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'description'
		type: (platform varChar: 100).
	aTable
		createFieldNamed: 'eventDef_type'
		type: (platform varChar: 30).
	aTable 
		createFieldNamed: 'timeDate'
		type: (platform dateAndTime).
	aTable
		createFieldNamed: 'repeat'
		type: (platform boolean).
	aTable
		createFieldNamed: 'every'
		type: (platform integer).
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWEVENT_ON_NWEVENTDEFINITION: aTable [
	| eventField eventDefinitionField |
	(eventField  := aTable
		createFieldNamed: 'event_id' 
		type: platform integer) bePrimaryKey.
	(eventDefinitionField := aTable
		createFieldNamed: 'eventDef_id' 
		type: platform integer) bePrimaryKey. 
	aTable
		addForeignKeyFrom: eventField   
		to: ((self tableNamed: 'NWNODE') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: eventDefinitionField 
		to: ((self tableNamed: 'NWEVENTDEFINITION') fieldNamed: 'id').
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWEXECUTOR: aTable [
	| flowHandler processHandler |
	(aTable createFieldNamed: 'id' type: (platform serial))
		bePrimaryKey.
	aTable
		createFieldNamed: 'taskResult'
		type: (platform varChar: 5000).
	flowHandler := aTable
		createFieldNamed: 'flowHandler_id' 
		type: platform integer. 
	processHandler := aTable
		createFieldNamed: 'processHandler_id' 
		type: platform integer.
	aTable
		addForeignKeyFrom: flowHandler  
		to: ((self tableNamed: 'NWFLOWHANDLER') fieldNamed: 'id').
	"aTable
		addForeignKeyFrom: processHandler  
		to: ((self tableNamed: 'NWPROCESSHANDLER') fieldNamed: 'id')."
	
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWFLOWHANDLER: aTable [
	| node sequence |
	(aTable createFieldNamed: 'id' type: (platform serial))
		bePrimaryKey.
	"aTable 
		createFieldNamed: 'workerid'
		type: (platform varchar: 200)."
	node := aTable
		createFieldNamed: 'node_id' 
		type: platform integer. 
	sequence := aTable
		createFieldNamed: 'sequence_id' 
		type: platform integer.
	aTable
		addForeignKeyFrom: node  
		to: ((self tableNamed: 'NWNODE') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: sequence  
		to: ((self tableNamed: 'NWSEQUENCE') fieldNamed: 'id').
	
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWGROUP: aTable [
	| subgroupField |
	(aTable createFieldNamed: 'id' type: (platform integer))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'groupName'
		type: (platform varChar: 50).
	
	subgroupField := aTable
		createFieldNamed: 'subgroupOf_id'
		type: (platform integer).
		
	aTable 
		addForeignKeyFrom:  subgroupField 
		to: (aTable fieldNamed: 'id'). 
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWGROUP_ON_NWUSERMANAGEMENT: aTable [
	| userManagementField groupField |
	userManagementField  := aTable
		createFieldNamed: 'userManagement_id' 
		type: platform integer.
	groupField := aTable
		createFieldNamed: 'group_id' 
		type: platform integer. 
	aTable
		addForeignKeyFrom: userManagementField   
		to: ((self tableNamed: 'NWUSERMANAGEMENT') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: groupField 
		to: ((self tableNamed: 'NWGROUP') fieldNamed: 'id').
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWMEMBERSHIP: aTable [
	| groupField userField |
	(aTable createFieldNamed: 'id' type: (platform integer))
		bePrimaryKey.
	groupField := aTable
		createFieldNamed: 'group_id' 
		type: platform integer.
	userField := aTable
		createFieldNamed: 'user_id' 
		type: platform integer. 
	"aTable
		addForeignKeyFrom: groupField  
		to: ((self tableNamed: 'NWGROUP') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: userField 
		to: ((self tableNamed: 'NWUSER') fieldNamed: 'id')."
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWMEMBERSHIP_ON_NWUSERMANAGEMENT: aTable [
	| userManagementField membershipField |
	userManagementField  := aTable
		createFieldNamed: 'userManagement_id' 
		type: platform integer.
	membershipField  := aTable
		createFieldNamed: 'membership_id' 
		type: platform integer. 
	aTable
		addForeignKeyFrom: userManagementField   
		to: ((self tableNamed: 'NWUSERMANAGEMENT') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: membershipField 
		to: ((self tableNamed: 'NWMEMBERSHIP') fieldNamed: 'id').
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWNODE: aTable [
	| attachedToRefField groupField userField |
	(aTable createFieldNamed: 'id' type: (self sequenceTypeNamed: 'parent_seq'))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'description'
		type: (platform varChar: 100).
	aTable 
		createFieldNamed: 'node_type' 
		type: (platform varChar: 30).
	attachedToRefField := aTable
		createFieldNamed: 'attachedToRef_id'
		type: (platform integer).
	aTable 
		createFieldNamed: 'cancelActivity' 
		type: (platform boolean).
	aTable
		createFieldNamed: 'name'
		type: (platform varChar: 50).
	aTable
		createFieldNamed: 'value'
		type: (platform varChar: 300).	
	aTable
		createFieldNamed: 'script'
		type: (platform varChar: 300).
	groupField := aTable
		createFieldNamed: 'group_id'
		type: (platform integer).
	userField := aTable
		createFieldNamed: 'user_id'
		type: (platform integer).
	
	aTable 
		addForeignKeyFrom:  attachedToRefField 
		to: (aTable fieldNamed: 'id'). 
	aTable 
		addForeignKeyFrom:  groupField 
		to: ((self tableNamed: 'NWGROUP') fieldNamed: 'id'). 
	aTable 
		addForeignKeyFrom:  userField 
		to: ((self tableNamed: 'NWUSER') fieldNamed: 'id').

]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWNODE_ON_NWDATAOBJECT: aTable [
	| baseActivityField dataObjectField |
	baseActivityField := aTable
		createFieldNamed: 'baseActivity_id' 
		type: platform integer.
	dataObjectField := aTable
		createFieldNamed: 'dataObject_id' 
		type: platform integer. 
	aTable
		addForeignKeyFrom: baseActivityField  
		to: ((self tableNamed: 'NWNODE') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: dataObjectField 
		to: ((self tableNamed: 'NWDATAOBJECT') fieldNamed: 'id').  
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWPROCESS: aTable [
	| initialFlowElementField |
	(aTable createFieldNamed: 'id' type: (self sequenceTypeNamed: 'parent_seq'))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'description'
		type: (platform varChar: 100).
	aTable 
		createFieldNamed: 'name' 
		type: (platform varChar: 50).
	aTable 
		createFieldNamed: 'managementName' 
		type: (platform varChar: 50).	
	aTable 
		createFieldNamed: 'processInstanceId' 
		type: (platform varChar: 10).
	initialFlowElementField := aTable
		createFieldNamed: 'initialFlowElement_id' 
		type: platform integer. 
		
	aTable
		addForeignKeyFrom: initialFlowElementField  
		to: ((self tableNamed: 'NWNode') fieldNamed: 'id').
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWPROCESSHANDLER: aTable [
	| process executor |
	(aTable createFieldNamed: 'id' type: (platform serial))
		bePrimaryKey.
	process := aTable
		createFieldNamed: 'process_id' 
		type: platform integer. 
	executor := aTable
		createFieldNamed: 'executor_id' 
		type: platform integer.
	aTable
		addForeignKeyFrom: process  
		to: ((self tableNamed: 'NWPROCESS') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: executor  
		to: ((self tableNamed: 'NWEXECUTOR') fieldNamed: 'id').
	
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWPROCESSHANDLER_ON_NWACTIVATION: aTable [
	| processHandlerField activationField |
	processHandlerField  := aTable
		createFieldNamed: 'processHandler_id' 
		type: platform integer.
	aTable
		createFieldNamed: 'node_id' 
		type: (platform varChar: 10). 
	activationField := aTable
		createFieldNamed: 'activation_id' 
		type: platform integer. 
	aTable
		addForeignKeyFrom: processHandlerField   
		to: ((self tableNamed: 'NWPROCESSHANDLER') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: activationField 
		to: ((self tableNamed: 'NWACTIVATION') fieldNamed: 'id').
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWSEQUENCE: aTable [
	| sourceRefField targetRefField |
	(aTable createFieldNamed: 'id' type: (self sequenceTypeNamed: 'parent_seq'))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'description'
		type: (platform varChar: 100).
	aTable 
		createFieldNamed: 'condition'
		type: (platform varChar: 300).
	sourceRefField := aTable
		createFieldNamed: 'sourceRef_id' 
		type: platform integer.
	targetRefField := aTable
		createFieldNamed: 'targetRef_id' 
		type: platform integer. 
	aTable
		addForeignKeyFrom: sourceRefField  
		to: ((self tableNamed: 'NWNODE') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: targetRefField 
		to: ((self tableNamed: 'NWNODE') fieldNamed: 'id').  	
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWSEQUENCE_ON_NWFLOWHANDLER: aTable [
	| sequenceField flowHandlerField |
	sequenceField  := (aTable
		createFieldNamed: 'sequence_id' 
		type: platform integer) bePrimaryKey.
	flowHandlerField := (aTable
		createFieldNamed: 'flowHandler_id' 
		type: platform integer) bePrimaryKey. 
	aTable
		addForeignKeyFrom: sequenceField   
		to: ((self tableNamed: 'NWSEQUENCE') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: flowHandlerField 
		to: ((self tableNamed: 'NWFLOWHANDLER') fieldNamed: 'id').
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWSUBEXECUTOR: aTable [
	| executor processHandler node |
	(aTable createFieldNamed: 'id' type: (platform serial))
		bePrimaryKey.
	executor := aTable
		createFieldNamed: 'executor_id' 
		type: platform integer. 
	processHandler := aTable
		createFieldNamed: 'processHandler_id' 
		type: platform integer.
	node := aTable 
		createFieldNamed: 'previousNode_id'
		type: platform integer.
	aTable
		addForeignKeyFrom: executor   
		to: ((self tableNamed: 'NWEXECUTOR') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: processHandler  
		to: ((self tableNamed: 'NWPROCESSHANDLER') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: node 
		to: ((self tableNamed: 'NWNODE') fieldNamed: 'id').
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWUSER: aTable [
	(aTable createFieldNamed: 'id' type: (platform integer))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'username'
		type: (platform varChar: 50).
	aTable 
		createFieldNamed: 'firstname'
		type: (platform varChar: 50).
	aTable 
		createFieldNamed: 'lastname'
		type: (platform varChar: 50).
	aTable 
		createFieldNamed: 'email'
		type: (platform varChar: 50).
	aTable 
		createFieldNamed: 'password'
		type: (platform varChar: 30).
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWUSERMANAGEMENT: aTable [
	(aTable createFieldNamed: 'id' type: (platform serial))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'pathToGroups'
		type: (platform varChar: 100).
	aTable 
		createFieldNamed: 'pathToUsers'
		type: (platform varChar: 100).
	
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWUSER_ON_NWUSERMANAGEMENT: aTable [
	| userManagementField userField |
	userManagementField  := aTable
		createFieldNamed: 'userManagement_id' 
		type: platform integer.
	userField := aTable
		createFieldNamed: 'user_id' 
		type: platform integer. 
	aTable
		addForeignKeyFrom: userManagementField   
		to: ((self tableNamed: 'NWUSERMANAGEMENT') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: userField 
		to: ((self tableNamed: 'NWUSER') fieldNamed: 'id').
]

{ #category : #'type resolvers' }
NewWaveGlorpDescriptorSystem >> typeResolverForNWElement [
	^ HorizontalTypeResolver forRootClass: NWElement. 
]

{ #category : #'type resolvers' }
NewWaveGlorpDescriptorSystem >> typeResolverForNWEvent [
	^ FilteredTypeResolver forRootClass: NWEvent.
]

{ #category : #'type resolvers' }
NewWaveGlorpDescriptorSystem >> typeResolverForNWEventDefinition [
	^ FilteredTypeResolver forRootClass: NWEventDefinition. 
]

{ #category : #'type resolvers' }
NewWaveGlorpDescriptorSystem >> typeResolverForNWNode [
	^ FilteredTypeResolver forRootClass: NWNode. 
]
