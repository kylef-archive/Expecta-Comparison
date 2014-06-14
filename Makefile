all: test test-podspec

test:
	xcodebuild -workspace "ExpectaComparisonTests/ExpectaComparisonTests.xcworkspace" -scheme "ExpectaComparisonTests" test | xcpretty -c ; exit ${PIPESTATUS[0]}

test-podspec:
	pod lib lint Expecta+Comparison.podspec

