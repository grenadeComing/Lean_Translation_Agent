import Mathlib

/-- If m and n are relatively prime then C_{mn} ≃ C_m × C_n. Here C_k denotes the cyclic group of order k, implemented as ZMod k. -/
noncomputable def zmod_mul_equiv_zmod_mul_zmod {m n : ℕ} (h : m.gcd n = 1) :
  ZMod (m * n) ≃+ ZMod m × ZMod n := by sorry