#### JSON Web Tokens (JWT)

- Industry standard for tokens(RFC 7519)
- Self-Contained and can contain:
  - Credentials
  - Claims
  - Other information

* Basically this a long string

#### Benefits of JWT

- No session to manage - JWTs are self contained tokens
- Portable - A single token can be used with multiple backends
- No Cookies required - moblie friendly
- Performance - Once a token is issued, there is no need to make a database request to verify a users authentication
