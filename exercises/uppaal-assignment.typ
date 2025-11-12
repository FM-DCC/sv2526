#set page(paper: "a4")

#set heading(numbering: "1.")

#show link: set text(fill: blue, weight: 700)
#show link: underline

// #show heading.where(level: 2): it => text(fill: blue)[#it]
// #show heading: hd => text(fill: rgb("#4262ff"))[#hd]

#show heading: it => {
  set block(above: 1.6em, below: 1.1em)
  set text(fill: rgb("#3b54d3"))
  if it.level == 1 {
    it
  } else {
    block(it.body)
  }
}

// #show heading.where(level: 2): it => {
//   set heading(numbering: none)
//   set block(above: 1.4em, below: 1.2em)
//   set text(fill: rgb("#4262ff"))
//   block(it.body) // using body we lose all wrapper settings
// }

// #show heading: it => [
//   set par(
//     leading: 1em,
//     spacing: 1em,
//   )
//   #it.body
// ]

#set text(
  font:  "Libertinus Serif",
       // "Microsoft Sans Serif",
  size: 11pt,
)
#set par(
  justify: true
)

#let uppaal = smallcaps[Uppaal]

#let updated(body) = { set text(weight: "bold", fill: purple); body}

// #text(font: "Microsoft Sans Serif")

#align(center, text(17pt)[
  *Modelling and verifying behaviour in #updated[#uppaal]*
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

#let cred = text(fill: rgb("#d30202"))[red]
#let cgreen = text(fill: rgb("#299a36"))[green]
#let cyellow = text(fill: orange)[yellow]

// #heading(level: 1, numbering: none)[First Part]
// <first-part>
= The T-Junction Scenario
Recall the same scenario of traffic lights in a T-junction from the previous assignment in mCRL2.
In this task you will have to *model* and *analyse* a variation of this system, also taking into account the #updated[moment in time when actions can occur].

// The first goal of the assignment is to *model* and *analyse* a
// system that ensures the *correct* functioning of traffic lights at
// a T-junction. The latter connects a "major" and a "minor" road and is
// depicted below (together with the respective traffic lights):


// #import "@preview/cetz:0.4.2"
// #cetz.canvas({
//   import cetz.draw: *
//   circle((0, 0), name: "circle", radius: 1)

//   set-style(content: (frame: "rect", stroke: none, padding: .1))
//   content("circle.0deg", [0deg], anchor: "west")
//   content((name: "circle", anchor: 160deg), [160deg], anchor: "south-east", name: "160")
//   content("circle.north", [North], anchor: "south")
//   content("circle.south-east", [South East], anchor: "north-west")
//   content("circle.south-west", [South West], anchor: "north-east")

//   circle((rel: (3,0), to: "circle"),fill: blue)

//   line((1,3),"circle", mark: (end: "curved-stealth", scale: 1.5, fill: black))
// })


// #block[
// #box(image("t-junction.png"),width: 70%)
// ]
#align(center + bottom)[
  #image("t-junction.png", width: 50%)
]
// In this scenario vehicles drive on the left side of the road and the
// cross in the picture represents a sensor that tells whether a vehicle is
// waiting in the minor road or not.

Consider the same traffic constraints as before, but extended with #updated[timing constraints]:
// , now extended with time information:
// In order to guarantee a reasonable traffic flow, the system has the
// following constraints:

+ The lights will be always set to #cgreen on the major road and to #cred on the minor road, *unless* a vehicle is detected by the sensor.

+ In the latter case, the lights will switch in the standard
  manner and allow traffic to leave the minor road.  After a
  #updated[suitable time interval (30s)], the lights will revert to their 
  default position so that traffic can flow on the major road again.

+ Finally, as soon as a vehicle is detected by the sensor, the
  latter is ignored until the minor-road lights are #cred again.


Finally, consider the following *#updated[updated] behavioural* constraints:

+ Each traffic light has a #cgreen, a #cyellow, and a #cred light. #updated[Interim lights stay on for 5s.]

+ #updated[There exists 1s delay between switching one light off and the next one on.]

// + There is a waiting period between one light becoming #cred and the next one becomming #cgreen, when all lights are #cred.

+ The major-road light must remain #cgreen #updated[for at least 30s] in each polling cycle, even if the sensor is triggered; after that, it must respond immediately when the sensor is triggered.

// + The major-road light must stay on #cgreen right after the sensor is triggered; only after some waiting the light can respond.

+ the sensor can _always be triggered_, even when the major road has #cred light, although it will not affect the lights until the major road has #cgreen light.


// #heading(level: 2, numbering: none)[What to do]
== What do do

// #set enum(full: true)

+ Model in #uppaal the system of traffic lights described
  previously, using a network of timed automata.
  *Include a picture of your automata* and *the code declarations* in your report. 

