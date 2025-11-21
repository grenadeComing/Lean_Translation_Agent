import Mathlib

/-- If m and n are coprime, then ZMod (m * n) is additively isomorphic to ZMod m × ZMod n. -/
theorem zmod_mul_equiv_zmod_prod_of_coprime {m n : ℕ} (h : Nat.coprime m n) :
  ZMod (m * n) ≃+ ZMod m × ZMod n := by sorry