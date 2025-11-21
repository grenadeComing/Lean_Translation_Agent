import Mathlib

/-- Chinese remainder theorem for ZMod: if m,n ≥ 1 and coprime, then Z/mn ≃ Z/m × Z/n (as rings). -/
theorem zmod_prod_equiv_zmod_mul {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) (hc : m.coprime n) :
  (ZMod m) × (ZMod n) ≃+* ZMod (m * n) := by sorry
