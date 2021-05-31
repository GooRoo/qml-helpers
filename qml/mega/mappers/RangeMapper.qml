import QtQml 2.15

QtObject {
	property int input
	property int inputMin: inputRange[0] ?? 0
	property int inputMax: inputRange[1] ?? undefined
	property var inputRange

	property int outputMin: outputRange[0] ?? 0
	property int outputMax: outputRange[1] ?? 100
	property var outputRange

	readonly property int output: input * Math.abs(outputMax - outputMin) / Math.abs(inputMax - inputMin)
}
