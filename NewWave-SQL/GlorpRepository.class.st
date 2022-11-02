Class {
	#name : #GlorpRepository,
	#superclass : #Object,
	#instVars : [
		'session'
	],
	#category : #'NewWave-SQL'
}

{ #category : #crud }
GlorpRepository >> add: anEntity [
	session inUnitOfWorkDo: [ session register: anEntity ]. 
]

{ #category : #crud }
GlorpRepository >> delete: anId [ 
	session inUnitOfWorkDo: [ 
		| anEntity |
		anEntity := session
						readOneOf: NWElement 
						where: [ :each | each id = anId ].
		session delete: anEntity.  
		]
]

{ #category : #crud }
GlorpRepository >> getAll [ 
	^ session read: NWElement.
]

{ #category : #crud }
GlorpRepository >> getById: anId [
	^ session readOneOf: NWElement  where: [ :each | each id = anId ]
	  
]

{ #category : #accessing }
GlorpRepository >> session: aSession [
	session := aSession. 
]

{ #category : #crud }
GlorpRepository >> updateEntity: anEntity [
	session inUnitOfWorkDo: [ 
		| entity |
		entity := session
					readOneOf: NWElement 
					where: [ :each | each id = anEntity id ].
		entity description: anEntity description.
		session register: entity.  
		 ].
	
]
