import Mathlib

open Filter
open Topology

theorem Rudin_exercise_3_2a :
  Tendsto (fun n : ℕ => Real.sqrt ((n : ℝ) ^ 2 + (n : ℝ)) - (n : ℝ)) atTop (nhds (1 / 2 : ℝ)) := by sorry
