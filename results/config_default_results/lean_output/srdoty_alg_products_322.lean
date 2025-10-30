import Mathlib

/-- Show that if m and n are relatively prime then C_{mn} ≅ C_m × C_n. (Here, C_n denotes the cyclic group of order n.)
    We express the statement via ZMod, which is the standard additive model of the cyclic group of order n. -/
 def crt_isomorphism_zmod (m n : ℕ) (h : m.Coprime n) :
  ZMod (m * n) ≃+ ZMod m × ZMod n := by
  sorry
