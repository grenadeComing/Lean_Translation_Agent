import Mathlib

/-!
Define a relation `approx` on `ℝ` by `a ≈ b` iff `a - b` is an integer, and state that
this relation is an equivalence relation.
-/

/-- `a` is `approx` to `b` iff `a - b` is an integer (coerced from `Int`). -/
def approx (a b : ℝ) : Prop := ∃ z : Int, a - b = z

theorem approx_equivalence : Equivalence (approx : ℝ → ℝ → Prop) := by sorry
