import Mathlib

open Set

variable {n : ℕ}

/--
Second-order Taylor expansion with remainder o(‖h‖^2) uniformly on compact subsets.
Let f : ℝ^n → ℝ be differentiable and its Hessian is continuous on a convex set U.
Then for every compact K ⊆ U and every ε>0 there is δ>0 such that for all x ∈ K and
all h with ‖h‖<δ and x+h ∈ U,
  |f(x+h) - f(x) - fderiv ℝ f x h - 1/2 * (hessian f x) h h| ≤ ε * ‖h‖^2.
-/
lemma jirilebl_ra_ch_several_vars_ders_4243 (n : ℕ) (U : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)
  (hU : Convex ℝ U) (h_diff : DifferentiableOn ℝ f U)
  (h_hess : ContinuousOn (fun x => hessian f x) U) :
  ∀ K : Set (Fin n → ℝ), K ⊆ U → IsCompact K →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ, ‖h‖ < δ → x + h ∈ U →
      abs (f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2) * (hessian f x) h h) ≤ ε * ‖h‖ ^ 2 :=
by sorry
