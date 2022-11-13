Class {
	#name : #NewWaveGlorpDescriptorSystem,
	#superclass : #DescriptorSystem,
	#category : #'NewWave-SQL'
}

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWBaseActivity: aClassModel [
	aClassModel newAttributeNamed: #id.
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
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #boundaryEvents collectionOf: NWBoundaryEvent.
	aClassModel newAttributeNamed: #dataOutputAssociations collectionOf: NWDataObject.
	"aClassModel newAttributeNamed: #elements collectionOf: Object."
	aClassModel newAttributeNamed: #name type: String.
	aClassModel newAttributeNamed: #value.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWBoundaryEvent: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #attachedToRef type: NWNode.
	aClassModel newAttributeNamed: #attachedToRefId.
	aClassModel newAttributeNamed: #cancelActivity type: Boolean.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWDataObject: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #name type: String.
	aClassModel newAttributeNamed: #itemDef.
	aClassModel newAttributeNamed: #valuedDataObject.
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWEndEvent: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWEvent: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWEventBasedGateway: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWExclusive: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWGateway: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWInclusive: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWNode: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWParallel: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWParallelJoin: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	"aClassModel newAttributeNamed: #element."
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWProcess: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #initialFlowElement type: NWNode.
	aClassModel newAttributeNamed: #name type: String.  
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWScriptTask: aClassModel [
	aClassModel newAttributeNamed: #id.
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
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #sourceRef type: NWNode.
	aClassModel newAttributeNamed: #targetRef type: NWNode.
	 
	
]

{ #category : #'class models' }
NewWaveGlorpDescriptorSystem >> classModelForNWStartEvent: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWBaseActivity: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
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
		from: #id 
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
	
	(self typeResolverFor: NWNode)
		register: aDescriptor
		keyedBy: 'NWBaseTask'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWBoundaryEvent: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	"(aDescriptor newMapping: DirectMapping)
		from: #attachedToRefId  
		to: (table fieldNamed: 'attachedToRef_id')."
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
		from: #id 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #name
		to: (table fieldNamed: 'name').
	(self typeResolverFor: NWElement) register: aDescriptor.
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWElement: aDescriptor [
	(self typeResolverFor: NWElement) register: aDescriptor abstract: true. 
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWEndEvent: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
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
		keyedBy: 'NWEndEvent'
		field: (table fieldNamed: 'node_type').
	"(self typeResolverFor: NWEvent)
		register: aDescriptor
		keyedBy: 'NWEndEvent'
		field: (table fieldNamed: 'event_type')."
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWEvent: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
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
		keyedBy: 'NWEvent'
		field: (table fieldNamed: 'node_type').
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWEventBasedGateway: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
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
NewWaveGlorpDescriptorSystem >> descriptorForNWExclusive: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
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
NewWaveGlorpDescriptorSystem >> descriptorForNWGateway: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
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
NewWaveGlorpDescriptorSystem >> descriptorForNWInclusive: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
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
NewWaveGlorpDescriptorSystem >> descriptorForNWNode: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
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
NewWaveGlorpDescriptorSystem >> descriptorForNWParallel: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
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
		from: #id 
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
		from: #id 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #initialFlowElement.
	(self typeResolverFor: NWElement) register: aDescriptor.
	 
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWScriptTask: aDescriptor [
	| table linkTableSeq linkTableDataObj |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping)
		from: #name  
		to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping)
		from: #script   
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
		from: #id 
		to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #description  
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #sourceRef.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #targetRef.	
	(self typeResolverFor: NWElement) register: aDescriptor.
	 
]

{ #category : #descriptors }
NewWaveGlorpDescriptorSystem >> descriptorForNWStartEvent: aDescriptor [
	| table linkTable |
	table := self tableNamed: 'NWNODE'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping)
		from: #id 
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
		keyedBy: 'NWStartEvent'
		field: (table fieldNamed: 'node_type').
	"(self typeResolverFor: NWEvent)
		register: aDescriptor
		keyedBy: 'NWStartEvent'
		field: (table fieldNamed: 'event_type')."
		
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
	 
	
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWNODE: aTable [
	| attachedToRefField |
	(aTable createFieldNamed: 'id' type: (self sequenceTypeNamed: 'parent_seq'))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'description'
		type: (platform varChar: 100).
	aTable 
		createFieldNamed: 'node_type' 
		type: (platform varChar: 20).
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
		createFieldNamed: 'script'
		type: (platform varChar: 300).
	aTable 
		addForeignKeyFrom:  attachedToRefField 
		to: (aTable fieldNamed: 'id'). 
	"aTable 
		createFieldNamed: 'event_type' 
		type: (platform varChar: 20)."
	 
	
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
		type: (platform varChar: 20).
	initialFlowElementField := aTable
		createFieldNamed: 'initialFlowElement_id' 
		type: platform integer. 
	aTable
		addForeignKeyFrom: initialFlowElementField  
		to: ((self tableNamed: 'NWNode') fieldNamed: 'id').
]

{ #category : #tables }
NewWaveGlorpDescriptorSystem >> tableForNWSEQUENCE: aTable [
	| sourceRefField targetRefField |
	(aTable createFieldNamed: 'id' type: (self sequenceTypeNamed: 'parent_seq'))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'description'
		type: (platform varChar: 100).
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

{ #category : #'type resolvers' }
NewWaveGlorpDescriptorSystem >> typeResolverForNWElement [
	^ HorizontalTypeResolver forRootClass: NWElement. 
]

{ #category : #'type resolvers' }
NewWaveGlorpDescriptorSystem >> typeResolverForNWEvent [
	^ FilteredTypeResolver forRootClass: NWEvent.
]

{ #category : #'type resolvers' }
NewWaveGlorpDescriptorSystem >> typeResolverForNWNode [
	^ FilteredTypeResolver forRootClass: NWNode. 
]
