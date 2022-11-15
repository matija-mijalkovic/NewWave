Class {
	#name : #NWMembership,
	#superclass : #Object,
	#instVars : [
		'groupId',
		'userId'
	],
	#category : #'NewWave-UserManagment'
}

{ #category : #accessing }
NWMembership class >> neoJsonMapping: mapper [
	mapper for: #ArrayOfMemberships
			customDo: [ :mapping | mapping listOfElementSchema: self ].
	
]

{ #category : #accessing }
NWMembership >> groupId [ 
	^ groupId.
]

{ #category : #accessing }
NWMembership >> groupId: aGroupId [
	groupId := aGroupId.
]

{ #category : #accessing }
NWMembership >> userId [
	^ userId.
]

{ #category : #accessing }
NWMembership >> userId: anUserId [
	userId:= anUserId.
]
