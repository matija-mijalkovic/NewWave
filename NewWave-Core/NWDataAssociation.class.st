"
I represent an association between two data objects. I have a source and a target.

    Instance Variables
	sourceRef:		<NWDataObject>
	targetRef:		<NWDataObject>

"
Class {
	#name : #NWDataAssociation,
	#superclass : #NWElement,
	#instVars : [
		'sourceRef',
		'targetRef'
	],
	#category : #'NewWave-Core-Core'
}

{ #category : #'as yet unclassified' }
NWDataAssociation class >> sourceRef: src targetRef: target [
	^ self new 
		sourceRef: src;
		targetRef: target;
		yourself
]

{ #category : #accessing }
NWDataAssociation >> sourceRef [
	^ sourceRef
]

{ #category : #accessing }
NWDataAssociation >> sourceRef: anObject [
	sourceRef := anObject
]

{ #category : #accessing }
NWDataAssociation >> targetRef [
	^ targetRef
]

{ #category : #accessing }
NWDataAssociation >> targetRef: anObject [
	targetRef := anObject
]
