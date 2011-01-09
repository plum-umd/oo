#lang scribble/manual

@(require scribble/eval
          racket/sandbox
          "../unnumbered.rkt"
          "../utils.rkt"
          (for-label class0
                     2htdp/image
                     class0/universe))

@(define the-eval
  (let ([the-eval (make-base-eval)])
    (the-eval '(require class0))
    (the-eval '(require 2htdp/image))
    the-eval))

@title[#:tag "lab01"]{1/10: Introduction to objects}

@internal{

Partner assignments

@section{Getting set up}

@subsection{svn basics, submit assn0}

@subsection{Install teachpacks}

@url{http://www.ccs.neu.edu/course/cs2510h/class-system-01-06.plt}

@section{Classes and objects}

To write object-oriented programs we will use a special dialect of Racket called
@racket[class0] that includes support for classes and objects. Just like we
progressed from BSL to ISL to ASL last semester, we will progress on to richer
object-oriented dialects as we learn more about how to program with objects.

To use the @racket[class0] language in DrRacket, go to @emph{Language → Choose
Language...} and select @emph{Use the language declared in the source}. Then add
the following lines to the top of your file:

@#reader scribble/comment-reader
(racketmod class0
  (require 2htdp/image)
  (require class0/universe)
)

The @tt{#lang} line tells Racket to use the @racket[class0] dialect, and the two
@racket[require] lines load the image and universe teachpacks that we'll use to
create images and interactive programs.

Here is a simple class in Racket to represent balls that we can draw to the
screen:

@#reader scribble/comment-reader
(racketblock+eval #:eval the-eval
  ; A Ball is a (new ball% Number Number Number Color)
  (define-class ball%
    (fields x y radius color)

    ; Ball -> Boolean
    ; Do the Balls have the same color?
    (define/public (same-color? b)
      (equal? (field color) (send b color)))

    ; -> Image
    ; The image representing the Ball
    (define/public (draw)
      (circle (field radius) "solid" (field color))))
)

Recall that we can create and use Ball objects as follows:

@interaction[#:eval the-eval
  (define b (new ball% 50 25 10 "red"))
  b
  (send b x)
  (send b radius)
  (send b same-color? (new ball% 10 20 3 "red"))
  (send b draw)
]

We can add new Ball behaviors by adding methods to the @racket[ball%] class.

@exercise{
  Write a @racket[diameter] method for the class @racket[ball%] that calculates
  the Ball's diameter.
}

@exercise{
  Write a @racket[distance-to] method for the class @racket[ball%] that takes
  another Ball and returns the distance between the centers of the two Balls.
}

@exercise{
  Write an @racket[overlaps?] method for the class @racket[ball%] that takes
  another Ball and determines whether the two Balls overlap.
}

Let's construct another class to represent rectangles.

@exercise{
  Write a @racket[block%] class to represent rectangular blocks on the screen.
  Include @racket[x] and @racket[y] fields to record its position,
  @racket[width] and @racket[height] fields to record its size, and a
  @racket[color] field. Construct some examples of Blocks.
}

@exercise{
  Write a @racket[diagonal] method for @racket[block%] that calculates the
  length of the rectangle's diagonal.
}

@exercise{
  Write a @racket[draw] method for @racket[block%] that returns an image
  representing the Block.
}

@section{The World as an object}

Recall @racket[big-bang] from last semester:

@#reader scribble/comment-reader
(racketblock
  ; A World is a (make-world ...)
  (define-struct world (...))

  ; tick : World -> World
  (define (tick w)
    ...)

  ; draw : World -> Image
  (define (draw w)
    ...)

  (big-bang (make-world ...)
            (on-tick tick)
            (on-draw draw))
)

We would define functions to implement the various behaviors of the World and
then pass each of them off to @racket[big-bang], along with an initial World
value. In other words, @racket[big-bang] needed a combination of
@emph{structure}, the initial World, and @emph{functions}, the various
behaviors---which we can now represent using an @emph{object}.

Here's what @racket[big-bang] will look like from now on, using classes and
objects:

@#reader scribble/comment-reader
(racketblock
  ; A World is a (new world% ...)
  (define-class world%
    (fields ...)

    ; -> World
    (define/public (on-tick)
      ...)

    ; -> Image
    (define/public (to-draw)
      ...))

  (big-bang (new world% ...))
)

The @racket[big-bang] function now takes an object (here, @racket[(new world%
...)]) which @emph{must} respond to the @racket[to-draw] method, and @emph{may}
respond to a handful of others, including @racket[on-tick], @racket[on-mouse],
and @racket[on-key]---see the @racket[big-bang] docs for full details. To create
such an object, we define a class with the desired methods. Here we use the name
@racket[world%], but you can call it anything you like.

@exercise{
  Using @racket[big-bang], create an animation where the user clicks to place
  Balls on the screen. Each click adds a Ball to the screen at the location of
  the mouse. For now, all the Balls can be the same color and size.

  To use @racket[big-bang], you'll need to construct an object, and to construct
  an object, you'll need to write a class. Which fields and methods should you
  include?
}

Let's add some variety by randomly selecting various aspects of what we put on
the screen. Here are a few useful functions for choosing things randomly:

@#reader scribble/comment-reader
(racketblock
  ; random-between : Integer Integer -> Integer
  ; Randomly choose a number between a and b (inclusive)
  (define (random-between a b)
    (+ b (random (+ 1 (- b a)))))

  ; choose : [Listof X] -> X
  ; Randomly choose an element from the list
  (define (choose xs)
    (list-ref xs (random (length xs))))

  ; random-color : -> Color
  ; Randomly choose a color from a set of common colors
  (define (random-color)
    (choose (list "red" "blue" "green" "yellow" "orange" "purple" "black")))
)

@exercise{
  Extend your animation so that when the user creates a Ball, its size and color
  of the Ball is chosen randomly.
}

@exercise{
  Modify your animation to use Blocks instead of Balls. Which methods need to
  change?
}

@exercise{
  Extend your animation to use Blocks @emph{and} Balls---let's call them,
  collectively, Creatures:

  @#reader scribble/comment-reader
  (racketblock
    ; A Creature is one of:
    ;  - Ball
    ;  - Block
  )

  When the user clicks, first randomly choose whether to create a Block or a
  Ball, and then randomly choose its parameters.
}

So far our animation isn't very animate. Let's teach our Creatures how to change
over time.

@exercise{
  Add a @racket[step] method to both Balls and Blocks. Sending @racket[step] to
  a Ball should return a new Ball that has been moved or resized in some way,
  and sending @racket[step] to a Block should return a new Block that has been
  moved or resized in some other way.
}

@exercise{
  Add an @racket[on-tick] method to your class of Worlds that @racket[step]s all
  of its creatures.
}

Now we have a basic framework for animating various kinds of Creatures. Any
objects that understand the @racket[x], @racket[y], @racket[draw], and
@racket[step] methods should slot in with minimal changes.

@exercise{
  @bold{(Open ended)} Create new kinds of Creatures with new kinds of movement.
  How would you make a Creature that speeds up over time? How about one that
  moves in a circle? Spirals outward from its starting point? Gravitates toward
  the center of the screen? Spirals toward the center of the screen?

  If large numbers of off-screen or invisible Creatures are slowing down your
  animation, devise a way to remove them once they disappear.
}

}