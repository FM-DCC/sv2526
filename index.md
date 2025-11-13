---
layout: home
# title: System Verification 25/26 (CC3037)
---


<h1>Introduction and objectives </h1>

This course provides an introduction to formal techniques to verify computer systems based on models (model checking).

The official plan of this course is hosted in FCUP [here](https://sigarra.up.pt/fcup/pt/ucurr_geral.ficha_uc_view?pv_ocorrencia_id=570250).

# Learning outcomes and competences

Students should:

 - understand the importance of using logic and formal methods in the development of complex computer systems; and
 - be able to model simple systems and specify properties using temporal logics.


# Syllabus

<!-- - Introdução ao model checking
- Modelação de sistemas paralelos: sistemas transição
- Paralelismo e comunicação com álgebras de processos
- Equivalências de sistemas de transição
- Ferramenta: mCRL2 (modelação)
- Lógicas dinâmicas (e relação com equivalências)
- Ferramenta: mCRL2 (verificação)
- Modelos de tempo real
- Ferramenta: Uppaal (modelação)
- Lógicas temporais: linear (LTL) e ramificada (CTL)
- Ferramenta: Uppaal (verificação)
- Introdução a modelos probabilísticos e estocásticos
- Ferramenta: Uppaal (simulações e PLTL) -->

 - Introduction to model checking
 - Modelling of parallel systems: transition systems
 - Parallelism and communication with process algebra
 - Equivalence of transition systems
 - Tool: mCRL2 (modelling)
 - Dynamic logics (and relation with equivalences)
 - Tool: mCRL2 (verification)
 - Real-Timed models
 - Tool: Uppaal (modelling)
 - Temporal logics: linear (LTL) and branching (CTL)
 - Tool: Uppaal (verification)
 - Introduction to probabilistic and stochastic models
 - Tool: Uppaal (simulations an PLTL)

# Lectures

- __18 Sep '25__: Overview of the module and introduction to model checking (Slides [1-intro.pdf](slides/1-intro.pdf)). 
Transition systems with functors; syntax of sequential process algebra (slides [2-behaviour](slides/2-behaviour.pdf), frames 1-11)
- __25 Sep '25__: Syntax and semantics of CCS (slides [2-behaviour](slides/2-behaviour.pdf), 11-20).
Modelling in mCRL2 (slides [3-mCRL2](slides/3-mcrl2.pdf), 1-12). Starting the tutorial "hands-on" with mCRL2.
- __2 Oct '25__: No lesson due to an ongoing scientific event.
- __9 Oct '25__: Continuing the tutorial "hands-on" with mCRL2. Equivalence of transition systems (slides [2-behaviour](slides/2-behaviour.pdf), frames 13-38).
- __16 Oct '25__: Modal logics (slides [4-modal-logic.pdf](slides/4-modal-logic.pdf). Exercises: specifying and explaining concrete formulas in process logic; (slides [4-modal-logic.pdf](slides/4-modal-logic.pdf), frames 1-22).
- __23 Oct '25__: More exercises on process logic; process logic with regular expressions (slides [4-modal-logic.pdf](slides/4-modal-logic.pdf), frames 22-26). Modal logic in mCRL2 (slides [3-mCRL2](slides/3-mcrl2.pdf)); Process logic vs. bisimulations (slides [4-modal-logic.pdf](slides/4-modal-logic.pdf), frames 28-33).
- __6 Nov '25__: Frame definability (slides [4-modal-logic.pdf](slides/4-modal-logic.pdf), frames 34-35); LTL and CTL as extensions to modal logic (slides [4-modal-logic.pdf](slides/4-modal-logic.pdf), frames 36-40) - NO Hybrid logic. Timed automata: introduction, syntax, and composition (slides [5-TA-modelling.pdf](slides/5-TA-modelling.pdf), frames 1-18).
- __13 Nov '25__: Timed automata and its composition, exercises; Semantics of Timed Automata, formally (slides [5-TA-modelling.pdf](slides/5-TA-modelling.pdf), frames 17-27). Timelocks and zeno paths (slides [5-TA-modelling.pdf](slides/5-TA-modelling.pdf), frames 28-40).


<!-- 
- __24 Sep '24__: Transition systems with functors; syntax of sequential process algebra (slides [2-behaviour](slides/2-behaviour.pdf), frames 6-18).
- __26 Sep '24__: Syntax and semantics of CCS (slides [2-behaviour](slides/2-behaviour.pdf), frames 18-29).
-  __1 Oct '24__: Modelling in mCRL2 (slides [3-mCRL2](slides/3-mcrl2.pdf), frames 1-12).
-  __3 Oct '24__: No lesson.
- __8 Oct '24__: Equivalence of transition systems (slides [2-behaviour](slides/2-behaviour.pdf), frames 13-38).
- __10 Oct '24__: Modal logics (slides [4-modal-logic.pdf](slides/4-modal-logic.pdf), frames 1-24).
- __15 Oct '24__: Exercises: specifying and explaining concrete formulas in process logic; process logic with regular expressions (slides [4-modal-logic.pdf](slides/4-modal-logic.pdf), frames 25-31).
- __17 Oct '24__: Modal logic in mCRL2 (slides [3-mCRL2](slides/3-mcrl2.pdf); Process logic vs. bisimulations; Richer modal logics (slides [4-modal-logic.pdf](slides/4-modal-logic.pdf), frames 33-47).
- __22 Oct '24__: LTL, CTL, and Hybrid logic; Frame definability (slides [4-modal-logic.pdf](slides/4-modal-logic.pdf), frames 47-53). Introduction to timed automata (slides [5-TA-modelling.pdf](slides/5-TA-modelling.pdf), frames 1-12).
- __24 Oct '24__: Timed automata and its composition, formally; Quick introduction to Uppaal (slides [5-TA-modelling.pdf](slides/5-TA-modelling.pdf), frames 12-21).
- __5 Nov '24__: Exercises on the composition of Timed Automata; Modelling in Uppaal; Introduction to the semantics of Timed Automata, formally (slides [5-TA-modelling.pdf](slides/5-TA-modelling.pdf), frames 21-29).
- __7 Nov '24__: Semantics of Timed Automata, formally; Timelocks and zeno paths (slides [5-TA-modelling.pdf](slides/5-TA-modelling.pdf), frames 29-38).
- __12 Nov '24__: Revision on timelocks and zeno paths; modelling extensions in Uppaal (slides [5-TA-modelling.pdf](slides/5-TA-modelling.pdf), frames 36-55).
- __14 Nov '24__: Comparing Timed Automata (slides [6-TA-verification.pdf](slides/6-TA-verification.pdf), frames 1-6).
- __19 Nov '24__: Timed and untimed bisimulations (slides [6-TA-verification.pdf](slides/6-TA-verification.pdf), frames 6-11)
- __21 Nov '24__: CTL in Uppaal (slides [6-TA-verification.pdf](slides/6-TA-verification.pdf), frames 12-25)
- __26 Nov '24__: Review CTL in Uppaal; mutual exclusion examples in Uppaal (slides [6-TA-verification.pdf](slides/6-TA-verification.pdf), frames 19-41)
- __28 Nov '24__: Probabilistic transition systems (slides [7-mchains.pdf](slides/7-mchains.pdf), frames 1-16)
- __3 Dec '24__: Probabilities in Uppaal (slides [7-mchains.pdf](slides/7-mchains.pdf), frames 16-30)
- __5 Dec '24__: EARS approach to requirement engineering [8-ears.pdf](slides/8-ears.pdf), frames 1-38)
- __10 Dec '24__: EARS approach - revision and exercises [8-ears.pdf](slides/8-ears.pdf), frames 38-55); Lines of work on verification of interacting (real-time) systems
- __12 Dec '24__: Hybrid programming in Lince [9-lince.pdf](slides/9-lince.pdf) - syntax and exercises
- __17 Dec '24__: Semantics of hybrid programs in Lince; random simulations in Lince [9-lince.pdf](slides/9-lince.pdf)
-->

<!--
- __29 Sep 24__: XYZ ([2-xyz.pdf - pages 13-36](slides/2-xyz.pdf)).
-->


# Literature and Material

### Slides

1. [Introduction to the course](slides/1-intro.pdf)
2. [Transition systems and CCS](slides/2-behaviour.pdf)
3. [mCRL2 tool](slides/3-mcrl2.pdf)
4. [Modal logic](slides/4-modal-logic.pdf)
5. [Timed automata: modelling](slides/5-TA-modelling.pdf)
6. [Timed automata: verifying](slides/6-TA-verification.pdf)
7. TBA

<!--
7. [Stochastic Timed automata](slides/7-mchains.pdf)
8. [EARS approach](slides/8-ears.pdf)
9. [Hybrid programs with Lince](slides/9-lince.pdf)
-->

### Main book

- [Principles of model checking.](http://catalogo.up.pt/F/-?func=find-b&local_base=FCUP&find_code=SYS&request=000288620), _Christel Baier and Joost-Pieter Katoen_; ISBN: 978-0-262-02649-9


 
### Extra material

- [mCRL2 tutorial exercises](exercises/adventurers/adventurers-tutorial-mcrl2.zip)
- [1st assignment on mCRL2](exercises/mcrl2-assignment.pdf) - deadline: 9 Nov. 2025
- [2nd assignment on Uppaal](exercises/uppaal-assignment.pdf) - preliminary deadline: 4 Jan. 2026

<!-- - [2nd assignment on Uppaal](exercises/uppaal-assignment.pdf) -->


### Complementary Bibliography

- [mCRL2 Tutorial](https://www.mcrl2.org/web/user_manual/tutorial/tutorial.html), available from mCRL2's website
- [Uppaal SMC Tutorial](https://uppaal.org/texts/uppaal-smc-tutorial.pdf), available from Uppaal's website

### Previous years
- [2024/2025](https://fm-dcc.github.io/sv2425/)
- [2023/2024](https://sigarra.up.pt/fcup/pt/UCURR_GERAL.FICHA_UC_VIEW?pv_ocorrencia_id=528080)

<!-- 
# Teaching methods and learning activities

Lectures; intermediate test and final test, or final exam.

The lectures mix the presentation of new material (introducing concepts, main algorithms and some results) with interactive discussion of their application when solving real problems.

The homework focus is on practical application of algorithmic concepts, consolidating the learned material. 

The final exam and intermediate tests (closed book), globally evaluates the knowledge acquired by the students.

# Evaluation Type

Distributed evaluation with final exam.

### Assessment Components

|designation | Weight (%)|
|------------|-----------|
|Exam |70,00|
|Test | 30,00|


### Amount of time allocated to each course unit

|designation | Time (hours)|
|------------|-------------|
|Home study | 120,00|
|Attendance time | 42,00|
|**Total:** | 162,00|


# Eligibility for exams

All students will be admitted to the exam.


# Calculation formula of final grade

 - __(IT)__ intermediate mid-term test: 30% (done during a lesson, required >=5.5)

 - __(FT)__ final test: 70% (done during the normal exam period, required >=5.5)
 
 - __(ER)__ final exam: 100% (done during "recurso" period, required >=9.5)



1st ("Normal") classification: C = IT*0.3+ FT*0.7 >= 9.5

2nd ("Recurso") classification: C = ER >= 9.5

 -->
<!--
# Classification improvement

By final exam.
-->
   

<!-- # Contact

The day and time for _appointments_ is Friday afternoon ([José Proença](https://jose.proenca.org)). Please
email me the day before if you wish to meet. If you prefer you
can also just send an email with your questions to [José Proença](mailto:jose.proenca@fc.up.pt), or we can try to book an online meeting.
 -->
<!-- https://fm-dcc.github.io/sv2526/ -->


# Lecturer

  - 
    + ![José Proença's photo](assets/img/photos/jp.jpg)
    + <a></a>
      * [José Proença](https://jose.proenca.org)
      * <a></a>
        + DCC 1.69
        + jose.proenca<span>(at)</span>fc.up.pt
        + meet: thu afternoon (email before)
        {: .myInterests}
      {: .myMemberSubItems}
    {: .myMemberItems}
  {: .myMembers}


   


Edit the content of this page [here](https://github.com/FM-DCC/sv2526/blob/main/index.md).
{: .editNote}
