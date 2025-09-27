import Mathlib

/-!
Let f : ℝ^n → ℝ be C^2 with H_f continuous on a convex set U. Show that the second-order
Taylor expansion is uniform on compact subsets of U.
This file states the uniform second-order Taylor remainder property for a C^2 function on a
convex set, on arbitrary finite-dimensional real normed spaces. The proof is omitted (sorry).
-/

open Set

variable (E : Type*) [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

theorem taylor_remainder_uniform_on_compact (f : E → ℝ) {U : Set E} (hU : Convex ℝ U)
  (hf : ContDiffOn ℝ 2 f U) (K : Set E) (hK : IsCompact K) (hKsub : K ⊆ U) :
  ∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧ ∀ x ∈ K, ∀ y ∈ K, dist x y < δ →
    |f y - f x - (fderiv ℝ f x) (y - x) - (1 / 2 : ℝ) * (fderiv ℝ (fun x => fderiv ℝ f x) x (y - x)) (y - x)| ≤ ε * dist x y ^ 2 := by sorry
