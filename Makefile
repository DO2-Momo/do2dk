
setup:
	chmod +x ./scripts/build_installer.sh;\
	chmod +x ./scripts/build_iso.sh;\
	chmod +x ./scripts/clean.sh;\

clean:
	./scripts/clean.sh

installer:
	./scripts/build_installer.sh

iso:
	./scripts/build_iso.sh