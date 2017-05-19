# cypress-image

> Full Docker image for running [Cypress CI][cy] test in your own container

The Docker image is built automatically on any code changes,
and it is hosted on the Docker hub at
[bahmutov/cypress-image/](https://hub.docker.com/r/bahmutov/cypress-image/)

## Tags / versions

We build several tags, based on Node and Cypress version, usually following
the pattern `node-<major>-cypress-<full cypress version>`, for example
`node-6-cypress-0.19.2`.

* [bahmutov/cypress-image:node-6-cypress-deps](images/node-6-cypress-deps)
  is the very base image with Node and XVFB dependencies Cypress needs to run.
  You can install specific version of Cypress into this image.
* [bahmutov/cypress-image:node-6-cypress-0.19.2](images/node-6-cypress-0.19.2)
  a base image with Cypress 0.19.2 installed globally
* ... other tags, see [images](images) subfolders

To test if a particular full image is working correctly, run with to print
the Cypress version

```sh
docker run -it bahmutov/cypress-image:node-6-cypress-0.19.2 cypress --version
Cypress CLI: 0.13.1
Cypress App: 0.19.2
```

## Related info

More information about [Cypress.io][cy]

* [Web testing nirvana with Cypress][blog post]
* [Store images on Docker Hub](https://docs.docker.com/engine/tutorials/dockerrepos/)
* [Tag and push image to the registry](https://docs.docker.com/mac/step_six/)

[cy]: https://www.cypress.io/
[blog post]: https://glebbahmutov.com/blog/web-testing-nirvana-with-cypress/

### Small print

Author: Gleb Bahmutov &copy; 2016

* [@bahmutov](https://twitter.com/bahmutov)
* [glebbahmutov.com](http://glebbahmutov.com)
* [blog](http://glebbahmutov.com/blog/)

License: MIT - do anything with the code, but don't blame me if it does not work.

Spread the word: tweet, star on github, etc.

Support: if you find any problems with this module, email / tweet /
[open issue](https://github.com/bahmutov/cypress-image/issues) on Github

## MIT License

Copyright (c) 2016 Gleb Bahmutov

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
