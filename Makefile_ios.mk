build_dev_ios:
	@echo "Building"
	@flutter build ios --release --flavor dev -t lib/app/flavors/main_dev.dart

build_ios_dev_with_distribution: build_dev_ios
	@cd ios && bundle exec fastlane build flavor:dev firebase:true test_flight:true --env dev

build_ios_dev_firebase_only: build_dev_ios
	@echo "Distributing to the Firebase App Distribution"
	@cd ios && bundle exec fastlane build flavor:dev firebase:true --env dev

build_ios_dev_test_flight_only: build_dev_ios
	@echo "Distributing to the TestFlight"
	@cd ios && bundle exec fastlane build flavor:dev test_flight:true

build_prod_ios:
	@echo "Building"
	@flutter build ios --release --flavor prod -t lib/app/flavors/main_prod.dart

build_ios_prod_with_distribution: build_prod_ios
	@cd ios && bundle exec fastlane build flavor:prod firebase:true test_flight:true --env prod

build_ios_prod_firebase_only: build_prod_ios
	@echo "Distributing to the Firebase App Distribution"
	@cd ios && bundle exec fastlane build flavor:prod firebase:true --env prod

build_ios_prod_test_flight_only: build_prod_ios
	@echo "Distributing to the TestFlight"
	@cd ios && bundle exec fastlane build flavor:prod test_flight:true
