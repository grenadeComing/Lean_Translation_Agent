import Mathlib

open Set

/-- There exist a subset E ⊂ ℝ and a continuous function f on E (with the subspace topology)
    such that there is no continuous extension g : ℝ → ℝ with g x = f x for all x ∈ E. -/
theorem Rudin_exercise_4_5b :
  ∃ (E : Set ℝ) (f : {x : ℝ // x ∈ E} → ℝ),
    Continuous f ∧
    (∀ g : ℝ → ℝ, Continuous g → ∃ x (hx : x ∈ E), g x ≠ f ⟨x, hx⟩) := by sorry
