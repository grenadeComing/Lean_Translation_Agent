import Mathlib

/-- Exercise: Let T be the collection of open subsets of a metric space M,
and K the collection of closed subsets. Show there is a bijection from T onto K. -/
theorem Pugh_exercise_2_29 (M : Type*) [MetricSpace M] :
  ∃ f : ({ U : Set M // IsOpen U }) → ({ F : Set M // IsClosed F }),
    Function.Bijective f := by sorry
