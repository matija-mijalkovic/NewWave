Class {
	#name : #WaveExecutorActivationTest,
	#superclass : #TestCase,
	#instVars : [
		'waveExecutor'
	],
	#category : #'NewWave-Core-Tests'
}

{ #category : #tests }
WaveExecutorActivationTest >> setUp [
	| se ee t1 we seq seq2 fh engine process |
	super setUp.
		
	se := NWStartEvent new.
	se description: #NWStartEvent.
	
	t1 := NWBaseTask new.
	t1 description: 'B'.
	t1 value: 200.
	
	ee := NWEndEvent new.
	ee description: #NWEndEvent.
	
	seq := NWSequence source: se target: t1.
	seq2 := NWSequence source: t1 target: ee.
	
	se addOutgoingFlow: seq.
	t1 addIncoming: seq addOutgoing: seq2.
	ee addIncomingFlow: seq2.
	
	process := NWProcess id: '1' name: 'process1' initialFlowElement: se.
	engine := WaveEngine new.
	engine addProcess: process name: 'process1' .
	waveExecutor := (engine processHandler: 'process1') mainExecutor.
	
]

{ #category : #tests }
WaveExecutorActivationTest >> testActivationCreation [
	| se we|
	se := NWStartEvent new.
	se description: #NWStartEvent.
	we := NWExecutor initialNode: se.
	self shouldnt: [ NWActivation node: se executor: we] raise: Error.
	

]

{ #category : #tests }
WaveExecutorActivationTest >> testActivationForNode [
	| se act1 |
	se := waveExecutor shouldExecuteNextNewHandler.
	act1 := waveExecutor activationForNode: se.
	self assert: act1 equals: (waveExecutor activationForNode: se).
	

]

{ #category : #tests }
WaveExecutorActivationTest >> testExistingActivationForNode [
	| se |
	se := waveExecutor shouldExecuteNextNewHandler.
	waveExecutor newActivationForNode: se.
	self should: [ waveExecutor newActivationForNode: se. ] raise: Error.
	

]

{ #category : #tests }
WaveExecutorActivationTest >> testNewActivationForNode [
	| activation se |
	se := waveExecutor shouldExecuteNextNewHandler.
	activation := waveExecutor newActivationForNode: se.
	self assert: activation isNotNil.

	

]
