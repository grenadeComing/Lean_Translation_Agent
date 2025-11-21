import Mathlib

open MeasureTheory Set

theorem rademacher_on_fin (n : ℕ) {U : Set (Fin n → ℝ)} (f : (Fin n → ℝ) → ℝ)
  (hU : Convex ℝ U) (hLip : LipschitzOn f U) :
  ∀ᵐ x ∂(volume.restrict U), DifferentiableAt ℝ f x := by sorry
