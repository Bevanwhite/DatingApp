
testapi:
	cd API &&	dotnet watch --no-hot-reload

testrun:
	cd API && dotnet run

dropdatabase:
	cd API && dotnet ef database drop

updatedatabase:
	cd API && dotnet ef update database

addmigrations:
	cd API && dotnet ef migrations add ${name}

removeMigrations:
	cd API && dotnet ef migrations remove ${name}

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

createDirective:
	cd client && ng g d _directives/${name} --skip-tests