Class {
	#name : #NWNullGroup,
	#superclass : #NWGroup,
	#category : #'NewWave-UserManagment'
}

{ #category : #initialization }
NWNullGroup >> initialize [ 
	super initialize.
	self groupName: ''.
]
