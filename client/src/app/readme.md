#### what are observables?

- new standard for managing async data included in ES7 (ES2016).
- introduced in angular v@
- Observables are lazy collections of multiple values over time.
- you can think of observables like a newsletter
  - only subscribers of the newsletter receive the newsletter
  - if no-one subscribes to the newsletter it probably will not be printed

#### Promises vs observables

| Promises                       | Observable                                           |
| ------------------------------ | ---------------------------------------------------- |
| Provides a single future value | Emits multiple values over time                      |
| Not Lazy                       | Lazy                                                 |
| can not cancel                 | Able to cancel                                       |
|                                | Can use with map, filter, reduce and other operators |
