import Mathlib

open Matrix

variable (n : Nat)

/-- General linear group GL(n, R) over the real numbers as units of the matrix algebra. -/
def GL : Type _ := Units (Matrix (Fin n) (Fin n) ℝ)

/-- Special linear subgroup SL(n, R) = {A ∈ GL(n, R) | det A = 1}. -/
def SL : Subgroup (GL n) :=
  { carrier := { g : GL n | g.val.det = 1 }
    , one_mem' := by simp
    , mul_mem' := by intros a b; simp [Units.val_mul, det_mul]
    , inv_mem' := by intros a; simp [Units.val_inv, det_inv] }

/-- SL(n) is a normal subgroup of GL(n). -/
theorem SL_normal : Subgroup.normal (SL n) := by sorry

/-- The quotient GL(n)/SL(n) is (multiplicatively) isomorphic to the group of nonzero reals. -/
theorem GL_mod_SL_equiv_R_units : (QuotientGroup.quotient (SL n)) ≃* Units ℝ := by sorry