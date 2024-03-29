"
I am the most simple task in the workflow. You can set my value to anything, and engine while executing it will try to get it.

    Instance Variables
	value:		<Object>


    Implementation Points
"
Class {
	#name : #NWBaseTask,
	#superclass : #NWBaseActivity,
	#instVars : [
		'value'
	],
	#category : #'NewWave-Core'
}

{ #category : #accessing }
NWBaseTask >> ctype [
	^ #NWBaseTask
]

{ #category : #accessing }
NWBaseTask >> value [
	^ value
]

{ #category : #accessing }
NWBaseTask >> value: anObject [
	value := anObject
]

{ #category : #accessing }
NWBaseTask >> valueAsJSON [
	| descGenerator |
	descGenerator := NWClassDescriptionGenerator new.
	(descGenerator possibleDataTypes hasLiteral: (value class asString))
		ifTrue: [ 
			^ NeoJSONWriter toString: value.
			 ].
]

{ #category : #accessing }
NWBaseTask >> valueAsJSON: anObject [
	value := NeoJSONReader fromString: anObject.

]
