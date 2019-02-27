phony: clean build run

BUILD_DIR := bin
BUILD_JAR := app.jar
MANIFEST_FILE := manifest.txt

clean:
	@echo "*** Cleaning project ***"
	rm -rf ${BUILD_DIR}
	rm -rf ${BUILD_JAR}

build: clean
	@echo "*** Building project jar ***"
	mkdir -p ${BUILD_DIR}
	javac \
		-sourcepath src \
		-classpath lib/*.jar src/**/*.java \
		-d ${BUILD_DIR}
	jar cmfv \
		${MANIFEST_FILE} ${BUILD_JAR} \
		-C bin . \
		lib/*.jar

run:
	@echo "*** Running project jar ***"
	java -jar ${BUILD_JAR}
