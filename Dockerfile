FROM intersystemsdc/irishealth-community

RUN --mount=type=bind,src=.,dst=/home/irisowner/app/ \
	iris start IRIS && \
	iris session IRIS < /home/irisowner/app/iris.script && \
	iris stop iris quietly

