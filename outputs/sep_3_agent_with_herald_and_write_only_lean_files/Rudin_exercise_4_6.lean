import Mathlib

open Set

/--
Suppose E is a compact subset of ℝ and f : E → ℝ. Then f is continuous on E
(i.e. as a function on the subtype E) iff its graph
{ (x, f x) : x ∈ E } = range (λ x : E, (x.1, f x)) is compact.
-/
theorem Rudin_exercise_4_6 {E : Set ℝ} (hE : IsCompact E) (f : E → ℝ) :
  (Continuous f) ↔ IsCompact (Set.range (fun x : E => (x.1, f x))) := by sorry
