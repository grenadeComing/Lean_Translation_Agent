import Mathlib

/-- Uniform second-order Taylor expansion on compact subsets.
Let f : R^n -> R be C^2 with continuous Hessian on a convex set U.
Then the second-order Taylor expansion is uniform on compact subsets K ⊆ U.
-/
theorem uniform_second_order_taylor_on_compact
  {n : Nat} {f : (Fin n → ℝ) → ℝ} {U K : Set (Fin n → ℝ)}
  (hf : ContDiffOn ℝ 2 f U) (hU : Convex ℝ U) (hK : IsCompact K) (hKsub : K ⊆ U) :
  ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, ‖h‖ ≤ δ → x + h ∈ U →
    |f (x + h) - f x - (fderiv ℝ f x : (Fin n → ℝ) →L[ℝ] ℝ) h
      - (1 / 2 : ℝ) * ((fderiv ℝ (fun y => fderiv ℝ f y) x) h : (Fin n → ℝ) →L[ℝ] ℝ) h|
    ≤ ε * ‖h‖ ^ 2 := by
  sorry
