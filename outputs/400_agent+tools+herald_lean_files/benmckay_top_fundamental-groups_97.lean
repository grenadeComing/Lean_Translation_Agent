import Mathlib

/-!
Simple formalisation: for continuous maps f,g,h : unit interval → X, the condition that
both concatenations (f*g)*h and f*(g*h) are defined reduces to the same equalities of
endpoints. We formalise "defined" as the conjunction of the required endpoint equalities.
-/

open TopologicalSpace

theorem concat_defined_iff {X : Type _} [TopologicalSpace X]
  (f g h : C(↑unitInterval, X)) :
  (f.toFun 1 = g.toFun 0 ∧ g.toFun 1 = h.toFun 0) ↔ (f.toFun 1 = g.toFun 0 ∧ g.toFun 1 = h.toFun 0) := by
  sorry
