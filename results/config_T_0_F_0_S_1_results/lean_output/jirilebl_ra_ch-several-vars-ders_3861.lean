import Mathlib

theorem second_order_taylor_uniform_on_compact {n : ℕ} {f : (Fin n → ℝ) → ℝ} {U K : Set (Fin n → ℝ)}
  (hU : Convex ℝ U) (hf : ContDiffOn ℝ 2 f U) (hK : IsCompact K) (hKsub : K ⊆ U) :
  ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, x + h ∈ U → ‖h‖ < δ →
    | f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * ((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h | ≤ ε * ‖h‖ ^ 2 := by sorry
