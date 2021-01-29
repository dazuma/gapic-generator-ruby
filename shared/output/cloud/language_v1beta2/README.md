# Ruby Client for the Google Cloud Language V1beta2 API

API Client library for the Google Cloud Language V1beta2 API

google-cloud-language-v1beta2 is the official client library for the Google Cloud Language V1beta2 API.

https://github.com/googleapis/google-cloud-ruby

This gem is a _versioned_ client. It provides basic client classes for a
specific version of the Google Cloud Language V1beta2 API. Most users should consider the
[google-cloud-language](https://rubygems.org/gems/google-cloud-language)
gem, a convenience wrapper that may also include higher-level interface classes.
See the section below titled *Which client should I use?* for more information.

## Installation

```
$ gem install google-cloud-language-v1beta2
```

## Before You Begin

In order to use this library, you first need to go through the following steps:

1. [Select or create a Cloud Platform project.](https://console.cloud.google.com/project)
1. [Enable billing for your project.](https://cloud.google.com/billing/docs/how-to/modify-project#enable_billing_for_a_project)
1. {file:AUTHENTICATION.md Set up authentication.}

## Quick Start

```ruby
require "google/cloud/language/v1beta2"

client = ::Google::Cloud::Language::V1beta2::LanguageService::Client.new
request = my_create_request
response = client.analyze_sentiment request
```

View the [Client Library Documentation](https://googleapis.dev/ruby/google-cloud-language-v1beta2/latest)
for class and method documentation.

## Enabling Logging

To enable logging for this library, set the logger for the underlying [gRPC](https://github.com/grpc/grpc/tree/master/src/ruby) library.
The logger that you set may be a Ruby stdlib [`Logger`](https://ruby-doc.org/stdlib/libdoc/logger/rdoc/Logger.html) as shown below,
or a [`Google::Cloud::Logging::Logger`](https://googleapis.dev/ruby/google-cloud-logging/latest)
that will write logs to [Cloud Logging](https://cloud.google.com/logging/). See [grpc/logconfig.rb](https://github.com/grpc/grpc/blob/master/src/ruby/lib/grpc/logconfig.rb)
and the gRPC [spec_helper.rb](https://github.com/grpc/grpc/blob/master/src/ruby/spec/spec_helper.rb) for additional information.

Configuring a Ruby stdlib logger:

```ruby
require "logger"

module MyLogger
  LOGGER = Logger.new $stderr, level: Logger::WARN
  def logger
    LOGGER
  end
end

# Define a gRPC module-level logger method before grpc/logconfig.rb loads.
module GRPC
  extend MyLogger
end
```

## Supported Ruby Versions

This library is supported on Ruby 2.4+.

Google provides official support for Ruby versions that are actively supported
by Ruby Core—that is, Ruby versions that are either in normal maintenance or
in security maintenance, and not end of life. Currently, this means Ruby 2.4
and later. Older versions of Ruby _may_ still work, but are unsupported and not
recommended. See https://www.ruby-lang.org/en/downloads/branches/ for details
about the Ruby support schedule.

## Client libraries FAQ

### What types of Ruby clients does Google offer?

Google offers two types of Ruby clients, _modern_ and _legacy_, which are
maintained in the
[google-cloud-ruby](https://github.com/googleapis/google-cloud-ruby) and
[google-api-ruby-client](https://github.com/googleapis/google-api-ruby-client)
GitHub repositories, respectively.

The _modern_ clients come in two flavors: higher-level _main_ clients
and lower-level _versioned_ clients.

### Why would I want to use a modern client?

The _modern_ Ruby client libraries for Google APIs are typically (but not
always) based on [gRPC](https://grpc.io/), which generally provides better
performance than that of the _legacy_ clients, which are based on REST.

For some services, the modern client also provides a higher-level interface
with additional features, convenience methods, and best practices built in.

### Why would I want to use a main client?

A _main_ client (which is a subtype of _modern_ client) has a name such as
`google-cloud-language`.

In _most_ cases, we recommend installing the main client gem rather than a
versioned client gem. This is because the main client will embody the best
practices for accessing the service, and may also be easier to use. In
addition, documentation and samples published by Google will demonstrate use
of the main client.

There will be only one main client for any given service, even a service with
multiple versions. For most services, the main client does not directly include
API client classes. Instead, it lists the service's versioned client(s) as
dependencies, and provides convenient factory methods for constructing client
classes provided by the underlying versioned client libraries. It will choose
the preferred service version to use by default (although it will generally let
you override its recommendation if you need to talk to a specific version of the
service.)

### Why would I want to use a versioned client?

A _versioned_ client (which is a subtype of _modern_ client) has a name such as
`google-cloud-language-v1beta2`. Each versioned client provides a complete but basic client
for a _single version_ of a specific service.

If you need to access only a specific version of a service, and you want to use
a lower-level interface, you can bypass the main client and instead install a
versioned client directly.

Some services publish multiple versions of their API, with potentially different
interfaces including differences in field names, types, or method calls. For
such services, there may be a separate versioned client library for each service
version. Most versioned clients are created and maintained by a code generator,
based on the service's published interface descriptions.

### Why would I want to use a legacy client?

Many Google APIs may not yet have a modern client library (neither a
main nor a versioned client) available. For these services, there should be a
_legacy_ client (with a name of the form `google-apis-<service>_<version>`)
available.

Legacy client libraries are based on REST and have wide coverage across Google
services, but may not offer the same performance or features provided by modern
clients.
