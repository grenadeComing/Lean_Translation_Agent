import Mathlib

/-!
Show that if m,n are relatively prime then C_{mn} ≅ C_m × C_n.
Here we use ZMod k for the cyclic additive group of order k.
-/

/-- If m and n are coprime then ZMod (m * n) ≃+ ZMod m × ZMod n. -/
def zmod_mul_equiv_zmod_prod_zmod {m n : ℕ} (h : Nat.Coprime m n) :
  AddEquiv (ZMod (m * n)) (ZMod m × ZMod n) := by
  sorry
