import Mathlib

open Metric
open Function

theorem second_order_taylor_uniform_on_compact {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  {f : E → ℝ} {U : Set E}
  (hU : Convex ℝ U) (hcont : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧
      ∀ x y : E, x ∈ K → y ∈ U → ‖y - x‖ < δ →
        abs (f y - f x - (fderiv ℝ f x) (y - x) - (1 / 2 : ℝ) * ((fderiv ℝ (fun z => fderiv ℝ f z) x) (y - x)) (y - x)) ≤ ε * ‖y - x‖ ^ 2 :=
by
  sorry