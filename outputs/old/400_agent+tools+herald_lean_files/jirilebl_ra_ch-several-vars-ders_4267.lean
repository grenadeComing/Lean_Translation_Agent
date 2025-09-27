import Mathlib

open Set Filter Topology

variable {n : ℕ}

/--
Let f : R^n → R be C^2 and H_f continuous in a convex set U. The remainder in the Taylor
approximation of order 2 is o(‖h‖^2) uniformly on compact subsets of U.

We state a uniform-in-x formulation: for every compact K ⊆ U and every ε>0 there exists δ>0
such that for all x∈K and all h with ‖h‖<δ and x+h∈U one has
|f(x+h)-f x - fderiv ℝ f x h - (1/2) * ((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h| ≤ ε * ‖h‖^2.
-/
lemma taylor_remainder_o2_uniform_on_compact
  (U : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)
  (hU : Convex ℝ U) (hcont : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
    ∀ ε : ℝ, ε > 0 → ∃ δ : ℝ, δ > 0 ∧
      ∀ x, x ∈ K → ∀ h : Fin n → ℝ, ‖h‖ < δ → x + h ∈ U →
        |f (x + h) - f x - (fderiv ℝ f x) (h) - (1 / 2) * ((fderiv ℝ (fun y => fderiv ℝ f y) x) (h)) (h)| ≤ ε * ‖h‖^2 :=
by sorry