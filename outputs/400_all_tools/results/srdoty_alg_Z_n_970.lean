import Mathlib

open Set Function
open Pointwise

/-- Let R be a commutative ring. Prove that R is a field iff every nonzero element of R is a unit, i.e. Rˣ = R \ {0}. -/
theorem isField_iff_forall_isUnit_ext (R : Type*) [CommRing R] :
  IsField R ↔ (range (Units.coeHom R) = { x : R | x ≠ 0 }) := by sorry
