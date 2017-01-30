FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.6

RUN gem install bee_java --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bee2maven"]
CMD ["--help"]
