# Welcome

> Dear Developer,
>
>   As the CEO of Planetastic it is my pleasure to welcome you to the team.
>   We are so very excited to have you here and are looking forward to all
>   the great things you are going to build. The sky is the limit for us
>   in Airline flight management software.
>
>   Sincerely,
>      Minimum Viable CEO
>

## Description

The following exercises are designed to teach you how to effectively build a
complex system through a series of small steps. Each step of this adventure you
will be presented with a series of problems to solve. Your objective is to
implement the functionality defined in the tests. You finish a step when all
the tests pass. Each exercise can be solved independently, however, each step
introduces logical and domain information you will use on the next step.

The goal of theses exercises is to practice building an application which
is composed of multiple different classes. This will start to help you
understand how larger applications are created.

Complete the exercises in the following order:

* airline_seat_test.rb
* flight_test.rb
* airplane_test.rb
* booking_test.rb

Bonus:

* subclasses_test.rb

## Getting Started

[Fork](https://github.com/JumpstartLab/classes-exercises/fork) and clone the `classes-exercises` repository.

```bash
$ cd ~/your/project/dir
$ git clone git@github.com:USERNAME/classes-exercises.git
$ cd classes-exercises
```

Create a branch so that you're not changing `master`:

```bash
$ git checkout -b make-tests-pass
```

## Keeping in sync with the upstream repository

`origin` is your fork of the project. We'll need to connect to the upstream repository.

To do this, add a new remote named upstream that points to the JumpstartLab:

```bash
$ git remote add upstream git@github.com:JumpstartLab/classes-exercises.git
```

Then pull down the updated version of upstream:

```bash
$ git fetch upstream
```

And now make sure you're on master:

```bash
$ git checkout master
$ git branch # should say *master
```

Make master point to the exact commit that upstream/master is pointing at:

```bash
$ git reset --hard upstream/master
```