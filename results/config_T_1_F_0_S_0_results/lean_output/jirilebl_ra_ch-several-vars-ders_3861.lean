import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

variable {U : Set E} {f : E → ℝ}

theorem uniform_second_order_taylor_on_compact
  (hU : IsOpen U) (hconv : Convex ℝ U) (hcont : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
  ∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧
    ∀ x ∈ K, ∀ h : E, ‖h‖ < δ → x + h ∈ K →
      abs (f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * ((fderiv (fderiv ℝ f) x) h) h)
        ≤ ε * ‖h‖ ^ 2 := by sorry