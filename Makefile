ROOT_DIR = $(shell pwd)
ASSETS_DIR = assets
      
dev:
	@echo "Building for dev"
	@echo "Copying dev_assets to $(ASSETS_DIR)"
	@cp -r $(ROOT_DIR)/flavor_assets/dev/* $(ASSETS_DIR)
	dart run flutter_native_splash:create

      
prod:
	@echo "Building for prod"
	@echo "Copying prod_assets to $(ASSETS_DIR)"
	@cp -r $(ROOT_DIR)/flavor_assets/prod/* $(ASSETS_DIR)
	dart run flutter_native_splash:create

clean:
	@echo "Cleaning"
	@flutter clean

build_and_distribute_dev: clean
	@make build_android_dev_with_distribution -f Makefile_android.mk
	@make build_ios_dev_with_distribution -f Makefile_ios.mk

build_and_distribute_prod: clean
	@make build_android_prod_with_distribution -f Makefile_android.mk
	@make build_ios_prod_with_distribution -f Makefile_ios.mk

release_notes:
	@git cliff --latest -c cliff_txt.toml -o release_notes.txt

changelog:
	@git cliff -c cliff_md.toml -o CHANGELOG.md
