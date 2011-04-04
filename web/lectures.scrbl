#lang scribble/manual
@(require "utils.rkt"
	  "unnumbered.rkt"
	  scribble/eval
          racket/sandbox
          (for-label lang/htdp-intermediate-lambda)
          #;(for-label class0))

@(define the-eval
  (let ([the-eval (make-base-eval)])
    (the-eval '(require lang/htdp-intermediate-lambda))
   ;(the-eval '(require class0))
    (call-in-sandbox-context 
     the-eval 
     (lambda () ((dynamic-require 'htdp/bsl/runtime 'configure)
                 (dynamic-require 'htdp/isl/lang/reader 'options))))
    the-eval))

@title*[#:style 'toc]{Lectures}

In this section, you'll find notes and code from 
each lecture.

@local-table-of-contents[#:style 'immediate-only]

@include-section["lectures/lec01.scrbl"]
@include-section["lectures/lec02.scrbl"]

@section[#:tag "lec03"]{1/17: Holiday (MLK Day)}
There is no lecture on 1/17 since it is Martin Luther King, Jr. Day.

@include-section["lectures/lec04.scrbl"]
@include-section["lectures/lec05.scrbl"]
@include-section["lectures/lec06.scrbl"]
@include-section["lectures/lec07.scrbl"]
@include-section["lectures/lec08.scrbl"]
@include-section["lectures/lec09.scrbl"]
@include-section["lectures/lec10.scrbl"]
@include-section["lectures/lec11.scrbl"]
@include-section["lectures/lec12.scrbl"]

@section[#:tag "lec13"]{2/21: Holiday (Presidents Day)}
There is no lecture on 2/21 since it is Presidents Day.

@include-section["lectures/lec14.scrbl"]

@section[#:tag "lec15"]{2/28: Holiday (Spring break)}

There is no lecture on 2/28 since it is during Spring break.

@section[#:tag "lec16"]{3/03: Holiday (Spring break)}

There is no lecture on 3/3 since it is during Spring break.

@include-section["lectures/lec15.scrbl"]
@include-section["lectures/lec16.scrbl"]

@include-section["lectures/lec19.scrbl"]
@include-section["lectures/lec20.scrbl"]
@include-section["lectures/lec21.scrbl"]
@include-section["lectures/lec22.scrbl"]
@include-section["lectures/lec23.scrbl"]
@section[#:tag "lec24"]{3/31: Project Intro}
@include-section["lectures/lec25.scrbl"]
@section[#:tag "lec26"]{4/07: Intermezzo: Ruby}
@section[#:tag "lec27"]{4/11: Random and stress testing}
@section[#:tag "lec28"]{4/14: Implementing OO}
@section[#:tag "lec29"]{4/18: Holiday (Patriots Day)}

There is no lecture on 4/18 since it is Patriots Day.
