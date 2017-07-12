# Continuous Analysis

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

This repository presents [Continuous Analysis](http://greenelab.github.io/continuous_analysis/), a process demonstrating computational reproducibility by producing verifiable end-to-end runs of computational research. The process is described in detail in: [Nature Biotechnology](http://www.nature.com/nbt/journal/vaop/ncurrent/full/nbt.3780.html) and [Biorxiv Preprint](http://dx.doi.org/10.1101/056473).

We encourage additions and improvements, please create an issue or better yet, implement it and create a pull request. Please let us know if you run into any difficulty implementing continuous analysis on your own.

## Examples

Examples and real applications of continuous analysis are available:

* RNA-seq Analysis:
	* Using [Salmon](https://github.com/COMBINE-lab/continuous_analysis_rnaseq) (and Drone v0.5)
	* Using [Kallisto](https://github.com/greenelab/continuous_analysis_rnaseq)
* [Phylogenetic Tree Building](https://github.com/greenelab/continuous_analysis_phylo)
* [Microarray Differential Expression Analysis](https://github.com/greenelab/continuous_analysis_brainarray) - example from Continuous Analysis Paper
* [EHR Imputation](https://github.com/epistasislab/imputation)
* [Privacy-preserving generative deep neural networks support clinical data sharing](https://github.com/greenelab/SPRINT_gan)
* [Denoising Autoencoders for Phenotype Stratification](https://github.com/greenelab/DAPS)

This repository shows example configurations with a locally hosted [Drone](https://github.com/drone/drone) installation as well as [Shippable](https://app.shippable.com/), [wercker](http://wercker.com/) and [Travis CI](https://travis-ci.org/). It uses a small test run of [Kallisto](https://github.com/pachterlab/kallisto) as an example. The figures below are re-generated with each commit.

![Fig1](https://github.com/greenelab/continuous_analysis/blob/master/drone/output/fig1.png?raw=true)

![Fig2](https://github.com/greenelab/continuous_analysis/blob/master/drone/output/fig2.png?raw=true)

![Fig3](https://github.com/greenelab/continuous_analysis/blob/master/drone/output/fig3.png?raw=true)

## Configuration

Configuration instructions can be found [here](http://greenelab.github.io/continuous_analysis/).

## Feedback

Please feel free to email me - (brettbe) at med.upenn.edu with any feedback or raise a github issue with any comments or questions. We also encourage you to send examples of your own usage of continuous analysis to be included in the examples section.

## Acknowledgements
This work is supported by the Gordon and Betty Moore Foundation's Data-Driven Discovery Initiative through Grant GBMF4552 to C.S.G. as well as NIH grants AI116794 and LM010098 and the Commonwealth Universal Research Enhancement (CURE) Program grant from the Pennsylvania Department of Health
to Jason Moore.
