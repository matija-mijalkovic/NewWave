Class {
	#name : #DbConnector,
	#superclass : #Object,
	#instVars : [
		'session'
	],
	#category : #'NewWave-SQL'
}

{ #category : #'as yet unclassified' }
DbConnector >> connectToDb [
	| login accessor |
	
	PharoDatabaseAccessor DefaultDriver: P3DatabaseDriver.
	
	login := Login new
			   database: PostgreSQLPlatform new;
				username: 'postgres';
				password: 'root';
				host: 'localhost';
				port: '5432';
				databaseName: 'newWaveDb'.
				
	accessor := DatabaseAccessor forLogin: login.
	accessor login.
	
	session := NewWaveGlorpDescriptorSystem sessionForLogin: login.
	session login.
	
	 
	
]

{ #category : #'as yet unclassified' }
DbConnector >> createDbTables [
	session createTables.
	
	 
	
]

{ #category : #'as yet unclassified' }
DbConnector >> recreateDbTables [
	session recreateTables.
]

{ #category : #accessing }
DbConnector >> session [
	^session 
]
