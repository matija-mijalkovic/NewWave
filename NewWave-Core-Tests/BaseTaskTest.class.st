Class {
	#name : #BaseTaskTest,
	#superclass : #TestCase,
	#category : #'NewWave-Core-Tests'
}

{ #category : #tests }
BaseTaskTest >> testIncomingFlow [
	| t1 t2 s |
	t1 := NWBaseTask new.
	t1 description: 'A'.
	t1 value: 200.
	t2 := NWBaseTask new.
	t2 description: 'B'.
	t2 value: 200.
	s := NWSequence source: t1 target: t2.
	t1 addIncomingFlow: s.
	self assert: t1 incomingFlows size equals: 1
]

{ #category : #tests }
BaseTaskTest >> testIncomingOutgoingFlow [
	| t1 t2 t3 s s2 |
	t1 := NWBaseTask new.
	t1 description: 'A'.
	t1 value: 200.
	
	t2 := NWBaseTask new.
	t2 description: 'B'.
	t2 value: 200.
	
	t3 := NWBaseTask new.
	t3 description: 'C'.
	t3 value: 300.
	
	s := NWSequence source: t1 target: t2.
	s2 := NWSequence source: t2 target: t3. 
	t1 addOutgoingFlow: s.
	t2 addIncoming: s addOutgoing: s2.
	t3 addIncomingFlow: s2.
	self assert: t2 incomingFlows size equals: 1.
	self assert: t2 outgoingFlows size equals: 1.
	




]

{ #category : #tests }
BaseTaskTest >> testIncomingOutgoingListFlow [
	| t1 t2 t3 s s2 s3 split1 |
	
	split1 := NWExclusive new.
	split1 description: 'Split1'.

	t1 := NWBaseTask new.
	t1 description: 'A'.
	t1 value: 200.
	
	t2 := NWBaseTask new.
	t2 description: 'B'.
	t2 value: 200.
	
	t3 := NWBaseTask new.
	t3 description: 'C'.
	t3 value: 300.
	
	s := NWSequence source: t1 target: split1.
	s2 := NWSequence source: split1 target: t2.
	s3 :=  NWSequence source: split1 target: t3.
	
	t1 addOutgoingFlow: s.
	split1 addIncoming: s addOutgoingList: (OrderedCollection with: s2 with: s3). 
	self assert: split1 incomingFlows size equals: 1.
	self assert: split1 outgoingFlows size equals: 2.
	




]

{ #category : #tests }
BaseTaskTest >> testOutgoingFlow [
	| t1 t2 s |
	t1 := NWBaseTask new.
	t1 description: 'A'.
	t1 value: 200.
	t2 := NWBaseTask new.
	t2 description: 'B'.
	t2 value: 200.
	s := NWSequence source: t1 target: t2.
	t1 addOutgoingFlow: s.
	self assert: t1 outgoingFlows size equals: 1
]
