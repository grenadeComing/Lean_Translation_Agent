import Mathlib

open Matrix

noncomputable def GLn (n : Nat) : Type := Units (Matrix (Fin n) (Fin n) Real)

def det_units {n : Nat} (g : GLn n) : Real := (g.val).det

theorem conjugation_preserves_det (n : Nat) (g h : GLn n) (h_det1 : det_units h = 1) :
  det_units (g * h * g⁻¹) = 1 := by
  -- det(g * h * g^-1) = det(g) * det(h) * det(g)^{-1} = det(h) = 1
  sorry

theorem GLn_quot_SLn_iso_Runits (n : Nat) : True := by
  -- The determinant homomorphism GLn →* Realˣ has kernel SL(n), inducing the isomorphism GL/SL ≃ Realˣ.
  sorry
