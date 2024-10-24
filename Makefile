.SILENT:
default: setup

start = printf "\e[36m⚙️ %s...\e[0m\n" $(1)
success = printf "\e[32m✓ %s\e[0m\n" $(1)
execute = chmod u+x $(1) && $(1)

setup: \
	generate_project \
	done \
  
generate_project:
	$(call start, "Generating project")
	xcodegen generate --quiet
	open QuickStart.xcodeproj

done:
	$(call success, "All Done ლ(╹◡╹ლ)")
