import Mathlib

/-- If f : R^n → R is C^1 on s and the derivative is bounded on s, then f is Lipschitz on s. -/
theorem lipschitz_on_with_of_continuous_of_bounded {n : ℕ} {s : Set (Fin n → ℝ)} (f : (Fin n → ℝ) → ℝ)
  (hcont : ContDiffOn ℝ 1 f s) (hcomp : IsCompact s)
  (hb : ∃ K : NNReal, ∀ x ∈ s, ‖fderiv ℝ f x‖ ≤ (K : ℝ)) :
  ∃ K : NNReal, LipschitzOnWith K f s := by sorry
