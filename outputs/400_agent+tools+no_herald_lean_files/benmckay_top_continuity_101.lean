import Mathlib

/-- Let X be a topological space and let n ∈ ℕ. Suppose that f,g : X → ℝ^n are continuous.
    Then f+g : X → ℝ^n is continuous. -/
theorem benmckay_top_continuity_101 {X : Type _} [TopologicalSpace X] (n : ℕ)
  {f g : X → (Fin n → ℝ)} (hf : Continuous f) (hg : Continuous g) :
  Continuous (fun x => f x + g x) := by
  sorry
