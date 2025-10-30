import Mathlib

-- Translation of the statement about a power series and its sum on an interval I.
-- The actual proof is omitted (left as sorry).

theorem power_series_differentiable_formula
  {c : ℕ → ℝ} {a : ℝ} {ρ : ℝ}
  (hρ : 0 < ρ)
  (I : Set ℝ) (f : ℝ → ℝ)
  (hf : ∀ x ∈ I, f x = ∑' n : ℕ, c n * (x - a) ^ n) :
  DifferentiableOn f I ∧ ∀ x ∈ interior I, HasDerivAt f (∑' n : ℕ, (n + 1) * c (n + 1) * (x - a) ^ n) x := by
  sorry
