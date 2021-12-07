import QtQml 2.15

QtObject {
	required property color input

	property bool invertOpacity: false

	readonly property color output: Qt.rgba(
		1.0 - input.r,
		1.0 - input.g,
		1.0 - input.b,
		invertOpacity? 1.0 - input.a : input.a
	)
}
