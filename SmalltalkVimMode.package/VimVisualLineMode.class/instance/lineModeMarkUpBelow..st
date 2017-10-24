vim-visual-line-mode
lineModeMarkUpBelow: aKeyboardEvent
 "k" 
 | begin end |
 Transcript show: 'mark: ', markIndex asString, ', length = ', editor selection size asString; cr. 

 begin := editor start.
 editor startIndex = 1 
  ifTrue: [ ^ self ]. 

 end := self lastEndOfLineIndex: (editor stopIndex - 1).
	editor selectFrom: begin to: end - 1.
	^ self