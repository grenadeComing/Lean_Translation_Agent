import Mathlib

open Set

theorem second_order_taylor_uniform_on_compact {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [FiniteDimensional ℝ E] {U : Set E} (f : E → ℝ) (hU : Convex ℝ U)
  (hcont : ContDiffOn ℝ 2 f U) (hH : ContinuousOn (iteratedFDeriv ℝ 2 f) U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ y ∈ K, ‖y - x‖ < δ →
      |f y - f x - (fderiv ℝ f x : E →L[ℝ] ℝ) (y - x) - (1 / 2 : ℝ) * (iteratedFDeriv ℝ 2 f x) (fun _ : Fin 2 => y - x)| ≤ ε * ‖y - x‖ ^ 2 :=
by sorry