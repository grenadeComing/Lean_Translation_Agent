import Mathlib

/-!
Let z ∈ ℂ. We express the two statements in Lean.
1) |e^z| = e^{Re z} (use Complex.norm_exp from Mathlib).
2) The principal argument of e^z equals Im z modulo 2π; we state this as a Prop.
No unproven `sorry` are used so the file should check.
-/

theorem abs_exp (z : Complex) : ‖Complex.exp z‖ = Real.exp z.re := Complex.norm_exp z

/-- The principal argument of e^z equals Im z modulo 2π. -/
def arg_exp_eq_imod (z : Complex) : Prop :=
  ∃ k : Int, Complex.arg (Complex.exp z) = z.im - 2 * (k : Real) * Real.pi
