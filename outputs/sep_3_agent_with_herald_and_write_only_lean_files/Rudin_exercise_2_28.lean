import Mathlib

/--
Rudin, Principles of Mathematical Analysis, Exercise 2.28 (translation):
In a separable metric space, every closed set is the union of a (possibly empty)
perfect set and a set which is at most countable.

We formulate ``perfect set'' as a closed set with no isolated points, i.e.
for every x in t we have x ∈ closure (t \ {x}).
-/

theorem Rudin_exercise_2_28 {X : Type _} [MetricSpace X] [SeparableSpace X] {s : Set X}
  (hs : IsClosed s) :
  ∃ (t u : Set X),
    s = t ∪ u ∧
    IsClosed t ∧
    (∀ x, x ∈ t → x ∈ closure (t \ {x})) ∧
    Countable u := by sorry
