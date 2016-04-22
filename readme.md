# Continuous Analysis

We consider 3 configurations of continuous analysis:

1. Using a full service continuous integration service.
	* 	Shippable ([Shippable](https://app.shippable.com/) is shown but many other CI services are docker compatible including [Codeship](https://codeship.com/), [Travis CI](https://travis-ci.org/), [Wercker](http://wercker.com/), [CircleCI](https://circleci.com/) and several others)
	* 	Hosted Drone.io (waiting on docker support)	
2. Installing a personal local continuous integration service.
3. Provisioning a personal continuous integration service in the cloud.
	* [Digital Ocean](https://www.digitalocean.com/)
	* [Amazon Web Services](http://aws.amazon.com/)
	* [Google Cloud Platform](https://cloud.google.com/)
	* [Kubernetes on Google Cloud Platform](http://kubernetes.io/)Using a full service continuous integration service requires the least set up time but cannot handle computational intensive work. Local continuous integration can be used at no cost, and configured to take advantage of institutional clusters or GPU computing. Continuous integration in the cloud offers elastic computing resources with the ability to scale up or down depending on the computational complexity of your work.

Setup Instructions

### Example 1 - Full service - Shippable

Shippable is the only example shown that does not rely on the [open source drone project](https://github.com/drone/drone)

1.) Sign in to [Shippable](https://app.shippable.com/) using Github

2.) Select the account owner for your repository in the Subscriptions dropdown, click the enable project button for the desired project.

3.) Add a shippable.yml file to the root of your repository
* First pull in your base docker image
	
~~~yaml
pre_ci_boot:
      image_name: brettbj/continuous_analysis_base
      image_tag: latest
      pull: true
      options: "-e HOME=/root" 
~~~


* Then run any unit tests and/or integration tests you have

~~~yaml
ci:
    - cd /root/src/github.com/greenelab/continuous_analysis
    - nose2 --plugin nose2.plugins.junitxml --junit-xml test 
    - mv nose2-junit.xml shippable/testresults/tests.xml
    - coverage run --branch test.py
    - coverage xml -o shippable/codecoverage/coverage.xml test.py
~~~

4.) To push a docker image containing the completed results enable an integration with dockerhub. From your project page in shippable, go to the settings tab. In the hub integration dropdown, choose create integration and follow the instructions.

* Add code resembling the following to your shippable.yml file:

~~~yaml
post_ci:
    - docker build -t brettbj/continuous_analysis .
    - docker push brettbj/daps:latest
~~~



### Example 2 - Full service - Drone.io (waiting on docker support)



### Example 3 - Local/Private Cluster CI service

### Example 4 - Private Cloud CI service - Digital Ocean

### Example 5 - Private Cloud CI service - AWS

### Example 6 - Private Cloud CI service - Google 

### Example 7 - Private Cloud CI service - Google Kubernetes