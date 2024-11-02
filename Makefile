
testapi:
	cd API &&	dotnet watch --no-hot-reload

testclient:
	cd client && ng serve

createComponent:
	cd client && ng g c ${name} --skip-tests

createGuards:
	cd client && ng g g _guards/${name} --skip-tests

createService:
	cd client && ng g s _services/${name} --skip-tests

createInterceptor:
	cd client && ng g interceptor _interceptors/${name} --skip-tests