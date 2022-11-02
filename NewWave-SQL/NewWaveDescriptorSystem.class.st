Class {
	#name : #NewWaveDescriptorSystem,
	#superclass : #DescriptorSystem,
	#category : #'NewWave-SQL'
}

{ #category : #'class models' }
NewWaveDescriptorSystem >> classModelForNWEndEvent: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
]

{ #category : #'class models' }
NewWaveDescriptorSystem >> classModelForNWEvent: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
]

{ #category : #'class models' }
NewWaveDescriptorSystem >> classModelForNWNode: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
	
]

{ #category : #'class models' }
NewWaveDescriptorSystem >> classModelForNWProcess: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #initialFlowElement type: NWNode.
	aClassModel newAttributeNamed: #name type: String.  
	
]

{ #category : #'class models' }
NewWaveDescriptorSystem >> classModelForNWSequence: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #sourceRef type: NWNode.
	aClassModel newAttributeNamed: #targetRef type: NWNode.
	 
	
]

{ #category : #'class models' }
NewWaveDescriptorSystem >> classModelForNWStartEvent: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #description type: String.
	aClassModel newAttributeNamed: #incomingFlows collectionOf: NWSequence.
	aClassModel newAttributeNamed: #outgoingFlows collectionOf: NWSequence.
]

{ #category : #descriptors }
NewWaveDescriptorSystem >> descriptorForNWElement: aDescriptor [
	(self typeResolverFor: NWElement) register: aDescriptor abstract: true. 
]

{ #category : #descriptors }
NewWaveDescriptorSystem >> descriptorForNWEndEvent: aDescriptor [
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
NewWaveDescriptorSystem >> descriptorForNWEvent: aDescriptor [
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
NewWaveDescriptorSystem >> descriptorForNWNode: aDescriptor [
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
NewWaveDescriptorSystem >> descriptorForNWProcess: aDescriptor [
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
NewWaveDescriptorSystem >> descriptorForNWSequence: aDescriptor [
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
NewWaveDescriptorSystem >> descriptorForNWStartEvent: aDescriptor [
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
NewWaveDescriptorSystem >> tableForNWNODE: aTable [
	(aTable createFieldNamed: 'id' type: (self sequenceTypeNamed: 'parent_seq'))
		bePrimaryKey.
	aTable 
		createFieldNamed: 'description'
		type: (platform varChar: 100).
	aTable 
		createFieldNamed: 'node_type' 
		type: (platform varChar: 20).
	"aTable 
		createFieldNamed: 'event_type' 
		type: (platform varChar: 20)."
	 
	
]

{ #category : #tables }
NewWaveDescriptorSystem >> tableForNWPROCESS: aTable [
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
NewWaveDescriptorSystem >> tableForNWSEQUENCE: aTable [
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
		to: ((self tableNamed: 'NWNode') fieldNamed: 'id').
	aTable
		addForeignKeyFrom: targetRefField 
		to: ((self tableNamed: 'NWNode') fieldNamed: 'id').  	
	
	
]

{ #category : #'type resolvers' }
NewWaveDescriptorSystem >> typeResolverForNWElement [
	^ HorizontalTypeResolver forRootClass: NWElement. 
]

{ #category : #'type resolvers' }
NewWaveDescriptorSystem >> typeResolverForNWEvent [
	^ FilteredTypeResolver forRootClass: NWEvent.
]

{ #category : #'type resolvers' }
NewWaveDescriptorSystem >> typeResolverForNWNode [
	^ FilteredTypeResolver forRootClass: NWNode. 
]
