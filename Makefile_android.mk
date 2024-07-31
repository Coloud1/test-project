build_android_dev_apk:
	@echo "Build Android APK"
	@flutter build apk --release --flavor dev -t lib/app/flavors/main_dev.dart

build_android_dev_aab:
	@echo "Build Android AAB"
	@flutter build appbundle --release --flavor dev -t lib/app/flavors/main_dev.dart

build_android_dev_with_distribution: build_android_dev_firebase_only build_android_dev_store_only

build_android_dev_firebase_only: build_android_dev_apk
	@echo "Distributing"
	@cd android && bundle exec fastlane build flavor:dev firebase:true artifact_type:apk --env dev

build_android_dev_store_only: build_android_dev_aab
	@echo "Distributing"
	@cd android && bundle exec fastlane build flavor:dev store:true artifact_type:aab --env dev

build_android_prod_apk:
	@echo "Build Android APK"
	@flutter build apk --release --flavor prod -t lib/app/flavors/main_prod.dart

build_android_prod_aab:
	@echo "Build Android AAB"
	@flutter build appbundle --release --flavor prod -t lib/app/flavors/main_prod.dart

build_android_prod_with_distribution: build_android_prod_firebase_only build_android_prod_store_only

build_android_prod_firebase_only: build_android_prod_apk
	@echo "Distributing"
	@cd android && bundle exec fastlane build flavor:prod firebase:true artifact_type:apk --env prod

build_android_prod_store_only: build_android_prod_aab
	@echo "Distributing"
	@cd android && bundle exec fastlane build flavor:prod store:true artifact_type:aab --env prod
