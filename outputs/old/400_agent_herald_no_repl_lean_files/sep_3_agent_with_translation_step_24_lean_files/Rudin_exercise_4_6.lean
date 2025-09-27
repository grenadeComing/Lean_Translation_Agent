import Mathlib

/-- Rudin exercise: Let E be a compact subset of ℝ and f : Subtype E → ℝ.
The graph of f is the image of `Set.univ : Set (Subtype E)` under `fun x => (x.val, f x)`.
Then f is continuous iff its graph is compact. -/
theorem rudin_exercise_4_6 {E : Set ℝ} (f : Subtype E → ℝ) (hE : IsCompact (E : Set ℝ)) :
  Continuous f ↔ IsCompact ((fun x : Subtype E => (x.val, f x)) '' (Set.univ : Set (Subtype E))) := by sorry
