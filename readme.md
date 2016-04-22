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



### Example 2 - Full service - Drone.io



### Example 3 - Local/Private Cluster CI service

### Example 4 - Private Cloud CI service - Digital Ocean

### Example 5 - Private Cloud CI service - AWS

### Example 6 - Private Cloud CI service - Google 

### Example 7 - Private Cloud CI service - Google Kubernetes