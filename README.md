## Rspec Selenium Sample
![Ruby](https://www.lambdatest.com/resources/images/Rspec-with-Selenium.jpg)

### Prerequisites
##### Install Ruby and gem on your system.
 - Windows: http://rubyinstaller.org/downloads/
 - macos: https://www.ruby-lang.org/en/documentation/installation/#homebrew
 - Linux: https://www.ruby-lang.org/en/documentation/installation/#apt


### Run your First Test
1. Clone the Rspec-Selenium-Sample repository. 
```
git clone https://github.com/LambdaTest/RSpec-Selenium-Sample.git
```
2. Next get into Rspec-Selenium-Sample folder, and import Lamabdatest Credentials. You can get these from lambdatest automation dashboard.
   <p align="center">
   <b>For Linux/macOS:</b>:
 
```
export LT_USERNAME="YOUR_USERNAME"
export LT_ACCESS_KEY="YOUR ACCESS KEY"
```
<p align="center">
   <b>For Windows:</b>

```
set LT_USERNAME="YOUR_USERNAME"
set LT_ACCESS_KEY="YOUR ACCESS KEY"
```
Step 3. Install dependencies using gem.
```
bundle install 
```
Step 4. Run single test.
```
bundle exec rake single
```
Step 5. Run parallel test.
```
bundle exec rake parallel
```
## Notes
 * You can view your test results on the [Lambdatest Automate dashboard]
 * To test on a different set of browsers, check out our [platform configurator](http://labs.lambdatest.com/app-lambda/capabilities-generator/capabilities-generator.html)

## About LambdaTest

[LambdaTest](https://www.lambdatest.com/) is a cloud based selenium grid infrastructure that can help you run automated cross browser compatibility tests on 2000+ different browser and operating system environments. LambdaTest supports all programming languages and frameworks that are supported with Selenium, and have easy integrations with all popular CI/CD platforms. It's a perfect solution to bring your [selenium automation testing](https://www.lambdatest.com/selenium-automation) to cloud based infrastructure that not only helps you increase your test coverage over multiple desktop and mobile browsers, but also allows you to cut down your test execution time by running tests on parallel.
### Resources

### Resources

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)
##### [Ruby Documentation](https://ruby-doc.org/)