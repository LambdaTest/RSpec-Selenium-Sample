# Rspec Selenium Sample
[Rspec](http://rspec.info/) Integration with LambdaTest.

![LambdaTest Logo](https://www.lambdatest.com/static/images/logo.svg)

<img src = 'http://rspec.info/images/logo.png' height="95">


## Setup
* Clone the repo
* Install dependencies `bundle install`
* Update `*.config.yml` files inside the `config/` directory with your [LambdaTest Username and Access Key](https://automation.lambdatest.com/)

## Run the tests
* To run a single test, run `bundle exec rake single`
* To run parallel tests, run `bundle exec rake parallel`

 To know how many concurrency you need by using our [Concurrency Calculator](https://www.lambdatest.com/concurrency-calculator)

## Notes
* You can view your test results on the [LambdaTest Automate dashboard](https://www.automation.lambdatest.com)
* To generate capabilities for different set of browsers, check out our [capability generator](https://www.lambdatest.com/capabilities-generator/)
* You can export the environment variables for the Username and Access Key of your LambdaTest account

  ```
  export LT_USERNAME=<your username> &&
  export LT_ACCESS_KEY=<your access-key>
  ```

## About LambdaTest

[LambdaTest](https://www.lambdatest.com/) is a cloud based selenium grid infrastructure that can help you run automated cross browser compatibility tests on 2000+ different browser and operating system environments. LambdaTest supports all programming languages and frameworks that are supported with Selenium, and have easy integrations with all popular CI/CD platforms. It's a perfect solution to bring your [selenium automation testing](https://www.lambdatest.com/selenium-automation) to cloud based infrastructure that not only helps you increase your test coverage over multiple desktop and mobile browsers, but also allows you to cut down your test execution time by running tests on parallel.
