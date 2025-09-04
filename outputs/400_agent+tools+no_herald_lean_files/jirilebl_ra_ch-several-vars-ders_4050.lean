import Mathlib

open Set

variable {n : ℕ}

theorem second_order_taylor_uniform_on_compact
  {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU : Convex ℝ U) (hf : ContDiffOn ℝ 2 f U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ K, ∀ v : Fin n → ℝ,
      ‖v‖ < δ → x + v ∈ U →
        abs (f (x + v) - f x - (fderiv ℝ f x) v - (1 / 2) * (((fderiv ℝ (fun x => fderiv ℝ f x) x) v) v)) ≤ ε * ‖v‖ ^ 2 :=
by sorry
