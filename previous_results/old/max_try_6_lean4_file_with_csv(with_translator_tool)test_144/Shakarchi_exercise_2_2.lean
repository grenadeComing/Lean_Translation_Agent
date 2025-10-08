import Mathlib

open MeasureTheory
open Topology
open Real

/-- Shakarchi exercise: ∫₀^∞ (sin x) / x dx = π / 2. -/
theorem Shakarchi_exercise_2_2 : (∫ x in Ioi (0 : ℝ), (sin x) / x ∂volume) = Real.pi / 2 := by sorry
