"
I am a class that is used to execute CustomTask.
"
Class {
	#name : #NWCustomTaskEventBehavior,
	#superclass : #NWActivityEventBehavior,
	#category : #'NewWave-Engine'
}

{ #category : #accessing }
NWCustomTaskEventBehavior >> performExecution: elemToExecute executor: waveExecutor [
	super performExecution: elemToExecute executor: waveExecutor.
	"Ovo treba recimo dopuniti da ode na endpoint i onda tu da se preuzme, pokupi itd..."
	"wave engine server element: elemToExecute."
	"waveExecutor processHandler engine server addTask: elemToExecute user: 'default'."
	waveExecutor processHandler addTaskToServer: elemToExecute user: 'default'.
	waveExecutor processHandler engine engineAnnouncer
		when: WaveAnnouncer
		do: [ :a | 
			a parameter traceCr.
			waveExecutor taskResult: a parameter.
			waveExecutor processHandler addDataObjectFromServer: a parameter.
			waveExecutor processHandler engine server removeTask: elemToExecute user: 'default'.
			waveExecutor tryToExecuteNext: elemToExecute ].
	elemToExecute value
]