+ Express in #uppaal's CTL the following properties and check if they hold. Note that they do not necessarily have to hold. #set enum(numbering: "a)")

  // + [reachability] _The minor-road light *can* go #cgreen._
  + [reachability] _The major-road light *can* go #cred._
  + [reachability] _The major-road light *can* become #cgreen three times #updated[in three minutes]._
  + [safety] _The system *never* enters in a deadlock state;_
  + [safety] _The minor-road and major-road lights *cannot* be #cgreen at the same time_.
  + [liveness] _If there is any vehicle waiting, it will *eventually* have #cgreen light_.
 

// + Express in process logic the following *reachability*
//   properties and test them in mCRL2: (1) _the minor-road
//   light can go #cgreen;_ and (2) _the major-road light can go #cred;_.

// + Express in process logic the following *safety* properties and
//   test them in mCRL2: (3) _the system never enters in a
//   deadlock state;_ and (4) _the minor-road and major-road lights cannot be
//   #cgreen at the same time_.

// + Express in process logic the following *liveness* property and
//   test it in mCRL2: (5) _if there is any vehicle waiting, it
//   will *eventually* have #cgreen light, even if no other vehicles appear_.

+ Can you think of other desirable properties? If so please register at least one property
  and check whether they hold or not in #uppaal.


= Extension: modelling vehicles and scenarios
To enrich our system, we will now include an explicit representation of *vehicles* arriving and leaving. For this purpose, you will include two new components (automata): one that #[periodically] signals an incoming vehicle in the major-road, and another one that #[periodically] signals an incoming vehicle in the minor-road. Furthermore, we assume that, when the major-road has #cgreen light, a vehicle can pass #[every 2 seconds, or 4 seconds] for the minor-road. You can introduce new assumptions or simplifications, explaining and motivating them.

#heading(level: 2, numbering: none)[What do do]

1. Adapt your #uppaal model to take into account the incoming and outgoung vehicles. You should create *three scenarios*, each using different incoming periodicities for the vehicles. 

2. For each of these scenarios, check if the properties above still hold. 

3. Specify and verify a new property, stating that the *number of waiting vehicles is bounded*, and find a scenario where the property holds and another scenario where the property fails (creating a new scenario if needed).

4. _[Valorisation]_ Recall that #uppaal supports propabilistic/stochastic modelling. Use a probabilistic variation to *model* the arrival of vehicles with some random periodicity, and to *verify* some probabilistic queries in #uppaal. *Explain* your model and queries, and if these queries hold.


// // #heading(level: 1, numbering: none)[Second Part]
// // <second-part>
// = OLD Extension: using a traffic sensor (WiP)
// Similarly to the previous assignment, we will now assume the existence of *two traffic sensors*, one for each road.
// Each of these sensors should be modelled as a separate automata, and should detect if the traffic is *high*, *low*, or *non-existent*.

// // The previous system of traffic lights works reasonably well under the
// // assumption that one of the roads has more traffic than the other. But
// // such an assumption is often _too strong_: it may be the case that
// // both roads have the same amount of traffic, or even that their traffic
// // flow varies drastically throughout the day. The second part of this
// // assignment (more exploratory) aims to address precisely this problem
// // which is well-known to have significant impact in the economy and the
// // environment.#footnote[#link("https://ourworld.unu.edu/en/green-idea-self-organizing-traffic-signals")];
// // To this effect, we can now assume that #underline[each traffic light has
// // a smart sensor attached to it];. The sensor informs whether the traffic
// // near the light is *high*, *low*, or simply *non-existent*.

// // #underline[The second part of the assignment];:
// #heading(level: 2, numbering: none)[What to do]

// + Adapt your previous #uppaal model to take into account the  sensors. One expects, for example, that if the
//   rightmost sensor outputs `high` and the other sensors output `no` then the
//   rightmost traffic light should be on #cgreen at least until the sensors
//   provide new information.

// + Verify that all the properties mentioned in the first part of the
//   assignment still hold.

// + (Valorisation) Note that the second part of the assigment is of a more
//   exploratory nature, and thus we give freedom to adjust sensor
//   parameters as seen fit in order to promote different and creative
//   solutions. We will value properties expressed in propositional logic that say
//   something about the efficiency of the system developed by the
//   students. Such a property can be for example, _"If the rightmost sensor
//   always detects high traffic and the others detect no traffic at all,
//   then we will observe at most one change in the traffic lights"_.


// #heading(level: 1, numbering: none)[Submission instructions]
// <submission-instructions>
= Submission instructions

Write a #underline[report for the first and second part of the
    assignment] that explains (1) your design choices, (2) your models,
  (3) the formulae that you used for benchmarking your systems, and (4)
  the conclusions obtained.


#block[
The report in PDF *and* the respective #uppaal models. Send by email
(#underline[jose.proenca\@fc.up.pt];) a unique zip file "`SV2526-N1-N2.zip`", where `N1` and `N2` are
your student numbers. The subject of the email should be *"`[SV] UPPAAL assignment`"*.

*Deadline:*
4 Jan 2025 \@ 23h59
]
