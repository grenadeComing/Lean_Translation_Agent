import Mathlib

/-!
Let f : ℝ^n → ℝ be C^2 with H_f continuous on a convex set U. Show that the second-order Taylor expansion holds uniformly on compact subsets of U.

We formalize this for a finite-dimensional real normed space E (so in particular E ≃ ℝ^n), with ContDiffOn 2 f U and continuous second iterated derivative on U.
-/

open Set Filter

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]

theorem second_order_taylor_uniform_on_compact
  {f : E → ℝ} {U : Set E}
  (hU : Convex ℝ U)
  (hcont : ContDiffOn ℝ 2 f U)
  (hess_cont : ContinuousOn (fun x => iteratedFDeriv ℝ 2 f x) U) :
  ∀ (K : Set E), IsCompact K → K ⊆ U →
    ∀ ε : ℝ, 0 < ε →
      ∃ δ : ℝ, 0 < δ ∧
        ∀ (h : E), ‖h‖ < δ → ∀ x ∈ K, x + h ∈ U →
          |f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * (iteratedFDeriv ℝ 2 f x) (fun _ => h)| ≤ ε * ‖h‖ ^ 2 := by
  sorry
