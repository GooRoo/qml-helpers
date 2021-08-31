import QtQml 2.15

QtObject {
	property real input
	property real inputMin: inputRange[0] ?? 0
	property real inputMax: inputRange[1] ?? undefined
	property var inputRange

	property real outputMin: outputRange[0] ?? 0
	property real outputMax: outputRange[1] ?? 100
	property var outputRange

	readonly property real output: input * Math.abs(outputMax - outputMin) / Math.abs(inputMax - inputMin)
}
