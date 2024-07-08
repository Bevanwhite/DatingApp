## Angular - Running SSL Locally

1. create a file called certificate.config with the following content

```
[req]
default_bits = 2048
prompt = no
default_md = sha256
x509_extensions = v3_req
distinguished_name = dn

[dn]
C = US
ST = AZ
L = Phoenix
O = My Organization
OU = My Organization Unit
emailAddress = email@domain.com
CN = localhost

[v3_req]
subjectAltName = @alt_names

[alt_names]
DNS.1 = localhost
```

2. Next, we can use OpenSSL to create the certificate. I’m doing this on Windows using Git Bash and using the following command:

```
openssl req -new -x509 -newkey rsa:2048 -sha256 -nodes -keyout localhost.key -days 3560 -out localhost.crt -config certificate.config
```

3. When you navigate to the URL in Google Chrome you will be presented with the following warning about the connection not being private.
4. This warning is due to us using a self-signed certificate that is not in the Trusted Root Certification Authorities store.
5. Now you can click the advanced button and then proceed to the site but frankly that is annoying to have to do everytime.Chrome proceed to site
6. Navigate to the certs directory under our project and open up the localhost.crt file
7. Click on the Install Certificate button
8. When the Certificate Import Wizard comes up, select Current User as the Store Location and click Next
9. Select “Place all certificates in the following store” then click the Browse button and select “Trusted Root Certification Authorities” and click Next
10. Click Finish and you will be presented with a security warning dialog about the self-signed certificate that you need to click Yes to install the certificate
11. Click Ok to close the Certificate Import Wizard
12. Click Ok to close the Certificate dialog
13. Navigate to https://localhost:4200 and your connection should now be secure with the certificate being trusted.
14. **If the certificate is still not trusted, you will need to close all of your Chrome instances and then open back up Chome and go to https://localhost:4200**
15. **[url](https://digitaldrummerj.me/angular-local-ssl/)** - for this
