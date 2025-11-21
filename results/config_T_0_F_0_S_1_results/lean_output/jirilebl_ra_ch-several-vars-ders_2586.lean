import Mathlib

open Set

theorem max_on_compact_interior_has_fderiv_at_zero {n : ℕ} (f : (Fin n → ℝ) → ℝ) {K : Set (Fin n → ℝ)}
  (hK : IsCompact K) (hf : ContinuousOn f K) (hd : DifferentiableOn ℝ f (Set.interior K))
  {x0 : Fin n → ℝ} (hx : x0 ∈ Set.interior K) (hmax : ∀ x ∈ K, f x ≤ f x0) :
  HasFDerivAt ℝ f (0 : (Fin n → ℝ) →L[ℝ] ℝ) x0 := by sorry