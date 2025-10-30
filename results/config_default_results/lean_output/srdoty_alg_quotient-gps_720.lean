import Mathlib

/-- Prove that SL (Fin n) R is a normal subgroup of GL (Fin n) R and that the quotient GL (Fin n) R / SL (Fin n) R is isomorphic to Rˣ. -/
theorem SL_normal_and_quotient_iso_R_units (n : ℕ) (R : Type*) [Field R] :
  (SL (Fin n) R) ⊲ (GL (Fin n) R) ∧ (GL (Fin n) R) ⧸ (SL (Fin n) R) ≃* Rˣ := by
  sorry
