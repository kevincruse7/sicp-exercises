#lang info

(define collection "sicp-libraries")
(define version "1.0")
(define deps (list "sicp" '#:version "1.0"))
(define build-deps
  (list "iracket" '#:version "1.3"
        "racket-langserver" '#:version "1.0"))
