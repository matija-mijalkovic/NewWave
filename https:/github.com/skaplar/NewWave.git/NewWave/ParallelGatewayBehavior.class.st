"
I am a class that splits the execution into two or more processes.
"
Class {
	#name : #ParallelGatewayBehavior,
	#superclass : #EventBehavior,
	#category : #'NewWave-Engine'
}

{ #category : #accessing }
ParallelGatewayBehavior >> performExecution: elemToExecute executor: wave [
	elemToExecute outgoingFlows do: [ :each | | se | se := SubExecutor initialNode: each targetRef  parentExecutor: wave. se startSubExecutor ].
	
	wave waveAnnouncer subscribe: JoinCompletedEventAnnouncer 
	do: [ 
		wave worker schedule: [ wave tryToExecuteNext. ].
	].
	
	
	
	
]