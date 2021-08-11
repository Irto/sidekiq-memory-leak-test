# Test application for memory leak (Sidekiq + Mongoid)

This repository contains a Rails project with some code to investigate possible memory leak with Sidekiq + Mongoid.

## Installation

This is a raw rails application with Sidekiq + Mongoid, so we need just:

 - MondoDB
 - Redis
 - Ruby

After have the requirements, install just as a fresh rails app.

```bash
 $ bundle install
```

## The issue

After dump the `ObjectSpace` for one of our production apps that was with memory issues, we saw a high number of Sidekiq Thread stuck into the memory causing a memory leak. We decided to reproduce it in a fresh new Rails app and we did it. The issue is caused by a interation of Sidekiq with Mongoid over failed workers.

To reproduce it, follow these steps:
 - Install this rails app requirements and starts the sidekiq;
 - In a `rails console` enqueue many `LeakerWorker` (really MANY, something about ~100.000 times);
 - You may start the rails app to watch over the Sidekiq Web the memory growing, in my tests, it took 1 hour to get from 120 MB to 1 GB of RSS;

In the folder of `/objspace_dumps` we added many dumps we did over many situations. In most recent Mongoid v7 and in Rails v6 it only occurred in a second try, we don't know why.
