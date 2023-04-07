setup:
	chmod +x ./scripts/build_installer.sh;\
	chmod +x ./scripts/build_iso.sh;\
	chmod +x ./scripts/clean.sh;\

clean:
	./scripts/clean.sh

installer: setup
	./scripts/build_installer.sh

iso: installer
	./scripts/build_iso.sh