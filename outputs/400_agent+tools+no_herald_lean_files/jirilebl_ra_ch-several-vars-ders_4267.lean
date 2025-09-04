import Mathlib

/-!
We state the following classical result for f : ℝ^n → ℝ: if f is C^2 on a convex set U
(and in particular the second derivative is continuous), then the remainder in the
second order Taylor approximation is o(‖h‖^2) uniformly on compact subsets of U.

We do not provide a proof; the lemma is ended with `:= by sorry` as requested.
-/

open Set Metric

variable {n : ℕ}

theorem taylor_remainder_order_two_uniform_on_compact
  {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU : Convex ℝ U) (hf : ContDiffOn ℝ 2 f U) :
  ∀ K : Set (Fin n → ℝ), IsCompact K → K ⊆ U →
    ∀ ε : ℝ, ε > 0 → ∃ δ > 0,
      ∀ x ∈ K, ∀ h : Fin n → ℝ, x + h ∈ U → ‖h‖ < δ →
        abs (f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2) * (((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h))
          ≤ ε * ‖h‖ ^ 2 := by sorry
