import Mathlib

/-!
# Classification of spaces covered by ℝ

We state that if ℝ is a covering space of a topological space `X`, then
`X` is homeomorphic to either `ℝ` or the circle `Circle`.

This file contains only the statement; the proof is omitted (`by sorry`).
-/

open TopologicalSpace

theorem covering_spaces_of_real {X : Type*} [TopologicalSpace X] (p : ℝ → X)
  (hp : IsCoveringMap p) : (Nonempty (Homeomorph X ℝ)) ∨ (Nonempty (Homeomorph X Circle)) := by sorry
