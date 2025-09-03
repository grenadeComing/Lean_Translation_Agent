import Mathlib

open Set

/-- Shakarchi, Exercise 5.1 (statement only).

Let f be analytic on the unit disc, bounded and not identically zero. Let z : ℕ → ℂ be a sequence
of its zeros with ‖z n‖ < 1 for all n and which enumerates all zeros in the disc (counting
multiplicity). Then the Blaschke sum ∑ (1 - ‖z n‖) < ∞.
-/
theorem Shakarchi_exercise_5_1
  {f : ℂ → ℂ}
  (hf : AnalyticOn ℂ f {z : ℂ | ‖z‖ < 1})
  (hbound : ∃ M : ℝ, ∀ z0, ‖z0‖ < 1 → ‖f z0‖ ≤ M)
  (hf_not_zero : ¬ (∀ z0, ‖z0‖ < 1 → f z0 = 0))
  (z : ℕ → ℂ)
  (hz_in : ∀ n, ‖z n‖ < 1)
  (hz_zero : ∀ n, f (z n) = 0)
  (hz_enumerates : ∀ w, ‖w‖ < 1 → f w = 0 → ∃ n, z n = w) :
  Summable (fun n => (1 : ℝ) - ‖z n‖) := by sorry
