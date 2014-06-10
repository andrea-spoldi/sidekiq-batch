Sidekiq Batch
===============

NOTE: This is currently README-driven development.  Star this project if you are interested and I'll remove this comment when it is ready for consumption.

Sidekiq Batch provides a simple approach to managing batches of jobs in Sidekiq and then processing a callback on completion of all jobs in the batch.  A couple of typical uses might be:

* Crawling web pages on a site as a batch, and then storing all results when the batch completes
* Processing a group of images to create thumbnails, and then storing the result
* Parsing a large document in parallel, and then merging the results when all have completed

## Features

* Uses Redis to maintain state - no database required
* Supports a callback on batch completion (See Batch Completion below regarding Failed job handling)

## Batch Completion

A batch is considered complete when all jobs have been run at least once.  Failed jobs will be considered complete even if retry is enabled.

## Installation

Setup the SidekiqBatch middleware.  See also [Sidekiq's Middleware documentation](https://github.com/mperham/sidekiq/wiki/Middleware).

```ruby
Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    chain.add SidekiqBatch::Middleware
  end
end

```

## Example Usage

```ruby
```

## TODO

* Store batch job stats
