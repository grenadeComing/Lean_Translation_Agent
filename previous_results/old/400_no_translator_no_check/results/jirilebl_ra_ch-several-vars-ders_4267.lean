import Mathlib

/-!
Let f : ℝ^n → ℝ be C^2 and H_f continuous in a convex set U. Show that the remainder in the
Taylor approximation of order 2 is o(∥h∥^2) uniformly on compact subsets of U.

The statement below formulates the uniform little-o property on a compact K ⊆ U. The proof is
omitted (sorry) as requested.
-/

theorem jirilebl_taylor_remainder_order_two_uniform_on_compact {n : ℕ}
  (f : (Fin n → ℝ) → ℝ) {U K : Set (Fin n → ℝ)}
  (hf : ContDiffOn ℝ 2 f U) (hKcompact : IsCompact K) (hKsub : K ⊆ U) :
  ∀ eps > 0, ∃ delta > 0, ∀ x ∈ K, ∀ h : Fin n → ℝ,
    norm h < delta → x + h ∈ U →
    abs (f (x + h) - f x - (fderiv ℝ f x) h - (1 / 2 : ℝ) * ((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h)
      ≤ eps * (norm h) ^ 2 := by
  sorry
