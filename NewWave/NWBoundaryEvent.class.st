"
I am a boundary event. I can be attached to certain object. I can cancel execution of the activites.

    Instance Variables
	attachedToRef:		<Object>
	attechedToRefId:		<Object>
	cancelActivity:		<Object>


    Implementation Points
"
Class {
	#name : #NWBoundaryEvent,
	#superclass : #NWEvent,
	#instVars : [
		'attachedToRef',
		'cancelActivity',
		'attachedToRefId'
	],
	#category : #'NewWave-Core'
}

{ #category : #accessing }
NWBoundaryEvent >> attachedToRef: anObject [
	attachedToRef := anObject.
]

{ #category : #testing }
NWBoundaryEvent >> cancelActivity [
	^ cancelActivity
]

{ #category : #testing }
NWBoundaryEvent >> cancelActivity: aBoolean [
	cancelActivity := aBoolean
]

{ #category : #testing }
NWBoundaryEvent >> ctype [
	^ #NWBoundaryEvent
]

{ #category : #testing }
NWBoundaryEvent >> initialize [ 	
	super initialize.
	self description: 'boundary desc'
]
