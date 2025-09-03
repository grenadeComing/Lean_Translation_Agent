import Mathlib

/-
Exercise (Rudin 4.15): Prove that every continuous open mapping of R^1 into R^1 is monotonic.
We formalize the statement as: if f : ℝ → ℝ is continuous and an open map, then
f is either monotone increasing or monotone decreasing (equivalently, monotone after
composing with negation).
-/

open Topology

theorem Rudin_exercise_4_15 (f : ℝ → ℝ) (h_cont : Continuous f) (h_open : IsOpenMap f) :
  Monotone f ∨ Monotone (fun x => -f x) := by sorry
