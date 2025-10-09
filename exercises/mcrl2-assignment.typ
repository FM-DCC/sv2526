#set page(paper: "a4")

#set heading(numbering: "1.")

#show link: set text(fill: blue, weight: 700)
#show link: underline

#set text(
  font:  "Libertinus Serif",
       // "Microsoft Sans Serif",
  size: 11pt,
)
#set par(
  justify: true
)

// #text(font: "Microsoft Sans Serif")

#align(center, text(17pt)[
  *Modelling and verifying behaviour in mCRL2*
])

#align(center, text(10pt)[
  _System Verification 2025/2026, José Proença, FCUP, Portugal_
  
  _(based on a previous assignment from Renato Neves, U.Minho, Portugal)_
])


// The first goal of the assignment is to _model_ and
// _analyse_ a system that ensures the _correct_ functioning of
// traffic lights at a T-junction. The latter connects a "major" and a
// "minor" road and is depicted below (together with the respective
// traffic lights):

// #figure(
//   image("t-junction.pdf", width: 70%),
//   caption: [
//     some caption...
//   ],
// )

// #align(center + bottom)[
//   #image("t-junction.pdf", width: 70%)
// ]

#let cred = text(fill: red)[red]
#let cgreen = text(fill: rgb("#299a36"))[green]
#let cyellow = text(fill: orange)[yellow]

// #heading(level: 1, numbering: none)[First Part]
// <first-part>
= The T-Junction Scenario
The first goal of the assignment is to *model* and *analyse* a
system that ensures the *correct* functioning of traffic lights at
a T-junction. The latter connects a "major" and a "minor" road and is
depicted below (together with the respective traffic lights):

// #block[
// #box(image("t-junction.png"),width: 70%)
// ]
#align(center + bottom)[
  #image("t-junction.png", width: 50%)
]
In this scenario vehicles drive on the left side of the road and the
cross in the picture represents a sensor that tells whether a car is
waiting in the minor road or not.

In order to guarantee a reasonable traffic flow, the system has the
following constraints:

+ The lights on the major road will be always set on #cgreen, and #cred on
  the minor road *unless* a vehicle is detected by the sensor.

+ In the latter case, the lights will switch in the standard manner and
  allow traffic to leave the minor road. After some time, the lights will revert to their default position so that
  traffic can flow on the major road again.

+ Finally, as soon as a vehicle is detected by the sensor the latter is
  disabled until the minor-road lights are on #cred again.

The system also respects the following *behavioural* constraints:

+ Each traffic light has a #cgreen, a #cyellow, and a #cred light. //Interim lights stay on for 5s.

//+ There exists 1s delay between switching one light off and the other on.

+ There is a waiting period between one light becoming #cred and the next one becomming #cgreen, when all lights are #cred.

// + The major-road light must stay on #cgreen for some minimal amount of time even if the sensor is triggered; after that, it must respond immediately when the sensor is triggered.

+ The major-road light must stay on #cgreen right after the sensor is triggered; only after some waiting the light can respond.

+ the sensor can _always be triggered_, even when the major road has #cred light, although it will not affect the lights until the major road has #cgreen light.


// #underline[The first part of the students' assignment];:
#heading(level: 2, numbering: none)[What to do]

// #set enum(full: true)

+ Model in mCRL2 the system of traffic lights described
  previously, using a composition of processes in parallel.
  *Include the code* in your report. 

+ Express in process logic and test in mCRL2 the following properties. Note that they do not necessarily have to hold. #set enum(numbering: "a)")

  + [reachability] _The minor-road light *can* go #cgreen._
  + [reachability] _The major-road light *can* go #cred._
  + [safety] _The system *never* enters in a deadlock state;_
  + [safety] _The minor-road and major-road lights *cannot* be #cgreen at the same time_.
  + [liveness] _If there is any car waiting, it will *eventually* have #cgreen light, even if no other cars appear_.
 

// + Express in process logic the following *reachability*
//   properties and test them in mCRL2: (1) _the minor-road
//   light can go #cgreen;_ and (2) _the major-road light can go #cred;_.

// + Express in process logic the following *safety* properties and
//   test them in mCRL2: (3) _the system never enters in a
//   deadlock state;_ and (4) _the minor-road and major-road lights cannot be
//   #cgreen at the same time_.

// + Express in process logic the following *liveness* property and
//   test it in mCRL2: (5) _if there is any car waiting, it
//   will *eventually* have #cgreen light, even if no other cars appear_.

+ Can you think of other desirable properties? If so please register at least one property
  and check whether they hold or not in mCRL2.

// #heading(level: 1, numbering: none)[Second Part]
// <second-part>
= Extension: using a traffic sensor

The previous system of traffic lights works reasonably well under the
assumption that one of the roads has more traffic than the other. But
such an assumption is often _too strong_: it may be the case that
both roads have the same amount of traffic, or even that their traffic
flow varies drastically throughout the day. The second part of this
assignment (more exploratory) aims to address precisely this problem
which is well-known to have significant impact in the economy and the
environment.#footnote[#link("https://ourworld.unu.edu/en/green-idea-self-organizing-traffic-signals")];
To this effect, we can now assume that #underline[each traffic light has
a smart sensor attached to it];. The sensor informs whether the traffic
near the light is *high*, *low*, or simply *non-existent*.

// #underline[The second part of the assignment];:
#heading(level: 2, numbering: none)[What to do]

+ Adapt your previous mCRL2 model to take into account the information
  provided by the sensors. One expects, for example, that if the
  rightmost sensor outputs `high` and the other sensors output `no` then the
  rightmost traffic light should be on #cgreen at least until the sensors
  provide new information.

+ Verify that all the properties mentioned in the first part of the
  assignment still hold.

+ (Valorisation) Note that the second part of the assigment is of a more
  exploratory nature, and thus we give freedom to adjust sensor
  parameters as seen fit in order to promote different and creative
  solutions. We will value properties expressed in propositional logic that say
  something about the efficiency of the system developed by the
  students. Such a property can be for example, _"If the rightmost sensor
  always detects high traffic and the others detect no traffic at all,
  then we will observe at most one change in the traffic lights"_.


// #heading(level: 1, numbering: none)[Submission instructions]
// <submission-instructions>
= Submission instructions

Write a #underline[report for the first and second part of the
    assignment] that explains (1) your design choices, (2) your models,
  (3) the formulae that you used for benchmarking your systems, and (4)
  the conclusions obtained.


#block[
The report in PDF *and* the respective mCRL2 models. Send by email
(#underline[jose.proenca\@fc.up.pt];) a unique zip file "`SV2526-N1-N2.zip`", where `N1` and `N2` are
your student numbers. The subject of the email should be *"`[SV] mCRL2 assignment`"*.

*Deadline:*
7 Nov 2025 \@ 23h59
]
