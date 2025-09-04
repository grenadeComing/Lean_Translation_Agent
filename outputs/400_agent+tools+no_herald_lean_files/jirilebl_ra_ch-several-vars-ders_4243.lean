import Mathlib

/-!
Statement: Let f : ℝ^n → ℝ have a (formal) Taylor series up to order 2 on a convex set U,
and suppose the 2nd coefficient (the Hessian term) depends continuously on x on U.
Then the second-order Taylor expansion with remainder o(∥h∥^2) holds uniformly on compact
subsets of U.

We formalize this using FormalMultilinearSeries and HasFTaylorSeriesUpToOn.
-/

open Set

theorem taylor_second_order_uniform_on_compacts {n : ℕ}
  {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (p : (Fin n → ℝ) → FormalMultilinearSeries ℝ (Fin n → ℝ) ℝ)
  (hU_convex : Convex ℝ U)
  (hFT : HasFTaylorSeriesUpToOn 2 f p U)
  (hcont : ContinuousOn (fun x => p x 2) U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ (h : Fin n → ℝ), ‖h‖ ≤ δ → x + h ∈ U →
      |f (x + h) - f x - (p x 1) (fun _ => h) - (1 / 2 : ℝ) * (p x 2) (fun _ => h)| ≤ ε * ‖h‖ ^ 2 :=
  by sorry
