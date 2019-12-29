"
I am a class that chooses one route of execution.
"
Class {
	#name : #NWExclusiveGatewayBehavior,
	#superclass : #NWEventBehavior,
	#category : #'NewWave-Engine'
}

{ #category : #'as yet unclassified' }
NWExclusiveGatewayBehavior >> performExecution: elemToExecute executor: waveExecutor [
	| rez |
	"elemToExecute is gateway/exclusive 
	I should check the condition in sequence, which is in src gateway and get the next seq to execute"
	"rez := elemToExecute outgoingFlows detect: [ :each | wave taskResult = each condition].
	I expect for condition to be a block, and the block is passed the result of some execution, if block returns true then that seq is selected
	I should think about default gateway, if nothing is true
	And also think about multiple params to block"
	rez := elemToExecute outgoingFlows detect: [ :each | each condition value: waveExecutor taskResult].
	rez ifNotNil: [ waveExecutor flowHandler node: rez targetRef. waveExecutor tryToExecuteNext: elemToExecute. ].
	
]