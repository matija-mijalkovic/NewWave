Class {
	#name : #NWGroup,
	#superclass : #Object,
	#instVars : [
		'groupId',
		'groupName',
		'users',
		'subgroups'
	],
	#category : #'NewWave-UserManagment'
}

{ #category : #accessing }
NWGroup class >> neoJsonMapping: mapper [
	"For inheritance mapping to work, the schema/classname must be self,
	but the instance variables have to be enumerated manually per class"
	mapper for: #ArrayOfGroups
			customDo: [ :mapping | mapping listOfElementSchema: self ].
	
	mapper for: self do: [ :mapping |
		mapping mapInstVars: #(groupId groupName users).
		(mapping mapInstVar: #subgroups) valueSchema: #ArrayOfGroups ].
	
		
]

{ #category : #adding }
NWGroup >> addUser: anElement [
	users add: anElement.
]

{ #category : #accessing }
NWGroup >> groupId [
	^ groupId
]

{ #category : #accessing }
NWGroup >> groupId: aGroupId [
	groupId := aGroupId
]

{ #category : #accessing }
NWGroup >> groupName [ 
	^ groupName
]

{ #category : #accessing }
NWGroup >> groupName: aName [
	groupName := aName
]

{ #category : #initialization }
NWGroup >> initialize [
	super initialize.
	
]

{ #category : #accessing }
NWGroup >> neoJsonMapping: mapper [
	"For inheritance mapping to work, the schema/classname must be self,
	but the instance variables have to be enumerated manually per class"
	mapper for: #ArrayOfGroups do: [ :mapping |
		mapping mapInstVars: #(groupId groupName users subgroups) ] 
]

{ #category : #accessing }
NWGroup >> subgroups [
	^ subgroups 
]

{ #category : #accessing }
NWGroup >> users [ 	
	^ users
]
