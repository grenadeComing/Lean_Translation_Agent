import Mathlib

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

theorem second_order_taylor_uniform_on_compact {U : Set E} {f : E → ℝ}
  (hU_open : IsOpen U) (hU_convex : Convex ℝ U) (hcont : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ (ε : ℝ), ε > 0 → ∃ (δ : ℝ), δ > 0 ∧
      ∀ (x : E) (hx : x ∈ K) (h : E), x + h ∈ K → ‖h‖ < δ →
        abs (f (x + h) - f x - (fderiv ℝ f x) h - (1/2 : ℝ) * ((fderiv ℝ (fun z => fderiv ℝ f z) x) h) h)
        ≤ ε * ‖h‖ ^ 2 := by
  sorry
