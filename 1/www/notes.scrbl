#lang scribble/manual
@(require racket/sandbox
          scribble/example)


@title[#:style 'unnumbered]{Notes}

@local-table-of-contents[]

@(define (vidlink url)
   @elem{Audio and video capture from today's class is available @link[url]{here}.})

@section{August 28, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=35260fd2-a523-4c5a-91ad-247fdf821b1c"]

@section{August 30, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=7ceb62cc-3be8-4ed4-b56d-4b44400c6d56"]

Code from today's lecture:

@itemlist[
@item{@link["distance.rkt"]{distance.rkt}}
@item{@link["eclipse.rkt"]{eclipse.rkt}}
]

@section{September 1, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=43327ae6-bd37-40ff-90b5-a2b148c6757e"]

Code from today's lecture:

@itemlist[
@item{@link["fancy-eclipse.rkt"]{fancy-eclipse.rkt}}
]

@section{September 6, 2017}

@include-section["rocket.scrbl"]

@section{September 8, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=53e3fff7-1313-4bfa-b497-84657608ae2c"]

@section{September 11, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=06890a7d-8455-415f-b292-9d6cfbb52fbd"]

Code from today's lecture:

@itemlist[
@item{@link["days.rkt"]{days.rkt}}
@item{@link["traffic.rkt"]{traffic.rkt}}
]

@section{September 13, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=e3bfd03f-c3b4-4895-8ddb-576c2052d2b3"]

Code from today's lecture:

@itemlist[
@item{@link["render-string.rkt"]{render-string.rkt}}
@item{@link["chip0.rkt"]{chip0.rkt}}
]

@section{September 15, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=dd5dfd8f-936a-46dc-a38a-5197e7706fbe"]

Code from today's lecture (remember, it has failing test cases):

@itemlist[
@item{@link["chip1.rkt"]{chip1.rkt}}
]

Today's quiz:

A @tt{Coord} is a @tt{(make-posn Integer Integer)}.
Interp: a point on the Cartesian plane.

Write a function @tt{dist : Coord -> Number} that computes the
distance from the origin.

Recall: distance of (x,y) to (0,0) is √(x²+y²).

You do not need to perform all steps of the DR, just define the
function.

@section{September 18, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=7bed18c4-092f-4bcc-89bf-90326ea750b5"]

We didn't really write any code; we discussed templates, stubs, the
three kinds of errors, and failing test cases.

Today's quizzes were (1) exactly the quiz from Friday and (2):

@verbatim{
A Lec is one of:
- "M"
- "W"
- "F"
Interp: day of the week for 131A lecture

Write a template for a Lec function.
}


Here are some common issues encountered so far in grading
@secref{assign3}:

@itemize[

@item{Most students place test cases below their def'n
  instead of between signature and def'n.}

@item{ Some people included function examples in comments
  without writing concrete test cases. Some had both.}

@item{Almost @bold{every} submission had some incorrect
  indentation and long lines.}

@item{The @tt{format-month} almost universally lacked helper
  usage and contained long lines.}

@item{Some students defined "helpers" that didn't "help" at
  all, basically like:
  @verbatim{
    (define (supposed-to-implement x)
      (so-called-helper x))
      }
      }

@item{Many submissions had stubs still left in their code either as a
  comment or as a defined function like @tt{(define (format-month-stub
  ...) "Nov")}.}

@item{There were lots of submissions with just templates defined for
  every function, or data templates that were just wrong.}

@item{General disorganization was common, e.g. signatures and test
  cases thrown about randomly and not coupled together with the
  function def'n. Some people renamed the functions to something else
  which made it difficult to grade.}

@item{Lots of long function bodies were defined on the same line as
  the "define".}

@item{Commonly @tt{init-time} was defined as a function instead of
  just as an expression in terms of @tt{init-*} constants.}

@item{A surprising amount of submission weren't even grammatically
  well-formed BSL programs. :(}

]

Make sure you correct any of these issues if they occur in your program
for @secref{assign4}.

@section{September 20, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=403e60d0-6858-4efd-88df-b186aa44e8b1"]

Here is the code for simple space invaders designed using the design
recipe and adhering to @secref{style}:

@itemlist[
  @item{@link["invaders.rkt"]{invaders.rkt}}
]

I've made a two part video that develops the invader program from
scratch, resulting in the code above.  You can watch this to get a
complete example of following the DR through on an involved example.

@itemlist[
  @item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=1a37f226-9e62-4765-ba88-7df756112a12"]{Part I}}
  @item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=d335e86e-39eb-4d33-a2c3-975887822deb"]{Part II}}
]


@section{September 22, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=644f319e-0d3c-4cd7-bd77-5b75ed3dafaa"]


Code from today:
@itemlist[
@item{@link["shots.rkt"]{shots.rkt}}
]

@section{Drills}

Here are some drill questions to practice for the first midterm.
These only cover topics we've covered so far in class, but more topics
will be on the midterm.  I will post relevant drill problems as
appropriate.

@subsection{Simple computations}

Determine what the following programs evaluate to:

@itemize[
@item{@racketblock[(- (sqr 5))]}
@item{@racketblock[(modulo 12 5)]}
@item{@racketblock[(+ (/ 4 3) 1)]}
@item{@racketblock[(string-append "Hello" "World")]}
@item{@racketblock[(string-append "" "Fred")]}
@item{@racketblock[(substring "manslaughter" 4)]}
@item{@racketblock[(above (circle 10 "outline" "black") (square 5 "outline" "black"))]}
@item{@racketblock[(substring (string-append "te" "am") 1 3)]}
@item{@racketblock[(+ (posn-x (make-posn 3 4)) (posn-x (make-posn 10 2)))]}
@item{@racketblock[
(define-struct name (first last))
(make-name "James" "Bond")]}
@item{@racketblock[
(define first-name "James")
(define last-name "Bond")
(string-append last-name ", " first-name " " last-name)]}
@item{@racketblock[
(define x 3)
(define y 4)
(sqrt (+ (sqr x) (sqr y)))]}
@item{@racketblock[
(define-struct name (first last))
(define ms (make-name "Michael" "Scott"))
(define sm (make-name (name-last ms) (name-first ms)))
(name-last sm)]}
@item{@racketblock[
(define (f x)
  (/ (sqr x) 2))
(+ (f 5) (f 2))]}
@item{@racketblock[
(define (g y)
  (cond [(<= (string-length y) 4) 3.25]
        [else "yellow"]))
(g "pie")
]}
]

@subsection{Stepping through computations}

Write out each step of computation.  At each step, underline the
expression being simplified.  Label each step as being "arithmetic"
(meaning any built-in operation), "conditional", "plug" (for plugging
in an argument for a function parameter), or "constant" for replacing
a constant with its value.

@itemize[
@item{@racketblock[(+ (sqr 5) (add1 2))]}
@item{@racketblock[
(define Q 2)
(define (h z)
  (+ (* z 5) Q))
(cond [(= (h 1) 7) (add1 9)]
      [(= (h 2) 12) 4])]}
@item{@racketblock[
(define (hi name)
  (string-append "Hi " name "!"))
(hi (substring "DVH" 0 1))
]}
@item{@racketblock[
(define s (make-posn "GOOG" 99))
(cond [(< 100 (posn-y s)) "sell"]
      [(> 100 (posn-y s)) "buy"]
      [else "nada"])]}
]

@subsection{Classifying errors}

Classify the following programs as having a syntax error, a run-time
error, logical error, or having no errors.

@itemize[
@item{@racketblock[
(define (f x) (expt 2 x))
(check-expect (f 4))
]}
@item{@racketblock[
(string-append "Hi " (substring "DVH" 1 4) )
]}
@item{
@#reader scribble/comment-reader (racketblock
;; dist : Number Number -> Number
;; Compute distance to origin of (x,y)
(define (dist x y)
  (sqrt (+ (sqr x) (sqr x))))
(dist 3 4))
}
@item{@racketblock[
(define h z (+ z (sqr z)))
]}]

@subsection{Stubs, Templates}

Assume the following data definitions:

@#reader scribble/comment-reader (racketblock
;; A Name is a (make-name String String)
(define-struct name (first last))

;; A Shape is one of:
;; - (make-rect Integer Integer)
;; - (make-circ Integer)
(define-struct rect (width height))
(define-struct circ (radius))

;; A Drawing is one of:
;; - Shape
;; - (make-posn Shape Shape)

;; A Price is one of
;; - [0,99)
;; - [99,999)

;; A Move is one:
;; - "N"
;; - "E"
;; - "W"
;; - "S"
;; - "NE"
;; - "NW"
;; - "SE"
;; - "SW"

;; A MaybeMove is one of:
;; - Move
;; - #false

;; A Niner is a 9

;; A Biz is one of:
;; - "a"
;; - 7
;; - #true
;; - (make-posn 9 9)
)

Write templates for each of these data definitions.

Write stubs for each of these signatures.

@#reader scribble/comment-reader (racketblock
;; greeting : Name -> String
;; cheap? : Price -> Boolean
;; next-move : Move -> MaybeMove
;; area : Drawing -> Number
;; sign : Shape -> Name
;; inc : Number -> Niner
;; choose : Move Move -> Move
;; cost : Drawing -> Price
;; cap : Shape String Image -> Biz
;; same-price? : Price Price -> Boolean
;; bribe : Price -> Name
;; change-last : Name String -> Name
;; dot : String Integer -> String
;; cross : String Move -> Shape
;; all-on? : Shape Shape Shape Shape -> Boolean
;; flip : Move -> Move
;; rotate : Image MaybeMove -> Shape
)

@subsection{Designing functions}

@#reader scribble/comment-reader (racketblock
;; A Name is a (make-name String String)
;; Interp: a person's full (first and last) name.
;; Both strings must contain at least one letter.
(define-struct name (first last))
)

Design a function that creates a opening phrase of a letter.  For
example, given the full name David Van Horn, produces @racket["Dear David,"].

Design a function that is given two full names and a first name.  It
should produce a new name using the given first name and a hyphenated
combination of the last names of the two full names.  For example,
given full names Ed Tobin, Laura Hochstadt, and the first name Sam, it
should produce the full name Sam Tobin-Hochstadt.

Design a function that is given a full name and produces a ``private''
version of the name that abbreviates the last name to the first letter
and a period.  So for example, given the full name David Van Horn,
then the full name David V. would be the produced.

Design a function that is given two full names and determines whether
the two people have the same first name.

@#reader scribble/comment-reader (racketblock
;; A Dir is one of:
;; - "N"
;; - "E"
;; - "W"
;; - "S"
;; Interp: North, East, West, and South.
)

Design a function that computes the opposite of a given direction.

Design a function that determines if two directions are the same.

Design a function that determines if two directions are opposites of
each other.

Design a function that computes a right turn from the given direction.

Design a function that given a direction computes a name (as in a
Name) like this: given "S" it should compute "South Southwest" where
South is the first name and Southwest is the last name.  North should
give you North Northwest, etc.

@#reader scribble/comment-reader (racketblock
;; A Coord is a (make-posn Integer Integer)
;; Interp: a Cartesian coordinate
)

Design a function that takes two coordinates and computes a coordinate
representing their sum, e.g. (x1,y1) + (x2,y2) = (x1+x2,y1+y2).

Design a function that, given a coordinate (x,y), computes the area of
the triangle formed by (0,0), (x,0), and (x,y).  Recall the area of a
triangle is 1/2 * base * height.

Design a function that, given a coordinate (x,y), computes the
perimeter of the triangle formed by (0,0), (x,0), (x,y).

Design a function that reflects a coordinate over the x-axis,
e.g. (5,3) becomes (5,-3).

@subsection{Solutions}

Here are videos going through solutions to each part of the drill
problems:

@itemize[

@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=d3777989-f2b3-4a00-8253-e16ed9e9f655"]{Simple computations}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=fd80e685-e204-4e1c-b323-76ca7478da4e"]{Stepping through computations}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=435ebe5b-dded-4922-92c9-48386a9c5c07"]{Classifying errors}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=82f70804-e2fd-42bb-9b66-7eb1346ec6e0"]{Templates}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=52171455-3691-4a1d-811a-48a219355c68"]{Stubs}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=7ba10792-a8ae-4b21-aff4-c63afb87e448"]{Designing Name functions}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2039c7b4-2533-4ee6-8351-af0dc7447086"]{Designing Dir functions}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=497e4719-12a5-4749-a2f2-274971ba8bf5"]{Designing Coord functions}}

]



@section{September 25, 2017}

@vidlink["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=5a3cb585-3566-4f58-981c-d720d0519c86"]

Here are the comments I made in regard to what we've seen so far in
assignment 4 submissions:
@link["feedback-assign4.pdf"]{feedback-assign4.pdf}.

Here is the code for today (I re-arranged it slightly to follow the
style guidelines):

@itemlist[
@item{@link["shots-draw-on.rkt"]{shots-draw-on.rkt}}
]

@section{Midterm practice exam}

Here is a midterm practice exam (and solution) to help prepare for the upcoming
midterm:
@itemlist[
@item{@link["m1-practice.pdf"]{m1-practice.pdf}}
@item{@link["m1-practice-soln.pdf"]{m1-practice-soln.pdf}}
]


@section{September 27, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=4c651ab2-35ac-467b-bf6b-c4eeb19dc56a}

Here is the code for today; we skipped the section on lists of
strings, so see if you can do that on your own and also have a go at
the functions on lists of lists of numbers we didn't get to.

@itemlist[
@item{@link["lists-1.rkt"]{lists-1.rkt}}
]

Today's quiz:

@verbatim{
;; An Onion is one of:
;; - (make-bulb)
;; - (make-skin Onion)
(define-struct bulb ())
(define-struct skin (inner))}

Write a template for @tt{Onion} functions.

@section{September 29, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=622f0c0f-7f16-4e64-afb8-1ade64a6ca3a}

Today's quiz:

@verbatim{
;; An Onion is one of:
;; - (make-bulb)
;; - (make-skin Onion)
(define-struct bulb ())
(define-struct skin (inner))}

Write the definition of the count-skins function:

@verbatim{
(define b (make-bulb))

;; count-skins : Onion -> Natural
;; Count the number of skins on the onion
(check-expect (count-skins b) 0)
(check-expect (count-skins (make-skin b)) 1)
(check-expect (count-skins (make-skin (make-skin b))) 2)}

Code for today:
@itemlist[
@item{@link["lists-2.rkt"]{lists-2.rkt}}
]

@section{Pair programming Space Invaders with shots}

On Friday, Austin Bourgerie and I sat down to pair program the Space
Invaders portion of @secref{assign5}.  We recorded the session in
hopes of showing:
@itemlist[
@item{(a) how the head and hands model of pair programming
can be effective in rapidly thinking through and solving problems and}
@item{
(b) how sticking to the design process makes short order of the
assignment.}]

We were able to complete that part of the assignment in 1 hour.  As
you watch the video, I hope you'll realize we were able to get through
it so quickly not because we are overly smart, experienced, or have an
encyclopedic knowledge of BSL or Space Invaders---we got through it so
fast because we stuck to the process and went slow to quickly get to a
well-designed program.  We didn't do anything that you couldn't also
do.  We made a few small mistakes along the way, but we found them and
recovered quickly, thanks to the process.

I made only one change to the code after we finished, which is I
deleted all the obsoleted code having to do with @tt{Aim} and
@tt{Fire}.

@itemlist[
@item{@link["invader-shots-dvanhorn-abourg.rkt"]{Code}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=6a35153d-959d-4e1e-a7a4-79946c075452"]{Video}}
]

@section{October 4, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=f26b466e-78bd-43f9-a3a3-23cc776fa74b}

Today's code:

@itemlist[
  @item{@link["sort.rkt"]{sort.rkt}}
]

@section{October 6 & 9, 2017}

@include-section["snake.scrbl"]

@section{October 11, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=24a1b149-639b-4230-9cc7-6c007a35d34d}

Snake code:
@itemlist[
 @item{@link["snake-in-progress.rkt"]{snake-in-progress.rkt}}
 @item{@link["snake-complete.rkt"]{snake-complete.rkt}}
]

Today's code:

@itemlist[
  @item{@link["addn-abstract.rkt"]{addn-abstract.rkt}}
  @item{@link["even-odd-abstract.rkt"]{even-odd-abstract.rkt}}
  @item{@link["f-all-abstract.rkt"]{f-all-abstract.rkt}}
]

@section{October 13, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=d58ba7b4-9c7b-42ab-b725-d0de765cb4cf}

Today's code:

@itemlist[
  @item{@link["prod-sum-abstract.rkt"]{prod-sum-abstract.rkt}}
]

@section{October 16, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=7e3f2c63-b17c-4889-ae85-6c1ef6c5236b}



@section{October 18, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=61a0be80-3729-4ec6-b083-4695d06ef9ee}

Today's code: @link["using-abstractions.rkt"]{using-abstractions.rkt}

Today's quiz:

@#reader scribble/comment-reader (racketblock
;; my-append : [X] [Listof X] [Listof X] -> [Listof X]
;; Append the elements of ls1 and ls2
(check-expect (my-append '() '())
              '())
(check-expect (my-append '() (list 4 5 6))
              (list 4 5 6))
(check-expect (my-append (list 1 2 3) '())
              (list 1 2 3))
(check-expect (my-append (list 1 2 3) (list 4 5 6))
              (list 1 2 3 4 5 6))
(define (my-append ls1 ls2)
  (cond [(empty? ls1) ls2]
        [(cons? ls1)
         (cons (first ls1)
               (my-append (rest ls1) ls2))]))

;; Quiz: Give an equivalent definition of my-append
;; in terms of foldr

;; Recall:
;; foldr : [X Y] (X Y -> Y) Y [Listof X] -> Y
)

@section{Midterm solution videos}

Here is a series of videos going through the exam and constructing
answers:

@itemlist[
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=0829900b-418b-4465-aa13-860c1f044a4c"]{Problem 1}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=70faff06-27b1-4a1a-997a-6181c8c280c1"]{Problem 2}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=e6dc6f38-8888-43cf-85cd-eec7440102de"]{Problem 3}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=5892d33d-ae17-4416-93a3-3c5590aa6d0a"]{Problem 4}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=4a5a743c-3292-46a2-a89c-f288a7d27fb1"]{Problem 5}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2579bdfb-95a2-4a99-ada9-9063ac39e7e6"]{Problem 6}}
@item{@link["https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=eeeebf01-6745-4f6e-8c81-78f4da782d4b"]{Problem 7}}
]

@section{October 20, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=87ee9932-ab7b-4f40-b2dc-1a05c39eb4c5}

The code will not be posted for this lecture (but can be seen in the video).

The first quiz from today:

@#reader scribble/comment-reader (racketblock
;; flatten : [X] [Listof [Listof X]] -> [Listof X]
;; Flatten a list of lists of elements into a list of elements
(check-expect (flatten '()) '())
(check-expect (flatten (list (list 1 2 3)) (list 4 5) (list 6))
              (list 1 2 3 4 5 6))
(define (flatten lolox)
  (cond [(empty? lolox) '()]
        [(cons? lolox)
         (append (first lolox)
                 (flatten (rest lolox)))]))

;; Quiz: Give an equivalent definition of flatten
;; in terms of foldr

;; Recall:
;; foldr : [X Y] (X Y -> Y) Y [Listof X] -> Y
)

The second quiz:

@#reader scribble/comment-reader (racketblock
;; largest : [Listof Number] Number -> Number
;; Determine the largest number among all elements of the list and given number
(check-expect (largest '() 5) 5)
(check-expect (largest (list 1 2 3) 5) 5)
(check-expect (largest (list 6 5 4) 5) 6)
(define (largest lon n)
  (cond [(empty? lon) n]
        [(cons? lon)
         (max (first lon)
              (largest (rest lon) n))]))

;; Quiz: Give an equivalent definition of largest
;; in terms of foldr

;; Recall:
;; foldr : [X Y] (X Y -> Y) Y [Listof X] -> Y
)

@section{October 23, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2157c1f1-ba53-459f-9e73-01fb293c154a}

Again the code will not be posted, but can be seen in the video.

Today's quiz:

@#reader scribble/comment-reader (racketblock
;; all-longer-than? : [Listof String] Number -> Boolean
;; Are all of the strings longer than n characters long?
(check-expect (all-longer-than? '() 1) #true)
(check-expect (all-longer-than? (list "a" "b" "c") 1) #false)
(check-expect (all-longer-than? (list "abc" "def") 1) #true)
(define (all-longer-than? los n)
  (cond [(empty? los) #true]
        [(cons? los)
         (and (> (string-length (first los)) n)
              (all-longer-than? (rest los) n))]))

;; Quiz: Give an equivalent definition of all-longer-than?
;; in terms of andmap

;; Recall:
;; andmap : [X] (X -> Boolean) [Listof X] -> Boolean
)

@section{October 25, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=8a91183a-94c3-4189-9895-26a907e07e2c}

Today's quiz:

@#reader scribble/comment-reader (racketblock
;; erma : ____________________________
(check-expect (erma (list sqr add1)) (list 25 6))
(check-expect (erma (list number->string)) (list "5"))
(define (erma lof)
  (cond [(empty? lof) '()]
        [(cons? lof)
         (local [(define f (first lof))]
           (cons (f 5)
                 (erma (rest lof))))]))

;; QUIZ: Give a parametric signature for erma.
)

Today's code: @link["adventure.rkt"]{adventure.rkt}.

@section{October 27, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=dcd9a394-650e-46a8-93c6-fd6a55d3e47d}

Today's code: @link["adventure2.rkt"]{adventure2.rkt}.

@section{Midterm 2 practice}

Here is the second midterm practice exam: @link["m2-practice.pdf"]{m2-practice.pdf} (@link["m2-practice-soln.pdf"]{m2-practice-soln.pdf}).

@section{October 30, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=4a74da6a-fcf8-4080-b077-646d773e4d80}

Today's code: @link["multi-inputs.rkt"]{multi-inputs.rkt}.

Today's quiz:
@#reader scribble/comment-reader (racketblock
;; wilma : ___________________________
(check-expect (wilma add1 5) (list 6 5 4 3 2 1))
(check-expect (wilma number->string 3) (list "3" "2" "1" "0"))
(define (wilma f n)
  (cond [(zero? n) (list (f 0))]
        [else
          (cons (f n)
                (wilma f (sub1 n)))]))

;; QUIZ: Give a parametric signature for wilma.
)

@section{November 1, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=c22c5ff4-2bd2-44df-97f7-f24c166e6f4f}

Today's code:

@itemlist[
@item{@link["merge.rkt"]{merge.rkt}}
@item{@link["bundle.rkt"]{bundle.rkt}}
]


@section[#:tag "drills2"]{Drills}

Here are some drill problems.

Keep in mind that any topic from midterm 1 could show up again on
midterm 2 so it may be worth revisiting older drill problems and the
practice midterm 1.

@subsection{Programming with functions}

Design and abstraction called @tt{andf} from the following two functions:

@#reader scribble/comment-reader (racketblock
;; even-pos? : Number -> Boolean
;; Is the number even and positive?
(check-expect (even-pos? 4) #true)
(check-expect (even-pos? 3) #false)
(check-expect (even-pos? -1) #false)
(define (even-pos? n)
  (and (even? n) (positive? n)))

;; neg-odd? : Number -> Boolean
;; Is the number negative and odd?
(check-expect (neg-odd? 4) #false)
(check-expect (neg-odd? 3) #false)
(check-expect (neg-odd? -1) #true)
(define (neg-odd? n)
  (and (negative? n) (odd? n)))
)

Be sure to give @tt{andf} the most general parametric signature that is valid.

Use your abstraction to define the following function (you may find
@tt{string-alphabetic?} and @tt{string-lower-case?} helpful):

@#reader scribble/comment-reader (racketblock
;; string-lower-alpha? : String -> Boolean
;; Is the string made up of lower case, alphabetic letters?
(check-expect (string-lower-alpha? "ABC") #false)
(check-expect (string-lower-alpha? "a2c") #false)
(check-expect (string-lower-alpha? "abc") #true)
(define (string-lower-alpha? s) ...)
)

Using only @tt{andf}, @tt{>}, @tt{even?}, and @tt{lambda} expressions, write an expression that
produces a predicate on numbers that will produce true when applied to even numbers greater than 5.

@subsection{Signatures}

Provide the most general valid signature for the following functions.

@#reader scribble/comment-reader (racketblock
(define (lengths xs)
  (map length xs))

(define (total-length xs)
  (foldr (λ (x t) (+ (length x) t)) 0 xs))

(define (map-f-zero lof)
  (map (λ (f) (f 0)) lof))
)

@subsection{Using list abstractions}

Re-define the following functions in terms of list abstraction
functions where appropriate.  (Signatures and purpose statements
intentionally omitted):

@#reader scribble/comment-reader (racketblock
(check-expect (rev-append (list "there" "hi")) "hithere")
(define (rev-append los)
  (cond [(empty? los) ""]
        [(cons? los)
         (string-append (rev-append (rest los)) (first los))]))

(check-expect (posns-at-x (list 1 2 3) 7)
              (list (make-posn 7 1) (make-posn 7 2) (make-posn 7 3)))
(define (posns-at-x ys x)
  (cond [(empty? ys) '()]
        [(cons? ys)
         (cons (make-posn x (first ys))
               (posns-at-x (rest ys) x))]))

(check-expect (dist (make-posn 0 0) (make-posn 3 4)) 5)
(define (dist p q)
  (sqrt (+ (sqr (- (posn-x p)
                   (posn-x q)))
           (sqr (- (posn-y p)
                   (posn-y q))))))

(check-expect (close-by (make-posn 0 0) (list (make-posn 3 4) (make-posn 8 8)) 6)
              (list (make-posn 3 4)))
(define (close-by p lop d)
  (cond [(empty? lop) '()]
        [(cons? lop)
         (cond [(<= (dist p (first lop)) d)
                (cons (first lop)
                      (close-by p (rest lop) d))]
               [else
                (close-by p (rest lop) d)])]))

(check-expect (draw-on (list (make-posn 50 50)))
              (place-image (circle 10 "solid" "red") 50 50 (empty-scene 100 100)))
(define (draw-on lop)
  (cond [(empty? lop) (empty-scene 100 100)]
        [(cons? lop)
         (place-image (circle 10 "solid" "red")
                      (posn-x (first lop))
                      (posn-y (first lop))
                      (draw-on (rest lop)))]))
)



@subsection[#:tag "design2"]{Designing functions}

Design a function that computes the ``dot product'' of two equal
length lists of numbers.  The dot product is the sum of the product of
each corresponding elements in the lists.  For example, the dot
product of @tt{(list 1 2 3)} and @tt{(list 4 5 6)} is @tt{(+ (* 1 4) (*
2 5) (* 3 6))}.

Design a function that computes the ``outer product'' of two lists of numbers.
The outerproduct of @tt{(list 1 2 3)} and @tt{(list 4 5 6 7)} is:
@#reader scribble/comment-reader (racketblock
(list (list (* 1 4) (* 1 5) (* 1 6) (* 1 7))
      (list (* 2 4) (* 2 5) (* 2 6) (* 2 7))
      (list (* 3 4) (* 3 5) (* 3 6) (* 3 7)))
)

Notice that the outer product of a list of length @tt{N} and of length
@tt{M} is a list of @tt{N} lists of @tt{M} numbers, with the exception
that if @tt{M} or @tt{N} is 0, the result is an empty list.

Design a similar function the computes something like the outer product, but for strings.
The outer string product of @tt{(list "a" "b" "c")} and @tt{(list "1" "2" "3" "4")} is:
@#reader scribble/comment-reader (racketblock
(list (list "a1" "a2" "a3" "a4")
      (list "b1" "b2" "b3" "b4")
      (list "c1" "c2" "c3" "c4"))
)

Design an abstraction function for ``outer-product-like" computations
of any kind.  Redefine your two outerproduct functions in terms of it.

Design a function @tt{append-to-each} that consumes a string @tt{s}
and a list of string @tt{los} and produces a list of strings like
@tt{los} but with @tt{s} appended to the front of each element.

Design a function @tt{append-all} that consumes two list of strings @tt{los1}
and @tt{los2} and produces a list of strings that appends each element of @tt{los1} to
all of the elements in @tt{los2}.  For example, @tt{(append-all (list "a" "b") (list "c" "d"))}
should produce @tt{(list "ac" "ad" "bc" "bd")}.

Design a function @tt{brute-n} that consumes a list of @tt{1String}s
@tt{los} and a natural number @tt{n} and produces a list of all strings
of length @tt{n} that can be formed from the given letters.  For example,
@tt{(brute-n (list "a" "b" "c") 2)} produces:
@#reader scribble/comment-reader (racketblock
(list "aa" "ab" "ac" "ba" "bb" "bc" "ca" "cb" "cc")
)

Design a function @tt{brute} that consumes a list of @tt{1String}s and
a natural number, and produces a list of all strings of length less
than @tt{n} that can be formed from the given letters.
For example, @tt{(brute (list "a" "b" "c") 2)} produces:
@#reader scribble/comment-reader (racketblock
(list "" "a" "b" "c" "aa" "ab" "ac" "ba" "bb" "bc" "ca" "cb" "cc")
)

@section{November 3, 2017}

@vidlink{https://umd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=87a30bf0-ad24-419f-987e-820778010926}

Code from today: @link["qsort.rkt"]{qsort.rkt}.

