#lang info

(define collection "sicp-libraries")
(define version "1.0")
(define deps (list (list "sicp" '#:version "1.0")))
(define build-deps
  (list (list "iracket" '#:version "1.3")
        (list "racket-langserver" '#:version "1.0")))
