Class {
	#name : #NWActivation,
	#superclass : #Object,
	#instVars : [
		'id',
		'node',
		'executor',
		'properties',
		'state',
		'activated',
		'completed',
		'activationTime',
		'completionTime'
	],
	#category : #'NewWave-Engine'
}

{ #category : #'as yet unclassified' }
NWActivation class >> node: aNode executor: anExecutor [

^ self new 
	node: aNode;
	executor: anExecutor;
	activated: false;
	completed: false;
	yourself
]

{ #category : #activation }
NWActivation >> activate [
	activated := true.
	activationTime := DateAndTime current.
]

{ #category : #accessing }
NWActivation >> activated [
	^ activated 
]

{ #category : #accessing }
NWActivation >> activated: aBoolean [
	activated := aBoolean
]

{ #category : #activation }
NWActivation >> activationTime [
	^ activationTime 
]

{ #category : #activation }
NWActivation >> activationTime: aTime [
	activationTime := aTime. 
]

{ #category : #activation }
NWActivation >> complete [
	completed := true.
	completionTime := DateAndTime current.
]

{ #category : #accessing }
NWActivation >> completed [
	^ completed
]

{ #category : #accessing }
NWActivation >> completed: aBoolean [
	completed := aBoolean
]

{ #category : #activation }
NWActivation >> completionTime [
	^ completionTime 
]

{ #category : #activation }
NWActivation >> completionTime: aTime [
	completionTime := aTime. 
]

{ #category : #accessing }
NWActivation >> executor [
	^ executor
]

{ #category : #accessing }
NWActivation >> executor: anExecutor [
	executor := anExecutor
]

{ #category : #accessing }
NWActivation >> id [
	^ id
]

{ #category : #accessing }
NWActivation >> id: anId [
	id := anId 
]

{ #category : #accessing }
NWActivation >> initialize [ 
	super initialize.
	properties := Dictionary new.
]

{ #category : #accessing }
NWActivation >> node [ 
	^ node
]

{ #category : #accessing }
NWActivation >> node: aNode [
	node := aNode
]

{ #category : #accessing }
NWActivation >> printOn: aStream [
	"super printOn: aStream."
	aStream
		nextPutAll: 'Act(';
		nextPutAll: self node description;
		nextPutAll: ')'.
]

{ #category : #accessing }
NWActivation >> properties [
	^ properties
]

{ #category : #accessing }
NWActivation >> release [
	executor := nil.
	node := nil.
	properties := nil.
]

{ #category : #accessing }
NWActivation >> state [ 
	^ state
]

{ #category : #accessing }
NWActivation >> state: aState [
	state := aState
]
