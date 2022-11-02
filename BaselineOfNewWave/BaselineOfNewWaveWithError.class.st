Class {
	#name : #BaselineOfNewWaveWithError,
	#superclass : #BaselineOf,
	#category : #BaselineOfNewWave
}

{ #category : #baselines }
BaselineOfNewWaveWithError >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ "Dependencies"
			self scheduler2: spec.

			"Packages"
			spec 
				package: 'NewWave-Core' with: [ spec requires: #(Scheduler) ];
				package: 'NewWave-Core-Tests' with: [ spec requires: #('NewWave-Core') ];
				package: 'NewWave-Plugin';
				package: 'NewWave-ObjectPreparator' with: [ spec requires: #(NewWave) ];
				package: 'NewWave-Roassal' with: [ spec requires: #(NewWave) ];
				package: 'NewWave-Server' with: [ spec requires: #(NewWave) ].
				
			"Groups"
			spec group: 'default' with: #(All).
			spec group: 'Core' with: #('NewWave-Core' 'NewWave-Tests').
			spec group: 'Visualization' with: #(Core 'NewWave-Roassal').
			spec group: 'All' with: #(Core 'NewWave-Plugin' Visualization) ].
	

]

{ #category : #accessing }
BaselineOfNewWaveWithError >> neoJson: spec [
	spec 
		baseline: 'NeoJSON' 
		with: [ 
			spec repository: 'github://svenvc/NeoJSON/repository' 
		].
]

{ #category : #accessing }
BaselineOfNewWaveWithError >> projectClass [ 
	^ MetacelloCypressBaselineProject
]

{ #category : #accessing }
BaselineOfNewWaveWithError >> scheduler2: spec [
	spec 
		baseline: 'Scheduler'
		with: [ 
			spec repository: 'github://seandenigris/Scheduler:master'
		 ]
]

{ #category : #accessing }
BaselineOfNewWaveWithError >> teapot: spec [
	spec 
		baseline: 'Teapot'
		with: [ 
			spec repository: 'github://zeroflag/teapot:master/source'
		 ]
]

{ #category : #accessing }
BaselineOfNewWaveWithError >> zinc: spec [
	spec 
		baseline: 'ZincHTTPComponents'
		with: [ 
			spec repository: 'github://svenvc/zinc:v3.0.1/repository'
		 ]
]
