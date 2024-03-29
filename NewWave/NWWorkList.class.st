Class {
	#name : #NWWorkList,
	#superclass : #Object,
	#instVars : [
		'running'
	],
	#category : #'NewWave-Engine'
}

{ #category : #adding }
NWWorkList >> addToCompleted: activation [
	activation complete.
	"activation completed: true."
	"Proveriti da li je vec aktivacija pocela, ako je pocela podigni error
	running remove: activation.
	completed add: activation."
	
	"Treba zabaleziti za istoriju.... noteRunOf: anActivation in: self"
]

{ #category : #adding }
NWWorkList >> addToRunning: activation [
	"Proveriti da li je vec aktivacija pocela, ako je pocela podigni error"
	"running add: activation"
	activation activate.
	running indexOf: activation ifAbsent: [ running add: activation ].
	"Treba zabaleziti za istoriju.... noteRunOf: anActivation in: self"
	
]

{ #category : #adding }
NWWorkList >> completed [
	^ running select: [ :each | each completed ]
]

{ #category : #adding }
NWWorkList >> initialize [ 
	super initialize.
	running := OrderedCollection new.
]

{ #category : #adding }
NWWorkList >> running [
	^ running select: [ :each | each activated ].
]

{ #category : #adding }
NWWorkList >> running: aListOfRunning [
	running := aListOfRunning.  
	
]
