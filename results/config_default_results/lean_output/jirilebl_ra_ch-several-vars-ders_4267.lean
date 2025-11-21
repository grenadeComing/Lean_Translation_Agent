import Mathlib

/-- Let f : ℝ^n → ℝ be C^2 and H_f continuous in a convex set U. Show that the remainder in the Taylor approximation of order 2 is o(‖h‖^2) uniformly on compact subsets of U. -/
theorem taylor_remainder_order_two_uniform {n : ℕ} (f : (Fin n → ℝ) → ℝ) (U : Set (Fin n → ℝ))
  (hcont : ContDiffOn ℝ 2 f U) (hU : Convex ℝ U) :
  ∀ (K : Set (Fin n → ℝ)), IsCompact K → K ⊆ U →
    ∀ (ε : ℝ), 0 < ε → ∃ (δ : ℝ), 0 < δ ∧
      ∀ (x : Fin n → ℝ) (hx : x ∈ K) (h : Fin n → ℝ), ‖h‖ ≠ 0 → ‖h‖ < δ → x + h ∈ U →
        abs (f (x + h) - f x - (fderiv ℝ f x) h - ((2 : ℝ)⁻¹ * (((fderiv ℝ (fun y => fderiv ℝ f y) x) h) h))) ≤ ε * (‖h‖ ^ 2) := by sorry