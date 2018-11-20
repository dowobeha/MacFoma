all: xcode


xcode:
	swift package update
	swift package resolve
	swift package -Xlinker -lz generate-xcodeproj
	open *.xcodeproj



clean:
	rm -rf .build *.xcodeproj Package.resolved *~
