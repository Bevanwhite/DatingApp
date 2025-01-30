
testapi:
	cd API &&	dotnet watch --no-hot-reload

testrun:
	cd API && dotnet run

testrunclient:
	cd client && ng build --configuration=production

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


launchfly:
	fly launch --image jefferywhite/${name}:latest

lanuchsecrets:
	fly secrets list

setsecrets:
	fly secrets set ${name}

buildclient:
	cd client && ng build --configuration=production

builddocker:
	cd API && docker build -t jefferywhite/${name} .

pushdocker:
	cd API && docker push jefferywhite/${name}:latest
	

lanuchdeploy:
	fly deploy

