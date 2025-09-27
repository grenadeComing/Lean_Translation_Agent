import Mathlib

open Filter
open Topology

theorem monotone_seq_eventually_const_of_limit_eq_term {x : ℕ → ℝ} (hmono : Monotone x)
  (k : ℕ) (hlim : Tendsto x atTop (nhds (x k))) : ∀ n, n ≥ k → x n = x k := by sorry