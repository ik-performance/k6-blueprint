# k6-blueprint

Blueprint performance project

- [Documenation](https://k6.io/docs/using-k6/)
- [Github](https://github.com/loadimpact/k6)

[![](https://img.shields.io/github/license/ik-performance/k6-blueprint)](https://github.com/ik-performance/k6-blueprint)
![](https://img.shields.io/github/v/tag/ik-performance/k6-blueprint)
![](https://img.shields.io/issues/github/ik-performance/k6-blueprint)
![](https://img.shields.io/github/issues/ik-performance/k6-blueprint)
![](https://img.shields.io/github/issues-closed/ik-performance/k6-blueprint)
[![](https://img.shields.io/github/languages/code-size/ik-performance/k6-blueprint)](https://github.com/ik-performance/k6-blueprint)
[![](https://img.shields.io/github/repo-size/ik-performance/k6-blueprint)](https://github.com/ik-performance/k6-blueprint)
![](https://img.shields.io/github/languages/top/ik-performance/k6-blueprint?color=green&logo=terraform&logoColor=blue)
![](https://img.shields.io/github/commit-activity/m/ik-performance/k6-blueprint)
![](https://img.shields.io/github/contributors/ik-performance/k6-blueprint)
![](https://img.shields.io/github/last-commit/ik-performance/k6-blueprint)

- [k6-blueprint](#k6-blueprint)
  * [Running locally](#running-locally)
    + [DSL](#dsl)
    + [Scenario's](#scenario-s)
    + [Simulations](#simulations)
  * [Mocking](#mocking)
    + [Data](#data)
    + [API](#api)
    + [Alternative Examples](#alternative-examples)
  * [Targets](#targets)
  * [:memo: Guidelines](#-memo--guidelines)
  * [License](#license)
  * [How to Contribute](#how-to-contribute)
- [Authors](#authors)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>

## Running locally

### DSL

### Scenario's
A scenario contains at least one request. Typically, this is a HTTP request.

### Simulations
A simulation can be seen as the actual test. It determines what scenario's should be run, and how many users should be simulated over the scenario's.

For all awailable simulations `make choose/simulation`

## Mocking

### Data

- https://mockaroo.com/

### API

- https://mockaroo.com/
- https://jsonplaceholder.typicode.com
- https://test-api.k6.io/

### Alternative Examples

- https://github.com/loadimpact/k6/tree/master/samples
- https://github.com/ik-performance/postman-to-k6/tree/master/example

## Targets

<!-- START makefile-doc -->
```
$ make help
change                         Update changelog
choose/simulation              Show all simulations
init                           Commit hooks setup
validate                       Validate with pre-commit hooks
```
<!-- END makefile-doc -->

## :memo: Guidelines

 - :memo: Use a succinct title and description.
 - :bug: Bugs & feature requests can be be opened
 - :signal_strength: Support questions are better asked on [Stack Overflow](https://stackoverflow.com/)
 - :blush: Be nice, civil and polite ([as always](http://contributor-covenant.org/version/1/4/)).

## License

Copyright 2019 Ivan Katliarhcuk

MIT Licensed. See [LICENSE](./LICENSE) for full details.

## How to Contribute

Submit a pull request

# Authors

Currently maintained by [Ivan Katliarchuk](https://github.com/ivankatliarchuk) and these [awesome contributors](https://github.com/terraform-module/terraform-module-blueprint/graphs/contributors).

[![ForTheBadge uses-git](http://ForTheBadge.com/images/badges/uses-git.svg)](https://GitHub.com/)
