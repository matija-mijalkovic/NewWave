"
I am a class that executes the tasks,
"
Class {
	#name : #NWTaskEventBehavior,
	#superclass : #NWActivityEventBehavior,
	#category : #'NewWave-Core-Engine'
}

{ #category : #'as yet unclassified' }
NWTaskEventBehavior >> performExecution: elemToExecute executor: waveExecutor [
	| aFuture tktElem |
	super performExecution: elemToExecute executor: waveExecutor.
	tktElem := waveExecutor returnTKT: elemToExecute.
	aFuture := waveExecutor worker future: [ tktElem valuable ].
	aFuture
		onSuccessDo: [ :v | 
			waveExecutor taskResult: v.
			waveExecutor tryToExecuteNext: elemToExecute ].
	aFuture
		onFailureDo: [ :v | 
			Transcript show: 'failed'; cr]
]
