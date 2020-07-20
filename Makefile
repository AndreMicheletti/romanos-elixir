
default:
	@ echo "Invalid target. Usage: make run-docker"

run-docker:
	@ docker build -t romanos_elixir .
	@ docker run -it romanos_elixir