import Mathlib

open Filter

theorem Rudin_exercise_3_1a (s : ℕ → ℝ) {L : ℝ} (h : Tendsto s atTop (nhds L)) : Tendsto (fun n => |s n|) atTop (nhds |L|) := by sorry
