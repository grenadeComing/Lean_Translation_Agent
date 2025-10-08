import Mathlib

open BigOperators
open Filter
open Set

section g_sequence

variable (aq : ℕ → ℚ)

noncomputable def f (n : ℕ) (x : ℝ) : ℝ := x / (1 + (n * x) ^ 2)

noncomputable def g (n : ℕ) (x : ℝ) : ℝ :=
  Finset.sum (Finset.range n) fun k => (1 / 2 : ℝ) ^ (k + 1) * f n (x - (aq (k + 1) : ℝ))

theorem g_tends_to_zero_uniformly : TendstoUniformly (fun n => g n) (fun _ => 0) atTop := by sorry

end g_sequence
