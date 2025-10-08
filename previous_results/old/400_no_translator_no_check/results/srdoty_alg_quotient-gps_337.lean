import Mathlib

/-!
We show (1) conjugation preserves determinant, hence the special linear group SL(n)
is a normal subgroup of GL(n); (2) for R = Real the determinant map induces a
surjective group homomorphism GL(n, R) →* Rˣ with kernel SL(n), so the quotient
is (canonically) isomorphic to Rˣ. Proofs are omitted (use `by sorry`).
-/

open Matrix

variable {n : Type} [DecidableEq n] [Fintype n]

/-- Determinant is conjugation-invariant: det(g h g⁻¹) = det h. -/
theorem det_conj {R : Type} [CommRing R] (g h : GL n R) :
  Matrix.det ((g * h * g⁻¹ : GL n R) : Matrix n n R) = Matrix.det (h : Matrix n n R) := by
  -- proof omitted
  sorry

/-- As a consequence, the subset of GL(n, R) with determinant 1 is closed under conjugation.
Equivalently, SL(n, R) is a normal subgroup of GL(n, R). -/
theorem SL_is_normal {R : Type} [CommRing R] (g h : GL n R) :
  Matrix.det (h : Matrix n n R) = 1 → Matrix.det ((g * h * g⁻¹ : GL n R) : Matrix n n R) = 1 := by
  -- proof omitted
  sorry

/-- For R = Real the determinant map on GL(n, R) has kernel SL(n, R) and is surjective
onto the multiplicative group of nonzero reals. Hence the quotient GL(n, R)/SL(n, R)
is (canonically) isomorphic to Rˣ. -/
theorem GL_mod_SL_equiv_Real_units :
  ∃ (φ : GL n Real →* Units Real), (φ.ker : Set (GL n Real)) = { g : GL n Real | Matrix.det (g : Matrix n n Real) = 1 } ∧ Function.Surjective φ := by
  -- proof omitted
  sorry
