import Mathlib

open Polynomial

noncomputable section

/-- The polynomial X^2 + n over Int. -/
noncomputable def quad_poly (n : Int) : Polynomial Int := Polynomial.X ^ 2 + Polynomial.C n

/-- 2 is irreducible in ℤ[√(-n)]. -/
theorem two_irreducible (n : Int) (hn : 3 < n) (hsq : Squarefree n) :
  Irreducible (2 : AdjoinRoot (quad_poly n)) := by sorry

/-- √(-n) is irreducible in ℤ[√(-n)]. -/
theorem sqrt_neg_irreducible (n : Int) (hn : 3 < n) (hsq : Squarefree n) :
  Irreducible (AdjoinRoot.root (quad_poly n) : AdjoinRoot (quad_poly n)) := by sorry

/-- 1 + √(-n) is irreducible in ℤ[√(-n)]. -/
theorem one_add_sqrt_neg_irreducible (n : Int) (hn : 3 < n) (hsq : Squarefree n) :
  Irreducible (1 + (AdjoinRoot.root (quad_poly n) : AdjoinRoot (quad_poly n))) := by sorry

end noncomputable section
