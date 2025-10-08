import Mathlib

/-!
  Bounds on complex sine and cosine: ‖sin z‖ ≤ 1/2 * e^{‖z‖} and ‖cos z‖ ≤ 1/2 * e^{‖z‖}.
  Proofs are omitted (use `by sorry`).
-/

open Complex

theorem abs_sin_le (z : ℂ) : ‖sin z‖ ≤ (1 / 2 : ℝ) * Real.exp ‖z‖ := by sorry

theorem abs_cos_le (z : ℂ) : ‖cos z‖ ≤ (1 / 2 : ℝ) * Real.exp ‖z‖ := by sorry
