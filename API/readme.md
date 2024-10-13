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

#### json generator

just change the male and men when you wanted to get that data

```
JG.repeat(5, {
  UserName() {
     return JG.firstName('male');
  },
  Gender: "male",
  DateOfBirth: moment(JG.date(new Date(1950, 0, 1), new Date(1999, 11, 31))).format('YYYY-MM-DD'),
  KnownAs(){ return this.UserName;},
  Created: JG.date(new Date(2019, 0, 1), new Date(2020, 5, 30)),
  LastActive: JG.date(new Date(2020, 4, 1), new Date(2020, 5, 30)),
  Introduction: JG.loremIpsum({ units: 'sentences', count: 1 }),
  LookingFor: JG.loremIpsum({ units: 'paragraphs', count: 1 }),
  Interests: JG.loremIpsum({ units: 'paragraphs', count: 1 }),
  City: JG.city(),
  Country: JG.country(),
  Photos: [
    {
      url: `https://randomuser.me/api/portraits/men/${JG.integer(1, 99)}.jpg`,
      isMain: true
    }
  ],
});
```
