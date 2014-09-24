Freelancer Jekyll theme
=========================

This is a dockerized version of [jeromelachaud/freelancer-theme](https://github.com/jeromelachaud/freelancer-theme)

## The following files are missing and need to be user provided
 - config.yml
 - _posts/ folder
 - img/ folder


## Examples:

 - https://github.com/jeromelachaud/freelancer-theme/blob/master/_config.yml 
 - https://github.com/jeromelachaud/freelancer-theme/tree/master/img
 - https://github.com/jeromelachaud/freelancer-theme/tree/master/_posts

## Usage

Dockerfile
```
FROM luebken/freelancer
```

 - docker build -t mypage .
 - docker run -p 8080:4000 mypage
