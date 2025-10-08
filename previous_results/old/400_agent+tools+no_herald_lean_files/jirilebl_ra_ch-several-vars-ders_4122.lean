import Mathlib

open Set

variable {n : ℕ}

/--
Let f : ℝ^n → ℝ be C^2 with H_f continuous on a convex set U. Show that the second-order
Taylor expansion is uniform on compact subsets of U.

We state a uniform second-order remainder estimate: for every compact K ⊆ U and every ε>0
there exists δ>0 such that for all x∈K and h with x+h∈U and ‖h‖<δ one has
|f(x+h) - f x - fderiv ℝ f x h - 1/2 * fderiv ℝ (fun y => (fderiv ℝ f y h)) x h| ≤ ε * ‖h‖^2.
-/
theorem second_order_taylor_uniform_on_compact
  {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hf : ContDiffOn ℝ 2 f U)
  (hU : Convex ℝ U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, x + h ∈ U → ‖h‖ < δ →
      |f (x + h) - f x - fderiv ℝ f x h - (1 / 2 : ℝ) * fderiv ℝ (fun y => (fderiv ℝ f y h)) x h|
        ≤ ε * ‖h‖ ^ 2 := by
  sorry