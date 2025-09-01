import Mathlib
open Filter

/-- For any two real sequences {a_n}, {b_n}, limsup_{n→∞} (a_n + b_n) ≤ limsup_{n→∞} a_n + limsup_{n→∞} b_n,
    provided the sum on the right is not of the form ∞ - ∞. -/
theorem limsup_add_le_add_limsup {a b : ℕ → ℝ} :
  Filter.limsup (fun n => a n + b n) atTop ≤ Filter.limsup a atTop + Filter.limsup b atTop := by sorry