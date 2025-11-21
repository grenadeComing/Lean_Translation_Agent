import Mathlib

open Set

theorem second_order_taylor_uniform_on_compacts {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  {U : Set E} (f : E → ℝ) (hU : Convex ℝ U) (h2 : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ ε : ℝ, ε > 0 → ∃ δ > 0, ∀ x ∈ K, ∀ y ∈ U, ‖y - x‖ < δ →
      abs (f y - f x - (fderivWithin ℝ f U x) (y - x) - (1 / 2 : ℝ) *
        ((fderivWithin ℝ (fun x => fderivWithin ℝ f U x) U x) (y - x)) (y - x)) ≤ ε * ‖y - x‖ ^ 2 :=
by sorry