import Mathlib

theorem jirilebl_ra_ch_seq_funcs_1088 {c : ℕ → ℝ} {a ρ : ℝ} (hρ : 0 < ρ) (f : ℝ → ℝ)
  (hsum : ∀ x, |x - a| < ρ → HasSum (fun n => c n * (x - a) ^ n) (f x)) :
  DifferentiableOn ℝ f {x | |x - a| < ρ} ∧
  (∀ x, |x - a| < ρ → HasSum (fun n => (↑(n + 1) * c (n + 1) * (x - a) ^ n)) (deriv f x)) ∧
  (∀ x, |x - a| < ρ → Summable (fun n => ↑(n + 1) * c (n + 1) * (x - a) ^ n)) ∧
  (∀ x, |x - a| > ρ → ¬ Summable (fun n => ↑(n + 1) * c (n + 1) * (x - a) ^ n)) := by sorry
