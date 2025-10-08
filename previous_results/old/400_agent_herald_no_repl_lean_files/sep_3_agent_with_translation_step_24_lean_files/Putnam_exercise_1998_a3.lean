import Mathlib

open Set
open Topology

theorem putnam_exercise_1998_a3 (f : ℝ → ℝ) (hf : ContDiff ℝ 3 f) (h0 : f 0 = 0) (h1 : f 1 = 0) (h2 : f 2 = 0) : ∃ a ∈ Set.Ioo (0 : ℝ) 2, deriv (deriv (deriv f)) a = 0 := by sorry
